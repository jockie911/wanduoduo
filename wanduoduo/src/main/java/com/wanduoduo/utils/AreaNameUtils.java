package com.wanduoduo.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;

import com.wanduoduo.bean.CityAllBean;
import com.wanduoduo.bean.CitySelectBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;

import org.json.JSONArray;
import org.json.JSONException;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jockie on 2016/8/24.
 */
public class AreaNameUtils {

    private static CitySelectBean citySelectBean;
    private static  String area_ids;

    public static void getAreaNameLists(String area_id, final AreaSuccessListener listener) {
        if(TextUtils.isEmpty(area_id)) {
            listener.onAreaSuccess("");
            return;
        }
        area_ids = area_id;

        String stringData = SPUtils.getStringData(IConsName.CASH_CITY_SELECT, "");
        if(!TextUtils.isEmpty(stringData)){
            citySelectBean = GsonTools.changeGsonToBean(stringData, CitySelectBean.class);
            Message obtain = Message.obtain();
            obtain.what = 88;
            obtain.obj = listener;
            handler.sendMessage(obtain);
        }else{
            OkHttpUtils.sendGetRequest(IConstant.CITY_SELECT, null, new OkHttpUtils.OnResultListener() {
                @Override
                public void onSuccess(String result) {
                    SPUtils.savaStringData(IConsName.CASH_CITY_SELECT,result);
                    citySelectBean = GsonTools.changeGsonToBean(result, CitySelectBean.class);
                    Message obtain = Message.obtain();
                    obtain.what = 88;
                    obtain.obj = listener;
                    handler.sendMessage(obtain);
                }

                @Override
                public void onFailure(int errCode, String errMsg) {

                }
            });
        }
    }

    static Handler handler = new Handler(Looper.getMainLooper()){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what == 88){
                AreaSuccessListener listener = (AreaSuccessListener) msg.obj;
                StringBuffer sb = new StringBuffer();
                try {
                    JSONArray jsonArray = new JSONArray(area_ids);
                    if(jsonArray.length() != 0 && jsonArray.getString(0).length() > 2){
                        for (int k = 0;k < citySelectBean.getData().size();k ++) {
                            if(citySelectBean.getData().get(k).getCode().contains(jsonArray.getString(0).substring(0,2) + "0000")){
                                for (int j = 0; j < citySelectBean.getData().get(k).getSon().size(); j++) {
                                    if(citySelectBean.getData().get(k).getSon().get(j).getCode().contains(jsonArray.getString(0).substring(0,4) + "00")){
                                        for (int i = 0; i < jsonArray.length(); i++) {
                                            for (CitySelectBean.DataBean.SonBean.GrandSonBean grandBean : citySelectBean.getData().get(k).getSon().get(j).getGrandSon()) {
                                                if(TextUtils.equals(grandBean.getCode(),jsonArray.getString(i))){
                                                    sb.append(grandBean.getCity_name()).append("  ");
                                                    break;
                                                }
                                            }
                                        }
                                        break;
                                    }
                                }
                                break;
                            }
                        }
                    }
                    listener.onAreaSuccess(sb.length() == 0? "":sb.toString());
                }catch (JSONException e) {
                    listener.onAreaSuccess("");
                    e.printStackTrace();
                }
            }
        }
    };

    public interface AreaSuccessListener{
        void onAreaSuccess(String place);
    }


    /**
     * 定位获取城市 code
     */
    public static String getCityCode(String cityName){
        String stringLocationCash = SPUtils.getStringData(IConsName.CASH_CITY_All, "");
        if(TextUtils.isEmpty(stringLocationCash) || TextUtils.isEmpty(cityName))
            return "0";
        CityAllBean cityAllBean = GsonTools.changeGsonToBean(stringLocationCash, CityAllBean.class);
        for (CityAllBean.DataBean.AllCityBean allCityBean : cityAllBean.getData().getAll_city()) {
            if(allCityBean.getTitle().contains(cityName) || cityName.contains(allCityBean.getTitle()))
                return allCityBean.getCode();
        }
        return "0";
    }
}
