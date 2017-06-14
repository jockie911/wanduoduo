package com.wanduoduo.adapter.index;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.liuzhuang.rcimageview.RoundCornerImageView;
import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.ManageServerSkillBean;
import com.wanduoduo.utils.GiftNameUtils;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/8/31.
 */
public class PersonSkillAdapter extends MyBaseAdapter<ManageServerSkillBean.DataBean.DataListBean> {

    @Override
    public View getView(int position, View view, ViewGroup viewGroup) {
        if (view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_skill_order_center, null);
        ManageServerSkillBean.DataBean.DataListBean dataListBean = mData.get(position);
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
        holder.llMySkill.setVisibility(View.GONE);
        holder.v_t.setVisibility(View.INVISIBLE);
        return view;
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
        @Bind(R.id.ll_my_skill)
        LinearLayout llMySkill;
        @Bind(R.id.v_t)
        View v_t;


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
