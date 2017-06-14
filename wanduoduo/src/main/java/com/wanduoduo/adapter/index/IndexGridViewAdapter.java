package com.wanduoduo.adapter.index;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.IndexGiftListBean;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/7/19.
 */
public class IndexGridViewAdapter extends MyBaseAdapter<IndexGiftListBean.DataBean.DataListBean> {

    @Override
    public View getView(int i, View convertView, ViewGroup viewGroup) {
        if (convertView == null) {
            convertView = View.inflate(viewGroup.getContext(), R.layout.item_gv_index, null);
        }
        ViewHolder holder = ViewHolder.getHolder(convertView);

        Glide.with(viewGroup.getContext()).load(mData.get(i).getCover_pic()).centerCrop().into(holder.itemIvPic);
        if(!TextUtils.isEmpty(mData.get(i).getGift_video())){
            holder.itemIvPlay.setVisibility(View.VISIBLE);
        }else{
            holder.itemIvPlay.setVisibility(View.INVISIBLE);
        }

        if(mData.get(i).getOrganizer().getGender() == 1){
            holder.tvPrice.setBackgroundResource(R.drawable.index_item_gv_price_bg_blue);
        }else{
            holder.tvPrice.setBackgroundResource(R.drawable.index_item_gv_price_bg_red);
        }

        holder.tvPrice.setText(mData.get(i).getFee() + "/时");
        holder.itemTvTitle.setText(mData.get(i).getTitle());
        holder.itemTvNickname.setText(mData.get(i).getOrganizer().getNickname());
        return convertView;
    }

    static class ViewHolder {
        @Bind(R.id.item_iv_pic)
        ImageView itemIvPic;
        @Bind(R.id.item_iv_play)
        ImageView itemIvPlay;
        @Bind(R.id.item_tv_title)
        TextView itemTvTitle;
        @Bind(R.id.item_tv_nickname)
        TextView itemTvNickname;
        @Bind(R.id.iv_sex_bg)
        ImageView ivSexBg;
        @Bind(R.id.tv_price)
        TextView tvPrice;

        ViewHolder(View view) {
            ButterKnife.bind(this, view);
        }
        public static ViewHolder getHolder(View convertView) {
            ViewHolder holder = (ViewHolder) convertView.getTag();
            if (holder == null) {
                holder = new ViewHolder(convertView);
                convertView.setTag(holder);
            }
            return holder;
        }
    }
}
