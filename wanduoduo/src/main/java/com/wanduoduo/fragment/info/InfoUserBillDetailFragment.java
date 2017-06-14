package com.wanduoduo.fragment.info;

import android.widget.BaseAdapter;

import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.InfoUserBillBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import java.util.Map;

/**
 * Created by jockie on 2016/9/2.
 */
public class InfoUserBillDetailFragment extends BaseListRefreshFragment {

    @Override
    protected void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.USER_BILL,getMap(),mListener);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        super.addParams(map);
    }

    @Override
    public void updateAdapter(Object obj) {
        if(baseListView != null){
            baseListView.setPadding(0,0,0,0);
            baseListView.setDividerHeight(0);
        }
        ((InfoUserBillDetailAdapter)adapter).addData(((InfoUserBillBean)obj).getData().getData_list(),isRefreshData);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new InfoUserBillDetailAdapter();
    }

    @Override
    public Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, InfoUserBillBean.class);
    }
}
