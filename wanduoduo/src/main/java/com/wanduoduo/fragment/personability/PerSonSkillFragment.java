package com.wanduoduo.fragment.personability;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

import com.wanduoduo.adapter.index.PersonSkillAdapter;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.IndexGiftListBean;
import com.wanduoduo.bean.ManageServerSkillBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.skill.PersonAbilityActivity;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;

import java.util.List;
import java.util.Map;

/**
 * Created by jockie on 2016/8/31.
 */
@SuppressLint("ValidFragment")
public class PerSonSkillFragment extends BaseListRefreshFragment {

    private String gift_id;
    private String user_id;
    private boolean isALl;      //是否是添加所有的技能

    public PerSonSkillFragment(String user_id, boolean isAll,String gift_id){
        this.user_id = user_id;
        this.isALl = isAll;
        this.gift_id = gift_id;
    }

    public PerSonSkillFragment(String user_id){
        this.user_id = user_id;
    }

    @Override
    protected void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.SERVER_GIFT,getMap(),mListener);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.USER_ID,user_id);
        map.put(IConsName.PAGE,page + "");
        super.addParams(map);
    }
    private int deletePostion = -1;

    @Override
    public void updateAdapter(Object obj) {
        List<ManageServerSkillBean.DataBean.DataListBean> data_list = ((ManageServerSkillBean) obj).getData().getData_list();
        if(!isALl && data_list != null){
            for (int i = 0; i < data_list.size(); i++) {
                if(data_list.get(i).getId().equals(gift_id)){
                    deletePostion = i;
                    break;
                }
            }
        }
        if(deletePostion != -1)
            data_list.remove(deletePostion);
        if(baseListView != null){
            baseListView.setPadding(DensityUtil.dip2px(mContext,10),DensityUtil.dip2px(mContext,5),DensityUtil.dip2px(mContext,10),0);
            baseListView.setDividerHeight(DensityUtil.dip2px(mContext,5));
        }
        ((PersonSkillAdapter)adapter).addData(data_list,isRefreshData);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new PersonSkillAdapter();
    }

    @Override
    public Object parseData(String result) {
        return GsonTools.changeGsonToBean(result,ManageServerSkillBean.class);
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {
        IndexGiftListBean.DataBean.DataListBean itemData = new IndexGiftListBean.DataBean.DataListBean();
        ManageServerSkillBean.DataBean.DataListBean dataListBean = ((PersonSkillAdapter) adapter).mData.get(position);

        itemData.setTitle(dataListBean.getTitle());
        itemData.setFee(dataListBean.getFee());
        itemData.setArea_id(dataListBean.getArea_id());
        itemData.setCover_pic(dataListBean.getCover_pic());
        itemData.setGift_pic(dataListBean.getGift_pic());
        itemData.setPro_pic(dataListBean.getPro_pic());
        itemData.setGift_video(dataListBean.getGift_video());
        itemData.setId(dataListBean.getId());
        itemData.setGift_tag_id(dataListBean.getGift_tag_id());
        itemData.setIs_drink(dataListBean.getIs_drink());
        itemData.setServer_time(dataListBean.getServer_time());
        itemData.setServer_time_type(dataListBean.getServer_time_type());
        itemData.setIntro(dataListBean.getIntro());
        itemData.setGift_type(dataListBean.getGift_type());

        IndexGiftListBean.DataBean.DataListBean.OrganizerBean organizerBean = new IndexGiftListBean.DataBean.DataListBean.OrganizerBean();
        organizerBean.setId(dataListBean.getOrganizer().getId());
        organizerBean.setAvatar(dataListBean.getOrganizer().getAvatar());
        organizerBean.setAge(dataListBean.getOrganizer().getAge());
        organizerBean.setGender(dataListBean.getOrganizer().getGender());
        organizerBean.setNickname(dataListBean.getOrganizer().getNickname());
        itemData.setOrganizer(organizerBean);

        Intent intent = new Intent(mContext, PersonAbilityActivity.class);
        intent.putExtra("itemdata",  itemData);
        startActivity(intent);
    }
}
