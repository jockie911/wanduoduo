package com.wanduoduo.adapter.info;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.AllGiftListBean;

/**
 * Created by jockie on 2016/12/26.
 */

public class AllGiftAdapter extends MyBaseAdapter<AllGiftListBean.DataBean.DataListBean>{
    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        if(view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_gv_send_gift,null);
        ImageView ivGiftPic = (ImageView) view.findViewById(R.id.iv_gift_pic);
        TextView tvGiftName = (TextView) view.findViewById(R.id.tv_gift_name);
        TextView tvGiftCharm = (TextView) view.findViewById(R.id.tv_gift_charm);

        Glide.with(viewGroup.getContext()).load(mData.get(i).getPic()).into(ivGiftPic);
        tvGiftName.setText(mData.get(i).getName());
        tvGiftCharm.setText(mData.get(i).getCharm());
        return view;
    }
}
