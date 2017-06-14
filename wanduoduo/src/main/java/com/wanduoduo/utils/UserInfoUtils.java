package com.wanduoduo.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by jockie on 2016/9/26.
 */
public class UserInfoUtils {

    private static OnResquestSuccess ors;
    private static InfoBean infoBean;
    public static void getUserInfo(OnResquestSuccess onResquestSuccess){
        ors = onResquestSuccess;
        OkHttpUtils.sendGetRequest(IConstant.USER_INFO, getMap(), new OkHttpUtils.OnResultListener() {

            @Override
            public void onSuccess(String result) {
                infoBean = GsonTools.changeGsonToBean(result, InfoBean.class);
                handler.sendEmptyMessage(123321);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private static Map<String,String> getMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,""));
        return map;
    }

    public interface OnResquestSuccess{
        void onSuccess(InfoBean infoBean);
    }

    static Handler handler = new Handler(Looper.getMainLooper()){
        @Override
        public void handleMessage(Message msg) {
            if(msg.what == 123321)
                ors.onSuccess(infoBean);
        }
    };
}
