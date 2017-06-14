package com.wanduoduo.fragment.info;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.wanduoduo.adapter.info.InfoCouponsAdapter;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.CouponsBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.CouponsActivity;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import java.util.Map;

/**
 * Created by jockie on 2016/8/11.
 */
@SuppressLint("ValidFragment")
public class InfoCouponsFragment extends BaseListRefreshFragment {

    private boolean isUserConpous;
    private int myCoupons;

    public InfoCouponsFragment(int myCoupons, boolean isUserConpous) {
        this.myCoupons = myCoupons;
        this.isUserConpous = isUserConpous;
    }

    @Override
    protected void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.TICKET_LIST,getMap(),mListener);
    }

    @Override
    public void updateAdapter(Object obj) {
        ((InfoCouponsAdapter)adapter).addData(((CouponsBean)obj).getData().getData_list(),isRefreshData);
    }


    @Override
    public Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, CouponsBean.class);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new InfoCouponsAdapter(myCoupons);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put(IConsName.PAGE,page + "");
        map.put(IConsName.TYPE,myCoupons + "");
        super.addParams(map);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {
        if(isUserConpous && myCoupons == 1){
            CouponsBean.DataBean.DataListBean dataListBean = ((InfoCouponsAdapter) adapter).mData.get(position);
            Intent intent = new Intent();
            intent.putExtra("cpprice",dataListBean.getPrice());
            intent.putExtra("orderprice",dataListBean.getOrder_price());
            intent.putExtra("cpcode",dataListBean.getId());
            getActivity().setResult(Activity.RESULT_OK,intent);
            getActivity().finish();
        }
    }

    @Override
    protected void setEmptyContent(TextView textView) {
        textView.setText(myCoupons == 1?"暂无优惠券" : "暂无过期优惠券");
    }
}

