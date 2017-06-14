package com.wanduoduo.fragment.online;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.LayoutAnimationController;
import android.view.animation.TranslateAnimation;
import android.view.textservice.TextInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

import com.cjj.MaterialRefreshLayout;
import com.wanduoduo.adapter.OnLineChooseAdapter;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.base.BaseGridRefreshFragment;
import com.wanduoduo.bean.LiKeFansBean;
import com.wanduoduo.bean.OnLineSelectBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import java.util.Map;

/**
 * Created by jockie on 2016/9/18.
 */
public class OnLineChooseFragment extends BaseGridRefreshFragment {

    private MaterialRefreshLayout refreshLayout;
    private int sex = 0;
    private int order = 2;
    private String city_code = "0";
    private String isVideo = "0";
    private String age;
    private String height;
    private boolean loveinfo;

    public int getTotalPage(){
        return totalPage;
    }

    @Override
    protected void setAnimation() {
        gridView.setLayoutAnimation(getAnimationController());
    }

    protected LayoutAnimationController getAnimationController() {
        int duration = 300;
        AnimationSet set = new AnimationSet(true);

        Animation animation = new AlphaAnimation(0.0f, 1.0f);
        animation.setDuration(duration);
        set.addAnimation(animation);

        animation = new TranslateAnimation(Animation.RELATIVE_TO_SELF, 0.0f,
                Animation.RELATIVE_TO_SELF, 0.0f, Animation.RELATIVE_TO_SELF,
                1.0f, Animation.RELATIVE_TO_SELF, 0.0f);

        animation.setDuration(duration);
        set.addAnimation(animation);

        LayoutAnimationController controller = new LayoutAnimationController(
                set, 0.5f);
        controller.setOrder(LayoutAnimationController.ORDER_NORMAL);
        return controller;
    }

    @Override
    public void sendDataRequest() {
        if(gridView != null)
            gridView.setNumColumns(3);
        OkHttpUtils.sendGetRequest(IConstant.USER_LIST,getMap(),mListener);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put("sex",sex + "");
        map.put("city",city_code);
        map.put("video_identify",isVideo);
        if(!TextUtils.isEmpty(age))
            map.put("age",age);
        if(!TextUtils.isEmpty(height))
            map.put("height",height);
        map.put("loveinfo",loveinfo?"1":"0");
        map.put("order",order + "");
        map.put(IConsName.PAGE,page + "");
    }

    @Override
    protected Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, LiKeFansBean.class);
    }

    @Override
    public void updateAdapter(Object obj) {
        ((OnLineChooseAdapter)adapter).addData(((LiKeFansBean)obj).getData().getData_list(),isRefreshData);
        closeRefresh();
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new OnLineChooseAdapter();
    }


    public void closeRefresh(MaterialRefreshLayout refreshLayout) {
        this.refreshLayout = refreshLayout;
    }

    private void closeRefresh(){
        if(refreshLayout!=null){
            if(isRefreshData){
                refreshLayout.finishRefresh();
            }else{
                refreshLayout.finishRefreshLoadMore();
            }
        }
    }

    /**
     * 筛选
     * @param onLineSelectBean
     */
    public void setSort(OnLineSelectBean onLineSelectBean) {
        if(refreshLayout != null)
            refreshLayout.autoRefresh();
        sex = onLineSelectBean.getGender();
        if(!TextUtils.isEmpty(onLineSelectBean.getCity_code()))
            city_code = onLineSelectBean.getCity_code();
        if(onLineSelectBean.isVideo()){
            isVideo = "1";
        }else{
            isVideo = "0";
        }
        order = onLineSelectBean.getOrder();
        if(!TextUtils.isEmpty(onLineSelectBean.getAge()))
            this.age = onLineSelectBean.getAge();
        if(!TextUtils.isEmpty(onLineSelectBean.getHeight()))
            this.height = onLineSelectBean.getHeight();
        loveinfo = onLineSelectBean.getLoveinfo();
        isRefreshData = true;
        sendDataRequest();
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {
        LiKeFansBean.DataBean.DataListBean dataListBean = ((OnLineChooseAdapter) adapter).mData.get(position);
        Intent intent = new Intent(BaseApp.getContext(),InfoEditorPersonActivity.class);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        intent.putExtra(IConsName.ISCANEDIT,false);
        intent.putExtra(IConsName.USER_ID,dataListBean.getId());
        BaseApp.getContext().startActivity(intent);
    }

    /**
     * 发送火箭成功
     */
    public void rocketTop() {
        ((OnLineChooseAdapter)adapter).setSeltToTop();
        isRefreshData = true;
        sendDataRequest();
    }

    public void setSelfHide() {
        ((OnLineChooseAdapter)adapter).setSelfHide();
        isRefreshData = true;
        sendDataRequest();
    }
}
