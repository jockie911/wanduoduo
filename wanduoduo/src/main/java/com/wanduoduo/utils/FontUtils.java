package com.wanduoduo.utils;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.wanduoduo.base.BaseApp;

/**
 * Created by jockie on 2016/7/14.
 */
public class FontUtils {

    private static Context getContext(){
        return BaseApp.getContext();
    }

    /**
     * 设置viewgroup下的所有子view字体
     * @param switchFont
     * @param root
     */
    public static void changeFonts(String switchFont ,ViewGroup root) {
        Typeface tf = Typeface.createFromAsset(getContext().getAssets(),
                "fonts/" + switchFont + ".ttf");
        for (int i = 0; i < root.getChildCount(); i++) {
            View v = root.getChildAt(i);
            if (v instanceof TextView) {
                ((TextView) v).setTypeface(tf);
            } else if (v instanceof Button) {
                ((Button) v).setTypeface(tf);
            } else if (v instanceof EditText) {
                ((EditText) v).setTypeface(tf);
            } else if (v instanceof ViewGroup) {
                changeFonts(switchFont,(ViewGroup) v);
            }
        }
    }

    /**
     * 给多少view设置字体
     * @param switchFont 字体
     * @param views
     */
    public static void changeFonts(String switchFont,View...views){
        Typeface tf = Typeface.createFromAsset(getContext().getAssets(),
                "fonts/" + switchFont + ".ttf");
        for(View v : views){
            if (v instanceof TextView) {
                ((TextView) v).setTypeface(tf);
            } else if (v instanceof Button) {
                ((Button) v).setTypeface(tf);
            } else if (v instanceof EditText) {
                ((EditText) v).setTypeface(tf);
            }
        }
    }
}
