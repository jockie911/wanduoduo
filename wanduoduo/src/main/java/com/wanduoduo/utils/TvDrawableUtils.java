package com.wanduoduo.utils;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.TextView;

import com.wanduoduo.base.BaseApp;

/**
 * Created by jockie on 2016/7/27.
 */
public class TvDrawableUtils {

    public static Context getContext() {
        return BaseApp.getContext();
    }

    private TvDrawableUtils() {
    }

    public static void setTvDrawableTop(TextView targetTv, int tvTargetColor, int drawableResId) {
        Drawable drawable = getContext().getResources().getDrawable(drawableResId);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        targetTv.setCompoundDrawables(null, drawable, null, null);
        targetTv.setTextColor(getContext().getResources().getColor(tvTargetColor));
    }

    public static void setTvDrawableLeft(TextView targetTv, int tvTargetColor, int drawableResId) {
        Drawable drawable = getContext().getResources().getDrawable(drawableResId);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        targetTv.setCompoundDrawables(drawable,null, null, null);
        targetTv.setTextColor(getContext().getResources().getColor(tvTargetColor));
    }

    public static void setTvDrawableRight(TextView targetTv, int tvTargetColor, int drawableResId) {
        Drawable drawable = getContext().getResources().getDrawable(drawableResId);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        targetTv.setCompoundDrawables(null, null,drawable, null);
        targetTv.setTextColor(getContext().getResources().getColor(tvTargetColor));
    }
}
