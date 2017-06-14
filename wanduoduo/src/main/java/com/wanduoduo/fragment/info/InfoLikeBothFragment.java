package com.wanduoduo.fragment.info;

import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import java.util.Map;

/**
 * Created by jockie on 2016/9/5.
 */
public class InfoLikeBothFragment extends InfoLikeTheyFragment {

    @Override
    protected void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.USER_FRIENDS,getMap(),mListener);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
    }
}
