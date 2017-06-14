package com.wanduoduo.utils;

import android.content.Context;
import android.content.SharedPreferences;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.istatic.IConstant;

import java.util.Map;

/**
 * Created by jockie on 2016/3/25.
 */
public class SPUtils {

    private static final String SP_NAME = IConstant.SP_NAME;
    private static SharedPreferences sp;

    public static Context getContext() {
        return BaseApp.getContext();
    }

    /**
     * 保存int值到sp
     * @param key
     * @param position
     */
    public static void savaIntData(String key, int position) {
        if (sp == null) {
            sp = getContext().getSharedPreferences(SP_NAME, Context.MODE_PRIVATE);
        }
        sp.edit().putInt(key, position).commit();
    }

    public static int getIntData(String key, int def) {
        if (sp == null) {
            sp = getContext().getSharedPreferences(SP_NAME, Context.MODE_PRIVATE);
        }
        return sp.getInt(key, def);
    }

    /**
     * 保存String类型数据
     *
     * @param key
     * @param value
     */
    public static void savaStringData(String key, String value) {
        if (sp == null) {
            sp = getContext().getSharedPreferences(SP_NAME, Context.MODE_PRIVATE);
        }
        sp.edit().putString(key, value).commit();
    }

    public static String getStringData(String key, String def) {
        if (sp == null) {
            sp = getContext().getSharedPreferences(SP_NAME, Context.MODE_PRIVATE);
        }
        return sp.getString(key, def);
    }

    public static void savaBooleanData(String key, boolean value) {
        if (sp == null) {
            sp = getContext().getSharedPreferences(SP_NAME, Context.MODE_PRIVATE);
        }
        sp.edit().putBoolean(key, value).commit();
    }

    public static Boolean getBooleanData(String key, boolean def) {
        if (sp == null) {
            sp = getContext().getSharedPreferences(SP_NAME, Context.MODE_PRIVATE);
        }
        return sp.getBoolean(key, def);
    }

    public static void savaLongData(String key, long value) {
        if (sp == null) {
            sp = getContext().getSharedPreferences(SP_NAME, Context.MODE_PRIVATE);
        }
        sp.edit().putLong(key, value).commit();
    }

    public static Long getLongData(String key, long def) {
        if (sp == null) {
            sp = getContext().getSharedPreferences(SP_NAME, Context.MODE_PRIVATE);
        }
        return sp.getLong(key, def);
    }


    public static void deleteSP(){
        if(sp == null)
            sp = getContext().getSharedPreferences(SP_NAME, Context.MODE_PRIVATE);
        sp.edit().clear().commit();
    }
}
