package com.wanduoduo.adapter;

import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.LiKeFansBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.TimeShowUtils;
import com.wanduoduo.widget.CircleImageView;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/9/18.
 */
public class OnLineChooseAdapter extends MyBaseAdapter<LiKeFansBean.DataBean.DataListBean> {

    /**
     * 发送火箭成功 将自己置顶
     */
    public void setSeltToTop() {
        if(mData.size() == 0) return;
        for (int i = 0; i < mData.size(); i++) {
            if(TextUtils.equals(mData.get(i).getId(), SPUtils.getStringData(IConsName.USER_ID,""))){
                mData.add(0,mData.get(i));
                mData.remove(i + 1);
                break;
            }
        }
        if(!TextUtils.equals(mData.get(0).getId(),SPUtils.getStringData(IConsName.USER_ID,""))){
            LiKeFansBean.DataBean.DataListBean dataListBean = new LiKeFansBean.DataBean.DataListBean();
            dataListBean.setId(SPUtils.getStringData(IConsName.USER_ID,""));
            mData.add(0,dataListBean);
        }
        notifyDataSetChanged();
    }

    public void setSelfHide() {
        for (int i = 0; i < mData.size(); i++) {
            if(TextUtils.equals(mData.get(i).getId(),SPUtils.getStringData(IConsName.USER_ID,""))){
                mData.remove(i);
                notifyDataSetChanged();
                break;
            }
        }
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_gv_on_line, null);
        final ViewHolder holder = ViewHolder.getHolder(view);
       /* Glide.with(viewGroup.getContext()).load(mData.get(i).getAvatar()).placeholder(R.drawable.photo).error(R.drawable.photo).centerCrop().into(new SimpleTarget<GlideDrawable>() {
            @Override
            public void onResourceReady(GlideDrawable resource,
                                        GlideAnimation<? super GlideDrawable> glideAnimation) {
                holder.civAvatar.setImageDrawable(resource);
            }
        });*/
        Glide.with(viewGroup.getContext()).load(mData.get(i).getAvatar()).centerCrop().into(holder.civAvatar);

        holder.tvNickname.setText(mData.get(i).getNickname());
        holder.tvTime.setText(TimeShowUtils.getStandardDate(mData.get(i).getUpdate_time()));
        if(mData.get(i).getIs_vip() == 0){
            holder.ivIsVip.setVisibility(View.INVISIBLE);
            holder.civAvatar.setBorderColor(Color.parseColor("#d0d2d3"));
            holder.tvNickname.setTextColor(viewGroup.getResources().getColor(R.color.c_208_210_211));
        }else{
            holder.ivIsVip.setVisibility(View.VISIBLE);
            holder.civAvatar.setBorderColor(Color.parseColor("#ffe967"));
            holder.tvNickname.setTextColor(viewGroup.getResources().getColor(R.color.c_255_233_103));
        }
        if(TextUtils.isEmpty(mData.get(i).getVideo())){
            holder.ivIsVideo.setVisibility(View.INVISIBLE);
        }else{
            holder.ivIsVideo.setVisibility(View.VISIBLE);
        }
        return view;
    }

    static class ViewHolder {
        @Bind(R.id.civ_avatar)
        CircleImageView civAvatar;
        @Bind(R.id.iv_is_vip)
        ImageView ivIsVip;
        @Bind(R.id.iv_is_video)
        ImageView ivIsVideo;
        @Bind(R.id.tv_nickname)
        TextView tvNickname;
        @Bind(R.id.tv_time)
        TextView tvTime;

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
