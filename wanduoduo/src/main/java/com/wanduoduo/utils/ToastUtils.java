package com.wanduoduo.utils;

import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseApp;


/**
 * Created by jockie on 2016/3/23.
 */
public class ToastUtils {

    private static Toast toast;

    public static void makeToast(String content) {
        if (toast == null) {
            View toastRootView = LayoutInflater.from(BaseApp.getContext()).inflate(R.layout.toast_view, null);
            toast = Toast.makeText(BaseApp.getContext(),"",Toast.LENGTH_SHORT);
            toast.setView(toastRootView);
            toast.setGravity(Gravity.CENTER, 0, 0);
        }
        TextView tv = (TextView) toast.getView().findViewById(R.id.view);
        tv.setText(content);
        toast.show();
    }

//    public static void makeToast(int resID){
//        if (toast == null) {
//            View toastRootView = LayoutInflater.from(BaseApp.getContext()).inflate(R.layout.toast_view_pic, null);
//            toast =new Toast(BaseApp.getContext());
//            toast.setView(toastRootView);
//            toast.setGravity(Gravity.CENTER, 0, 0);
//        }
////        TextView tv = (TextView) toast.getView().findViewById(R.id.view);
////        TextView tv = (TextView) toast.getView().findViewById(R.id.view);
////        tv.setText(content);
//        toast.show();
//    }
}
