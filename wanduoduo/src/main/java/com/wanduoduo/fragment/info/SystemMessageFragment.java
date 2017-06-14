package com.wanduoduo.fragment.info;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

import com.wanduoduo.adapter.SystemMessageAdapter;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.bean.SystemMessageBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.CouponsActivity;
import com.wanduoduo.ui.info.InfoDifferentActivity;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.ui.info.InfoReceiveGiftActivity;
import com.wanduoduo.ui.skill.PlayerSkillManageItemActivity;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import java.util.Map;

/**
 * Created by jockie on 2016/9/9.
 */
public class SystemMessageFragment extends BaseListRefreshFragment{
    @Override
    protected void sendDataRequest() {
        OkHttpUtils.sendGetRequest(IConstant.SYS_MESSAGE,getMap(),mListener);
    }

    @Override
    protected void addParams(Map<String, String> map) {
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put(IConsName.PAGE,page + "");
    }

    @Override
    public void updateAdapter(Object obj) {
        if(baseListView != null){
            baseListView.setPadding(0,0,0,0);
            baseListView.setDividerHeight(DensityUtil.dip2px(BaseApp.getContext(),0.5f));
            baseListView.setDividerHeight(0);
        }
        ((SystemMessageAdapter)adapter).addData(((SystemMessageBean)obj).getData().getData_list(),isRefreshData);
    }

    @Override
    public Object parseData(String result) {
        return GsonTools.changeGsonToBean(result,SystemMessageBean.class);
    }

    @Override
    protected BaseAdapter getAdapter() {
        return new SystemMessageAdapter();
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {
        SystemMessageBean.DataBean.DataListBean dataListBean = ((SystemMessageAdapter) adapter).mData.get(position);
        switch (dataListBean.getSystem_type()){
            case 1:     //  订单
                if(!TextUtils.isEmpty(dataListBean.getSystem_content()) || dataListBean.getSystem_content().contains("已成功支付了订单")){
                    if(dataListBean.getSystem_content().contains("已确认")){
                        Intent intent = new Intent(mContext, InfoDifferentActivity.class);
                        intent.putExtra("type", IConsName.INFO_ALREADY_BUY_SERVICE);
                        startActivity(intent);
                    }else if(dataListBean.getSystem_content().contains("购买")){
                        Intent intent = new Intent(mContext, PlayerSkillManageItemActivity.class);
                        intent.putExtra("type",IConsName.MANAGE_ORDER_CENTER);
                        startActivity(intent);
                    }
                }
                break;
            case 2:     //  关注，人
                Intent intentUser = new Intent(mContext, InfoEditorPersonActivity.class);
                intentUser.putExtra(IConsName.ISCANEDIT,false);
                intentUser.putExtra(IConsName.USER_ID,dataListBean.getSystemFans().getId());
                startActivity(intentUser);
                break;
            case 3:     //技能上下架
                Intent intentSkill = new Intent(mContext, PlayerSkillManageItemActivity.class);
                intentSkill.putExtra("type",IConsName.MANAGE_MY_SKILL);
                startActivity(intentSkill);
                break;
            case 4:     //赠送礼物
                startActivity(new Intent(mContext, InfoReceiveGiftActivity.class));
                break;
            case 5:     //通用系统消息（如邀请上传照片）

                break;
            case 6:     //vip

                break;
            case 7:     //达人认证

                break;
            case 8:
                startActivity(new Intent(mContext, CouponsActivity.class));     //优惠券
                break;
        }
    }
}
