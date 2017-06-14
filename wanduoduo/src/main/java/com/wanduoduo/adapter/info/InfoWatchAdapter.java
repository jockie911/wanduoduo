package com.wanduoduo.adapter.info;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.InfoWatchBean;
import com.wanduoduo.utils.TvDrawableUtils;
import com.wanduoduo.widget.CircleImageView;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/8/19.
 */
public class InfoWatchAdapter extends MyBaseAdapter<InfoWatchBean.DataBean.DataListBean> {

    private int type;

    public InfoWatchAdapter(int type) {
        this.type = type;
    }


    @Override
    public View getView(int position, View view, ViewGroup viewGroup) {
        if (view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.common_person_info, null);
        ViewHolder holder = ViewHolder.getHolder(view);
        Glide.with(viewGroup.getContext()).load(mData.get(position).getAvatar()).centerCrop().into(holder.ivAvctor);
        holder.tvName.setText(mData.get(position).getNickname());
        holder.tvAge.setText(mData.get(position).getAge());
        if(1 == mData.get(position).getGender()){
            TvDrawableUtils.setTvDrawableLeft(holder.tvAge,R.color.white,R.drawable.icon_male);
            holder.tvAge.setBackgroundResource(R.drawable.shape_age_male);
        }else if(2 == mData.get(position).getGender()){
            TvDrawableUtils.setTvDrawableLeft(holder.tvAge,R.color.white,R.drawable.icon_female);
            holder.tvAge.setBackgroundResource(R.drawable.shape_age_female);
        }
        holder.ivJianTou.setVisibility(View.INVISIBLE);
        String visitTime = "";
        if(mData.get(position).getVisit_time() != null)
            visitTime= mData.get(position).getVisit_time().substring(5, 16);
        holder.tvVisitTime.setVisibility(View.VISIBLE);
        if(type == 2){
            holder.tvVisitTime.setText(visitTime + " 访问过您");
        }else if(type == 1){
            if(mData.get(position).getGender() == 1){
                holder.tvVisitTime.setText(visitTime + " 访问过他");
            }else if(mData.get(position).getGender() == 2){
                holder.tvVisitTime.setText(visitTime + " 访问过她");
            }
        }
        if(position == mData.size()){
            holder.vBottonLine.setVisibility(View.GONE);
        }else{
            holder.vBottonLine.setVisibility(View.VISIBLE);
        }

        holder.ivVipLevel.setVisibility(View.VISIBLE);
        if(mData.get(position).getVip_level() == 1){
            holder.ivVipLevel.setImageResource(R.drawable.vip_1);
        }else if(mData.get(position).getVip_level() == 2){
            holder.ivVipLevel.setImageResource(R.drawable.vip_2);
        }else if(mData.get(position).getVip_level() == 3){
            holder.ivVipLevel.setImageResource(R.drawable.vip_3);
        }else if(mData.get(position).getVip_level() == 4){
            holder.ivVipLevel.setImageResource(R.drawable.vip_4);
        }else{
            holder.ivVipLevel.setVisibility(View.INVISIBLE);
        }

        return view;
    }

    static class ViewHolder {
        @Bind(R.id.iv_avctor)
        CircleImageView ivAvctor;
        @Bind(R.id.tv_name)
        TextView tvName;
        @Bind(R.id.tv_age)
        TextView tvAge;
        @Bind(R.id.tv_visit_time)
        TextView tvVisitTime;
        @Bind(R.id.iv_jian_tou)
        ImageView ivJianTou;
        @Bind(R.id.v_bottom_line)
        View vBottonLine;
        @Bind(R.id.rel_person_info)
        RelativeLayout relPersonInfo;
        @Bind(R.id.iv_vip_level)
        ImageView ivVipLevel;

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
