package com.wanduoduo.utils;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;

import com.wanduoduo.bean.CityAllBean;
import com.wanduoduo.bean.IndexTagListBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;

/**
 * Created by jockie on 2016/8/31.
 */
public class GiftNameUtils {

    private static String tagName;

    public static void getTagName(final String tagId, final OnNameCompeleListener onNameCompeleListener){
        if(TextUtils.isEmpty(tagId) || IConstant.SKILL_CODE_ALL.equals(tagId) || IConstant.SKILL_CODE_OTHER.equals(tagId)){
            onNameCompeleListener.onCompelte("其他");
        }else{
            OkHttpUtils.sendGetRequest(IConstant.TAG_LIST, null, new OkHttpUtils.OnResultListener() {

                @Override
                public void onSuccess(String result) {
                    IndexTagListBean indexTagListBean = GsonTools.changeGsonToBean(result, IndexTagListBean.class);
                    for (IndexTagListBean.DataBean.DataListBean dataListBean : indexTagListBean.getData().getData_list()) {
                        for (IndexTagListBean.DataBean.DataListBean.DataListChildBean dataListChildBean : dataListBean.getData_list_child()) {
                            if(dataListChildBean.getTag_id().equals(tagId)){
                                tagName = dataListChildBean.getTag_name();
                                Message obtain = Message.obtain();
                                obtain.obj = onNameCompeleListener;
                                handler.sendMessage(obtain);
                                return;
                            }
                        }
                    }
                }

                @Override
                public void onFailure(int errCode,String errMsg) {

                }
            });
        }
    }

    static Handler handler = new Handler(){
        @Override
        public void handleMessage(Message msg) {
            OnNameCompeleListener onNameCompeleListener = (OnNameCompeleListener) msg.obj;
            onNameCompeleListener.onCompelte(tagName);
        }
    };


    public static String getCityName(String city_id){
        String stringLocationCash = SPUtils.getStringData(IConsName.CASH_CITY_All, "");
        if(TextUtils.isEmpty(city_id) || TextUtils.isEmpty(stringLocationCash)){
            return "未知";
        }
        CityAllBean cityAllBean = GsonTools.changeGsonToBean(stringLocationCash, CityAllBean.class);
        for (CityAllBean.DataBean.AllCityBean allCityBean : cityAllBean.getData().getAll_city()) {
            if(city_id.equals(allCityBean.getId()))
                return allCityBean.getTitle();
        }
        return "未知";
    }

    public interface OnNameCompeleListener{
        void onCompelte(String name);
    }
}
