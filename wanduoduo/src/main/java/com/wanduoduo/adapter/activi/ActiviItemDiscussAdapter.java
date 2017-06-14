package com.wanduoduo.adapter.activi;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.ActiviBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.TimeShowUtils;
import com.wanduoduo.widget.CircleImageView;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/9/23.
 */
public class ActiviItemDiscussAdapter extends MyBaseAdapter<ActiviBean.DataBean.CommentListBean> {

    @Override
    public View getView(final int i, View view, final ViewGroup viewGroup) {
        if (view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_activi_discuss, null);
        ViewHolder holder = ViewHolder.getHolder(view);
        holder.tvNickname.setText(mData.get(i).getUser().getNickname());

        holder.ivVipLevel.setVisibility(View.VISIBLE);
        switch (mData.get(i).getUser().getVip_level()){
            case "1": holder.ivVipLevel.setBackgroundResource(R.drawable.vip_1);break;
            case "2": holder.ivVipLevel.setBackgroundResource(R.drawable.vip_2);break;
            case "3": holder.ivVipLevel.setBackgroundResource(R.drawable.vip_3);break;
            case "4": holder.ivVipLevel.setBackgroundResource(R.drawable.vip_4);break;
            default: holder.ivVipLevel.setVisibility(View.INVISIBLE);
        }

        holder.tvTime.setText(TimeShowUtils.getStandardDate(mData.get(i).getCreate_time()));
        Glide.with(viewGroup.getContext()).load(mData.get(i).getUser().getAvatar()).centerCrop().into(holder.civAvatar);

        holder.tvContent.setText(mData.get(i).getContent());

        holder.civAvatar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(viewGroup.getContext(), InfoEditorPersonActivity.class);
                intent.putExtra(IConsName.ISCANEDIT,false);
                intent.putExtra(IConsName.USER_ID,mData.get(i).getUser().getId());
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                viewGroup.getContext().startActivity(intent);
            }
        });
        return view;
    }

    static class ViewHolder {
        @Bind(R.id.civ_avatar)
        CircleImageView civAvatar;
        @Bind(R.id.tv_nickname)
        TextView tvNickname;
        @Bind(R.id.iv_vip_level)
        ImageView ivVipLevel;
        @Bind(R.id.tv_time)
        TextView tvTime;
        @Bind(R.id.tv_content)
        TextView tvContent;

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
