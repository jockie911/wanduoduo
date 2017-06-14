package com.wanduoduo.fragment.activi;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

import com.wanduoduo.adapter.activi.ActiviAdapter;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.ActiviBean;
import com.wanduoduo.eventclass.ActiviEventClass;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.activi.ActiviItemContentActivity;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import java.util.Map;


/**
 * Created by jockie on 2016/9/19.
 */
@SuppressLint("ValidFragment")
public class ActiviContentFragment extends BaseListRefreshFragment {
    private String user_id;
    // 同城活动 或者 关注
    private int type;               //type 1,2 表示动态中的    3表示个人中心的
    private String city_code = "0";
    public ActiviContentFragment(){}
    public ActiviContentFragment(int type) {
        this.type = type;
    }

    public ActiviContentFragment(int type,String user_id) {
        this.type = type;
        this.user_id = user_id;
    }

    @Override
    protected void initData() {
        super.initData();
        EventBus.getDefault().register(this);
    }

    public void setType(int type){
        this.type = type;
        autoRefresh();
    }

    public void setCity_code(String city_code){
        this.city_code = city_code;
//        isRefreshData = true;
//        sendDataRequest();
    }
    @Override
    protected void sendDataRequest() {
        if(type == 3){
            OkHttpUtils.sendGetRequest(IConstant.USER_NEWLIST,getMap(),mListener);
        }else{
            OkHttpUtils.sendGetRequest(IConstant.NEWLIST,getMap(),mListener);
        }
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put(IConsName.PAGE,page + "");
        if(type == 3){                          // 个人中心
            map.put(IConsName.USER_ID,user_id);
        }else{
            map.put(IConsName.TYPE,type + "");
            if(type == 1)
                map.put("city_code",city_code);
        }
    }

    @Override
    protected Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, ActiviBean.class);
    }

    @Override
    public void updateAdapter(Object obj) {
        if(baseListView != null){
            baseListView.setPadding(0,0,0,0);
            baseListView.setDividerHeight(DensityUtil.dip2px(mContext,5));
        }
        if(obj != null && adapter != null)
            ((ActiviAdapter)adapter).addData(((ActiviBean)obj).getData().getData_list(),isRefreshData);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new ActiviAdapter(getActivity());}

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {
        Intent intent = new Intent(mContext, ActiviItemContentActivity.class);
        intent.putExtra(IConsName.TYPE,type);
        intent.putExtra("position",position);
        intent.putExtra("news_id",((ActiviAdapter)adapter).mData.get(position).getId());
        startActivity(intent);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventCountChanged(ActiviEventClass event){
        if(event.getPosition() > adapter.getCount() - 1 || type != event.getType()) return;

        ActiviBean.DataBean.DataListBean item = ((ActiviAdapter) adapter).mData.get(event.getPosition());
        if(event.getEventType() == ActiviEventClass.ITEM_DISCUSS){
            item.setCommentCount(item.getCommentCount() + 1);
            ((ActiviAdapter) adapter).mData.set(event.getPosition(),item);
            adapter.notifyDataSetChanged();
        }else if(event.getEventType() == ActiviEventClass.ITEM_ZAN){
            item.setIsLike(event.isAdd());
            item.setLikeCount(item.getLikeCount() + (event.isAdd() ? 1 : - 1));
            ((ActiviAdapter) adapter).mData.set(event.getPosition(),item);
            adapter.notifyDataSetChanged();
        }else if(event.getEventType() == ActiviEventClass.ITEM_DELETE && event.getPosition() < adapter.getCount()){
            ((ActiviAdapter) adapter).removeViewAt(event.getPosition());
        }
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if(hidden){
            if(EventBus.getDefault().isRegistered(this));
                EventBus.getDefault().unregister(this);
        }else{
//            autoRefresh();
            EventBus.getDefault().register(this);
        }
    }

    @Override
    public void onDestroy() {
        if(EventBus.getDefault().isRegistered(this));
              EventBus.getDefault().unregister(this);
        super.onDestroy();
    }
}
