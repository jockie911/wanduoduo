package com.wanduoduo.adapter.appoint;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.MoiveBean;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/12/8.
 */
public class AppointMoiveAdapter extends MyBaseAdapter<MoiveBean.DataBean.DataListBean> {

    private int cbClickPositoin = -1;   //选中的电影
    @Override
    public View getView(final int position, View contentView, ViewGroup parent) {
        if(contentView == null)
            contentView = View.inflate(parent.getContext(), R.layout.item_appoint_moive,null);
        final ViewHolder holder = ViewHolder.getHolder(contentView);
        Glide.with(parent.getContext()).load(mData.get(position).getPoster()).centerCrop().into(holder.ivItemPic);
        holder.tvItemName.setText(mData.get(position).getTitle());
        holder.tvItemDesc.setText(mData.get(position).getActors());
        holder.tvItemRating.setText("评分:"  + (mData.get(position).getRating() == null || TextUtils.equals("null",mData.get(position).getRating())?"暂无评分":
                mData.get(position).getRating()));

        holder.cbItem.setChecked(cbClickPositoin == position);

        holder.cbItem.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                cbClickPositoin = holder.cbItem.isChecked()?position:-1;
                notifyDataSetChanged();
            }
        });
        return contentView;
    }

    public String selectMoiveName(){
        return cbClickPositoin == -1?"":mData.get(cbClickPositoin).getTitle();
    }

    static class ViewHolder {
        @Bind(R.id.iv_item_pic)
        ImageView ivItemPic;
        @Bind(R.id.tv_item_name)
        TextView tvItemName;
        @Bind(R.id.tv_item_desc)
        TextView tvItemDesc;
        @Bind(R.id.tv_item_rating)
        TextView tvItemRating;
        @Bind(R.id.cb)
        CheckBox cbItem;

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
