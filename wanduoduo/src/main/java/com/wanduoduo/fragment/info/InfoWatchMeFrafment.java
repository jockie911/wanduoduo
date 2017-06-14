package com.wanduoduo.fragment.info;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

import com.wanduoduo.adapter.info.InfoWatchAdapter;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.InfoWatchBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import java.util.Map;

/**
 * Created by jockie on 2016/8/15.
 */
public class InfoWatchMeFrafment extends BaseListRefreshFragment {

    @Override
    protected void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.USER_VISITLIST,getMap(),mListener);
    }

    @Override
    public Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, InfoWatchBean.class);
    }

    @Override
    public void updateAdapter(Object obj) {
        if(baseListView != null){
            baseListView.setPadding(0,0,0,0);
            baseListView.setDividerHeight(0);
        }
        ((InfoWatchAdapter)adapter).addData(((InfoWatchBean)obj).getData().getData_list(),isRefreshData);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new InfoWatchAdapter(Integer.parseInt(getType()));
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.PAGE, page + "");
        map.put(IConsName.USER_ID, SPUtils.getStringData(IConsName.USER_ID,""));
        map.put(IConsName.TYPE,getType());
    }

    protected String getType() {
        return "2";
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {
        InfoWatchBean.DataBean.DataListBean dataListBean = ((InfoWatchAdapter) adapter).mData.get(position);
        Intent intent = new Intent(mContext, InfoEditorPersonActivity.class);
        intent.putExtra(IConsName.ISCANEDIT,false);
        intent.putExtra(IConsName.USER_ID,dataListBean.getId());
        startActivity(intent);
    }
}
