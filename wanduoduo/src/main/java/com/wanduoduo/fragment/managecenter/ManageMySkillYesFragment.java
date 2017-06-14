package com.wanduoduo.fragment.managecenter;

import android.annotation.SuppressLint;
import android.widget.BaseAdapter;

import com.wanduoduo.adapter.manage.ManageMySkillAdapter;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.ManageServerSkillBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.skill.PlayerSkillManageItemActivity;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import java.util.Map;

/**
 * Created by jockie on 2016/8/26.
 */
@SuppressLint("ValidFragment")
public class ManageMySkillYesFragment extends BaseListRefreshFragment {

    public ManageMySkillYesFragment(){}

    @Override
    protected void sendDataRequest() {
        if(baseListView != null){
            baseListView.setDividerHeight(DensityUtil.dip2px(mContext,5));
            baseListView.setPadding(DensityUtil.dip2px(mContext,5), 0, DensityUtil.dip2px(mContext,5), 0);
            baseListView.setClipToPadding(true);
        }
        OkHttpUtils.sendGetRequest(IConstant.GIFT_CENTER,getMap(),mListener);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.USER_ID,SPUtils.getStringData(IConsName.USER_ID,""));
        map.put(IConsName.PAGE, page + "");
        map.put(IConsName.TYPE,getType());
    }

    protected String getType() {
        return "1";
    }

    @Override
    public Object parseData(String result) {
        return GsonTools.changeGsonToBean(result, ManageServerSkillBean.class);
    }

    @Override
    public void updateAdapter(Object obj) {
        ((ManageMySkillAdapter)adapter).addData(((ManageServerSkillBean)obj).getData().getData_list(),isRefreshData);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new ManageMySkillAdapter((PlayerSkillManageItemActivity) getActivity(),Integer.parseInt(getType()));
    }
}
