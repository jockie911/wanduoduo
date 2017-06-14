package com.wanduoduo.utils;

import android.content.Context;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;

/**
 * Created by jockie on 2016/12/20.
 */

public class ScreemUtils {

    public static void closeSoftKeyBoard(Context context, Window window){
        InputMethodManager imm = (InputMethodManager)context.getSystemService(Context.INPUT_METHOD_SERVICE);
        if(imm != null)
            imm.hideSoftInputFromWindow(window.getDecorView().getWindowToken(), 0);
    }
}
