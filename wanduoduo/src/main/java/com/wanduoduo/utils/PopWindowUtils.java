package com.wanduoduo.utils;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.DrawableContainer;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;

/**
 * Created by jockie on 2016/7/20.
 */
public class PopWindowUtils {

    private static PopupWindow popupWindow;

    public static PopupWindow getWindow(Context mContext, View showAtBelowView, int resouseLayoutID){
        if(null == popupWindow)
            popupWindow = new PopupWindow(mContext);
        popupWindow.setWidth(WindowManager.LayoutParams.MATCH_PARENT);
        popupWindow.setHeight(WindowManager.LayoutParams.WRAP_CONTENT);
        View view = LayoutInflater.from(mContext).inflate(resouseLayoutID, null);
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        popupWindow.setContentView(view);
        popupWindow.setFocusable(true);
        if(showAtBelowView != null)
            popupWindow.showAsDropDown(showAtBelowView);
        return popupWindow;
    }

    public static PopupWindow getWindow(Context mContext, View showAtBelowView, View view){
        if(null == popupWindow)
            popupWindow = new PopupWindow(mContext);
        popupWindow.setWidth(WindowManager.LayoutParams.MATCH_PARENT);
        popupWindow.setHeight(WindowManager.LayoutParams.WRAP_CONTENT);
        popupWindow.setBackgroundDrawable(new BitmapDrawable());
        popupWindow.setContentView(view);
        popupWindow.setFocusable(true);
        if(showAtBelowView != null)
            popupWindow.showAtLocation(showAtBelowView, Gravity.BOTTOM,0,0);
        return popupWindow;
    }
}
