package com.wanduoduo.adapter.info;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.InfoReceiveGiftBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.widget.CircleImageView;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/9/9.
 */
public class InfoReceiveAdapter extends MyBaseAdapter<InfoReceiveGiftBean.DataBean.DataListBean> {

    @Override
    public View getView(final int i, View view, ViewGroup viewGroup) {
        if (view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_info_receive_gift, null);
        ViewHolder holder = ViewHolder.getHolder(view);
        Glide.with(viewGroup.getContext()).load(mData.get(i).getFrom_user().getAvatar()).centerCrop().into(holder.civAvatar);
        holder.tvNickname.setText(mData.get(i).getFrom_user().getNickname());
        if(1 == mData.get(i).getFrom_user().getGender()){   //男

        }else if( 2 == mData.get(i).getFrom_user().getGender()){       //女

        }

        Glide.with(viewGroup.getContext()).load(mData.get(i).getItem().getPic()).centerCrop().into(holder.ivGift);
        holder.tvGiftName.setText(mData.get(i).getItem().getName() + " *" + mData.get(i).getNum());
        holder.tvItemCharm.setText("人气值" + (Integer.parseInt(mData.get(i).getItem().getCharm()) * Integer.parseInt(mData.get(i).getNum())));

        if(!TextUtils.isEmpty(mData.get(i).getSend_time()))
            holder.tvSendTime.setText(mData.get(i).getSend_time().substring(0,10));

        holder.civAvatar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intentUser = new Intent(BaseApp.getContext(), InfoEditorPersonActivity.class);
                intentUser.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                intentUser.putExtra(IConsName.ISCANEDIT,false);
                intentUser.putExtra(IConsName.USER_ID,mData.get(i).getFrom_user().getId());
                BaseApp.getContext().startActivity(intentUser);
            }
        });
        return view;
    }

    static class ViewHolder {
        @Bind(R.id.civ_avatar)
        CircleImageView civAvatar;
        @Bind(R.id.tv_nickname)
        TextView tvNickname;
        @Bind(R.id.tv_age)
        TextView tvAge;
        @Bind(R.id.tv_send_time)
        TextView tvSendTime;
        @Bind(R.id.iv_gift)
        ImageView ivGift;
        @Bind(R.id.tv_gift_name)
        TextView tvGiftName;
        @Bind(R.id.tv_item_charm)
        TextView tvItemCharm;

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
