package com.wanduoduo.fragment.info;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.wanduoduo.adapter.info.BuyServiceAdapter;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.InfoBuyServiceBean;
import com.wanduoduo.bean.PlayerInfoBean;
import com.wanduoduo.eventclass.OrderTabEventClass;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.order.PayOrderCompleteActivity;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import org.greenrobot.eventbus.EventBus;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.Map;

/**
 * Created by jockie on 2016/8/9.
 */
@SuppressLint("ValidFragment")
public class AlreadyBuyServiceAllFragment extends BaseListRefreshFragment {

    private String type;
    private boolean isOrgnazer;     //是否是服务者
    public AlreadyBuyServiceAllFragment(){}

    public AlreadyBuyServiceAllFragment(boolean isOrgnazer, String type) {
        this.isOrgnazer = isOrgnazer;
        this.type = type;
    }

    @Override
    protected void sendDataRequest() {
        OkHttpUtils.sendGetRequest(isOrgnazer?IConstant.ORDER_CENTER_TWO:IConstant.ORDERLIST_TWO,getMap(),mListener);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put(IConsName.TYPE,getType());
        map.put(IConsName.PAGE,page + "");
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new BuyServiceAdapter(isOrgnazer,getActivity(),this);
    }

    @Override
    public Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, InfoBuyServiceBean.class);
    }

    @Override
    public void updateAdapter(Object obj) {
        if(baseListView != null){
            baseListView.setDividerHeight(DensityUtil.dip2px(mContext,5));
            baseListView.setPadding(DensityUtil.dip2px(mContext,5),DensityUtil.dip2px(mContext,5),DensityUtil.dip2px(mContext,5),0);
            baseListView.setClipToPadding(true);
        }
        ((BuyServiceAdapter)adapter).addData(((InfoBuyServiceBean)obj).getData().getData_list(),isRefreshData);
    }


    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {
        Intent intent = new Intent(mContext, PayOrderCompleteActivity.class);
        intent.putExtra("isOrgnazer",isOrgnazer);   //是否是服务者
        intent.putExtra("type",2);
        intent.putExtra("playerInfoBean",getInfoBean(position));
        String gift_type = ((BuyServiceAdapter) adapter).mData.get(position).getGift().getGift_type();
        intent.putExtra("isOnline",TextUtils.equals("1",gift_type));
        startActivity(intent);
    }

    private PlayerInfoBean getInfoBean(int position){
        InfoBuyServiceBean.DataBean.DataListBean dataListBean = ((BuyServiceAdapter) adapter).mData.get(position);
        InfoBuyServiceBean.DataBean.DataListBean.GiftBean.OrganizerBean organizer = dataListBean.getGift().getOrganizer();
        PlayerInfoBean infoBean = new PlayerInfoBean();
        infoBean.setTime(dataListBean.getOrder_server_time());
        try {
            String name = new JSONObject(dataListBean.getOrder_address()).getString("name");
            infoBean.setPlace(name);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        infoBean.setTotalFee(dataListBean.getOrder_total_fee());
        infoBean.setOrder_id(dataListBean.getOrder_id());

        if(isOrgnazer){
            infoBean.setAvatar(dataListBean.getOrder_user().getAvatar());
            infoBean.setGender(dataListBean.getOrder_user().getGender());
            infoBean.setNickname(dataListBean.getOrder_user().getNickname());
            infoBean.setUser_id(dataListBean.getOrder_user().getId());
            infoBean.setAge(dataListBean.getOrder_user().getAge());
        }else{
            infoBean.setAvatar(organizer.getAvatar());
            infoBean.setGender(organizer.getGender());
            infoBean.setNickname(organizer.getNickname());
            infoBean.setUser_id(organizer.getId());
            infoBean.setAge(organizer.getAge());
        }

        infoBean.setOrder_status(dataListBean.getOrder_status());
        infoBean.setOrder_ispay(dataListBean.getOrder_ispay());
        return infoBean;
    }

    public String getType() {
        return type;
    }

    @Override
    protected void setEmptyContent(TextView textView) {
        if(isOrgnazer){
            textView.setText("暂无订单");
        }else{
            textView.setText("暂无技能");
        }
    }

    @Override
    public void setUserVisibleHint(boolean isVisibleToUser) {
        super.setUserVisibleHint(isVisibleToUser);
        if(isVisibleToUser && isResumed()){
            refreshCurrentFragment();
            JLog.e("setUserVisibleHint  type = " + type + "  isOrg = " + isOrgnazer + "isVisibleToUser = " + isVisibleToUser);
        }
    }

    public void refreshCurrentFragment(){
        EventBus.getDefault().post(new OrderTabEventClass(isOrgnazer));
        page = 1;
        isRefreshData = true;
        if(baseListView != null && baseListView.getAdapter() != null && baseListView.getAdapter().getCount() != 0)
            baseListView.smoothScrollToPosition(0);
        if(refreshLayout != null)
            refreshLayout.autoRefresh();
        sendDataRequest();
    }

    @Override
    public void onResume() {
        super.onResume();
        if(isResumed() && getUserVisibleHint()){
            refreshCurrentFragment();
            JLog.e("onResume  type = " + type + "  isOrg = " + isOrgnazer);
        }
    }
}
