package com.wanduoduo.fragment.index;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

import com.cjj.MaterialRefreshLayout;
import com.wanduoduo.adapter.index.IndexGridViewAdapter;
import com.wanduoduo.base.BaseGridRefreshFragment;
import com.wanduoduo.bean.IndexGiftListBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.skill.PersonAbilityActivity;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import java.util.Map;

/**
 * Created by jockie on 2016/8/12.
 */
public class IndexGridViewFragment extends BaseGridRefreshFragment  {

    private String city_code = SPUtils.getStringData(IConsName.CITY_ID,"0");
    private String sex_code = IConstant.SKILL_CODE_ALL;
    private int sort_code = 0;
    private String tag_id = IConstant.SKILL_CODE_ALL;
    private MaterialRefreshLayout refreshLayout;
    private String big_tag = "0";

    @Override
    public void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.GIFT_LIST, getMap(),mListener);
    }

    @Override
    public void updateAdapter(Object obj) {
        ((IndexGridViewAdapter)adapter).addData(((IndexGiftListBean)obj).getData().getData_list(),isRefreshData);
        closeRefresh();
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

    @Override
    protected BaseAdapter getAdapter() {
        return new IndexGridViewAdapter();
    }

    @Override
    public Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, IndexGiftListBean.class);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.PAGE,page + "");
        map.put("sex",sex_code);
        map.put("tag",tag_id);  //小标签
        map.put("btag",big_tag );    //大标签
        map.put("city",city_code);
        map.put("order",sort_code + "");
        super.addParams(map);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, final int i, long l) {
        Intent intent = new Intent(mContext, PersonAbilityActivity.class);
        IndexGiftListBean.DataBean.DataListBean dataListBean = ((IndexGridViewAdapter) adapter).mData.get(i);
        intent.putExtra("itemdata",  dataListBean);
        startActivity(intent);
    }

    /**
     * 选择城市后刷新
     * @param city_code
     */
    public void setCityCode(String city_code) {
        if(TextUtils.isEmpty(city_code)){
            return;
        }
        this.city_code = city_code;
        refreshData();
    }

    /**
     * 选择性别后刷新
     * @param sex_code
     */
    public void setSex(String sex_code) {
        this.sex_code = sex_code;
        refreshData();
    }

    /**
     * 选择排序后刷新
     * @param sort_code
     */
    public void setSortCode(int sort_code) {
        this.sort_code = sort_code;
        refreshData();
    }

    /**
     * 全部技能选择刷新
     * @param tag_id
     */
    public void setSkillCode(String tag_id,String big_tag) {
        this.tag_id = tag_id;
        this.big_tag = big_tag;
        refreshData();
    }

    private void refreshData(){
        page = 1;
        isRefreshData = true;
        if(refreshLayout != null)
            refreshLayout.autoRefresh();
        sendDataRequest();
    }
}