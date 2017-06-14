package com.wanduoduo.fragment.info;

import android.widget.BaseAdapter;

import com.wanduoduo.adapter.info.InfoReceiveAdapter;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.InfoReceiveGiftBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.InfoReceiveGiftActivity;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import java.util.Map;

/**
 * Created by jockie on 2016/9/9.
 */
public class InfoReceiceGiftFragment extends BaseListRefreshFragment {
    @Override
    protected void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.USER_ITEMLOG,getMap(),mListener);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put(IConsName.PAGE,page + "");
    }

    @Override
    public void updateAdapter(Object obj) {
        if(baseListView != null){
            baseListView.setPadding(DensityUtil.dip2px(BaseApp.getContext(),15),0,DensityUtil.dip2px(BaseApp.getContext(),15),0);
            baseListView.setDividerHeight(DensityUtil.dip2px(BaseApp.getContext(),10));
        }
        ((InfoReceiveGiftActivity)getActivity()).setTvCharming(((InfoReceiveGiftBean)obj).getData().getUser_charm());
        ((InfoReceiveGiftActivity)getActivity()).setTvGiftCount(((InfoReceiveGiftBean)obj).getData().getItem_num());
        ((InfoReceiveAdapter)adapter).addData(((InfoReceiveGiftBean)obj).getData().getData_list(),isRefreshData);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new InfoReceiveAdapter();
    }

    @Override
    public Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, InfoReceiveGiftBean.class);
    }
}
