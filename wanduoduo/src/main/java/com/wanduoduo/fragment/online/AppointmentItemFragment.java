package com.wanduoduo.fragment.online;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.adapter.appoint.AppointmentAdapter;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.AppointBean;
import com.wanduoduo.bean.OnLineSelectBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.appoint.AppointmentItemDetailActivity;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;

import java.util.List;
import java.util.Map;

/**
 * Created by jockie on 2016/10/12.
 */
@SuppressLint("ValidFragment")
public class AppointmentItemFragment extends BaseListRefreshFragment {

    private static final int DELETE_APPOINT = 1;
    private String user_id; //user_id不为空表示个人所有随心约
    private int position;
    private String city_code = "0";
    private String video_ok = "0";
    private int sex = 0;
    private int order = 2;

    public AppointmentItemFragment(){}

    public AppointmentItemFragment(int position) {
        this.position = position;
    }

    public AppointmentItemFragment(String user_id) {
        this.user_id = user_id;
    }

    public void setSortResult(OnLineSelectBean onLineSelectBean) {
        if(!TextUtils.isEmpty(onLineSelectBean.getCity_code()))
            city_code = onLineSelectBean.getCity_code();
        video_ok = onLineSelectBean.isVideo()?"1":"0";
        sex = onLineSelectBean.getGender();
        order = onLineSelectBean.getOrder();
        autoRefresh();
    }

    @Override
    protected void sendDataRequest() {
        OkHttpUtils.sendGetRequest(user_id == null?IConstant.DATE_LIST:IConstant.USER_DATELIST,getMap(),mListener);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        if(user_id == null){
            map.put(IConsName.PAGE,page + "");
            map.put("type",position  + "");
            map.put("city_code",city_code);
            map.put("sex",sex + "");
            map.put("video_ok",video_ok);
            map.put("order",order + "");
        }else{
            map.put(IConsName.USER_ID,user_id);
        }
    }

    @Override
    protected Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, AppointBean.class);
    }

    @Override
    public void updateAdapter(Object obj) {
        if(baseListView != null){
            baseListView.setPadding(0,0,0,0);
            baseListView.setDividerHeight(DensityUtil.dip2px(mContext,6));
        }
        if(refreshLayout != null && isRefreshData){
            refreshLayout.finishRefresh();
        }
        ((AppointmentAdapter)adapter).addData(((AppointBean)obj).getData().getData_list(),isRefreshData);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new AppointmentAdapter(position);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {
        Intent intent = new Intent(getActivity(), AppointmentItemDetailActivity.class);
        intent.putExtra("id",((AppointmentAdapter)adapter).mData.get(position).getId());
        intent.putExtra("position",position);
        startActivityForResult(intent,DELETE_APPOINT);
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(requestCode == DELETE_APPOINT && data != null ){
            int position = data.getIntExtra("position",-1);
            if(position != -1)
                ((AppointmentAdapter)adapter).deleteItem(position);
        }
        super.onActivityResult(requestCode, resultCode, data);
    }
}
