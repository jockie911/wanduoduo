package com.wanduoduo.utils;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.wanduoduo.R;

/**
 * Created by jockie on 2016/7/15.
 */
public class DialogUtils {

    private static Dialog dialog;

    private DialogUtils(){}

    public static void loading(Context context,String ...msg){
        View view = LayoutInflater.from(context).inflate(
                R.layout.dialog_loading, null);
        RelativeLayout relRoot = (RelativeLayout) view.findViewById(R.id.rel_root);
        TextView tvContent = (TextView) view.findViewById(R.id.tv_content);

        dialog = new Dialog(context, R.style.AlertDialogStyle);
        dialog.setContentView(view);
        if(msg.length == 0){
            tvContent.setVisibility(View.GONE);
        }else{
            tvContent.setText(msg[0]);
        }
        WindowManager windowManager = (WindowManager) context
                .getSystemService(Context.WINDOW_SERVICE);
        Display display = windowManager.getDefaultDisplay();
        relRoot.setLayoutParams(new FrameLayout.LayoutParams((int)(display.getWidth()* 0.3),(int)(display.getWidth()* 0.3)));
        dialog.show();
    }

    public static void loadingDismiss(){
        if(dialog != null && dialog.isShowing())
            dialog.dismiss();
    }

    public static void showDialog(Context context, String message, DialogIF df){
        showDialog(context,"",message,df);
    }

    public static void showDialog(Context context, String message, boolean isCancelable, DialogIF df){
        showDialog(context,"",message,isCancelable,df);
    }

    public static void showDialog(Context context,String title,String message,final DialogIF df){
        showDialog(context,title,message,true,true,df);
    }

    public static void showDialog(Context context,String title,String message,boolean isCancelable,final DialogIF df){
        showDialog(context,title,message,isCancelable,true,df);
    }

    public static void showDialog(Context context,String title,String message,boolean isCancelable,boolean isLeftButtonVisable,final DialogIF df){
        com.wanduoduo.utils.AlertDialog builder = new com.wanduoduo.utils.AlertDialog(context).builder();
        if(!TextUtils.isEmpty(title))
            builder.setTitle(title);
        builder.setMsg(message);
        builder.setCancelable(isCancelable);
        if(isLeftButtonVisable){
            builder.setNegativeButton("取消", new View.OnClickListener() {

                @Override
                public void onClick(View v) {

                }
            });
        }
        builder.setPositiveButton("确定", new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(df != null)
                    df.positiviButtom();
            }
        }).show();
    }

    public interface DialogIF{
        void positiviButtom();
    }
}
