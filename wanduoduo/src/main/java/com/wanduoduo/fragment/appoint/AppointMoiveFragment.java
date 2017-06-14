package com.wanduoduo.fragment.appoint;

import android.app.Activity;
import android.content.Intent;
import android.widget.BaseAdapter;

import com.wanduoduo.adapter.appoint.AppointMoiveAdapter;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.MoiveBean;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;

import java.util.List;

/**
 * Created by jockie on 2016/12/8.
 */
public class AppointMoiveFragment extends BaseListRefreshFragment {
    public AppointMoiveFragment(){}

    @Override
    protected void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.FILM_LIST,null,mListener);
    }

    @Override
    protected Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, MoiveBean.class);
    }

    @Override
    public void updateAdapter(Object obj) {
        if(baseListView != null){
            baseListView.setPadding(0,0,0,0);
            baseListView.setDividerHeight(0);
        }
        ((AppointMoiveAdapter)adapter).addData(((MoiveBean)obj).getData().getData_list(),isRefreshData);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new AppointMoiveAdapter();
    }

    public void setMoiveNameResult(){
        Intent intent = new Intent();
        intent.putExtra("moive",((AppointMoiveAdapter)adapter).selectMoiveName());
        getActivity().setResult(Activity.RESULT_OK,intent);
        getActivity().finish();
    }
}
