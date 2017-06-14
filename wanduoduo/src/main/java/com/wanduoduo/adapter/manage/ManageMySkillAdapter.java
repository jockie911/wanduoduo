package com.wanduoduo.adapter.manage;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.android.liuzhuang.rcimageview.RoundCornerImageView;
import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.ManageServerSkillBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.skill.PlayerSkillManageItemActivity;
import com.wanduoduo.ui.skill.PlayerSkillPerfectionActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.GiftNameUtils;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.TvDrawableUtils;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/8/16.
 */
public class ManageMySkillAdapter extends MyBaseAdapter<ManageServerSkillBean.DataBean.DataListBean> {

    private int type;
    private PlayerSkillManageItemActivity playerSkillManageItemActivity;

    public ManageMySkillAdapter(PlayerSkillManageItemActivity playerSkillManageItemActivity, int type) {
        this.playerSkillManageItemActivity = playerSkillManageItemActivity;
        this.type = type;
    }

    @Override
    public View getView(final int position, View view, ViewGroup viewGroup) {
        if (view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_skill_order_center, null);
        final ManageServerSkillBean.DataBean.DataListBean dataListBean = mData.get(position);
        final ViewHolder holder = ViewHolder.getHolder(view);
        holder.itemTvTitle.setText(dataListBean.getTitle());
        holder.itemTvMoney.setText("价格  " + dataListBean.getFee());
        GiftNameUtils.getTagName(dataListBean.getGift_tag_id(), new GiftNameUtils.OnNameCompeleListener() {
            @Override
            public void onCompelte(String name) {
                holder.itemTvTime.setText("类型  " + name);
            }
        });
        Glide.with(viewGroup.getContext()).load(dataListBean.getCover_pic()).centerCrop().into(holder.itemIvPhoto);
        if (type == 1) {
            if("1".equals(dataListBean.getStatus())){
                holder.tvUpDown.setText("下架");
                TvDrawableUtils.setTvDrawableLeft(holder.tvUpDown,R.color.c_127_130_134,R.drawable.down_skill);
            }else{
                holder.tvUpDown.setText("上架");
                TvDrawableUtils.setTvDrawableLeft(holder.tvUpDown,R.color.c_mei_hong,R.drawable.up_skill);
            }
            holder.flUpDown.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    upDownSkill(dataListBean.getStatus(),position);
                }
            });
        } else {
            holder.tempV.setVisibility(View.GONE);
            holder.flUpDown.setVisibility(View.GONE);
        }
        holder.flDeleteSkill.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                doWithDeleteSkill(position);
            }
        });
        holder.flEditSkill.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                editSkill(position);
            }
        });
        return view;
    }

    /**
     * 点击编辑技能
     * @param position
     */
    private void editSkill(int position) {
        Intent intent = new Intent(playerSkillManageItemActivity, PlayerSkillPerfectionActivity.class);
        intent.putExtra("datalistbean",mData.get(position));
        intent.putExtra("tag_id",mData.get(position).getGift_tag_id());
        intent.putExtra("tag_type",getItem(position).getGift_type() == null? "0" : getItem(position).getGift_type());
        intent.putExtra("type",IConsName.SKILL_EDIT);
        playerSkillManageItemActivity.startActivity(intent);
    }

    /**
     * 上架和下架
     * @param status
     * @param position
     */
    private void upDownSkill(String status, final int position) {
        if("1".equals(status)){ //执行下架操作
            downAlertDialog(position);
        }else {
            upAlertDialog(position);
        }
    }

    /**
     * 技能上架
     * @param position
     */
    private void upAlertDialog(final int position) {
        DialogUtils.showDialog(playerSkillManageItemActivity, "上架技能", "技能上架后将直接显示在首页,您可以在技能管理中管理。", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                downSkill(position,true);
            }
        });
    }

    private void downAlertDialog(final int position) {
        DialogUtils.showDialog(playerSkillManageItemActivity, "下架技能", "下架后他人将看不到此技能的展示，确定下架改技能?", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                downSkill(position,false);
            }
        });
    }

    /**
     * 下架技能
     * isUpGift 是够是上架技能  true 上架
     */
    private void downSkill(final int position, final boolean isUpGift) {
        String url = "";
        if(isUpGift){
            url = IConstant.GIFT_ON;
        }else{
            url = IConstant.GIFT_OFF;
        }
        OkHttpUtils.sendPostRequest(url, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).
                addParams("id", mData.get(position).getId()).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                playerSkillManageItemActivity.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if(isUpGift){
                            mData.get(position).setStatus("1");
                        }else{
                            mData.get(position).setStatus("2");
                        }
                        notifyDataSetChanged();
                    }
                });
            }

            @Override
            public void onFailure(int errCode,String errMsg) {

            }
        });
    }

    private void doWithDeleteSkill(final int position) {
        DialogUtils.showDialog(playerSkillManageItemActivity, "删除技能","删除此技能后将不可恢复，确定删除?", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                postToNetDeleteSkill(position);
            }
        });
    }

    /**
     * 请求网络删除技能
     *
     * @param position
     */
    private void postToNetDeleteSkill(final int position) {
        OkHttpUtils.sendPostRequest(IConstant.GIFT_CANCLE, MapUtils.clear().addParams("id", mData.get(position).getId()).addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                playerSkillManageItemActivity.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        mData.remove(position);
                        notifyDataSetChanged();
                        ToastUtils.makeToast("技能删除成功");
                    }
                });
            }

            @Override
            public void onFailure(int errCode,String errMsg) {

            }
        });
    }

    static class ViewHolder {
        @Bind(R.id.item_iv_photo)
        RoundCornerImageView itemIvPhoto;
        @Bind(R.id.item_tv_title)
        TextView itemTvTitle;
        @Bind(R.id.item_tv_time)
        TextView itemTvTime;
        @Bind(R.id.item_tv_money)
        TextView itemTvMoney;
        @Bind(R.id.temp_v)
        View tempV;
        @Bind(R.id.tv_up_down)
        TextView tvUpDown;
        @Bind(R.id.fl_up_down)
        FrameLayout flUpDown;
        @Bind(R.id.fl_delete_skill)
        FrameLayout flDeleteSkill;
        @Bind(R.id.fl_edit_skill)
        FrameLayout flEditSkill;

        ViewHolder(View view) {
            ButterKnife.bind(this, view);
        }

        private static ViewHolder getHolder(View convertView) {
            ViewHolder holder = (ViewHolder) convertView.getTag();
            if (holder == null) {
                holder = new ViewHolder(convertView);
                convertView.setTag(holder);
            }
            return holder;
        }
    }
}
