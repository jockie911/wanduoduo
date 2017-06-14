package com.wanduoduo.adapter.info;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.InfoBean;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jockie on 2016/9/9.
 */
public class InfoGiftShowAdapter extends MyBaseAdapter<InfoBean.DataBean.UserItemBean>{

    private boolean isExist;
    /**
     * 赠送的新的礼物
     * @param id
     * @param name
     * @param pic
     */
    public void addNewGift(String id, String name, String pic) {
        isExist = false;
        for (InfoBean.DataBean.UserItemBean userItemBean : mData) {
            if(id.equals(userItemBean.getItem().getId())){
                isExist = true;
                userItemBean.setNum((Integer.parseInt(userItemBean.getNum()) + 1) + "");
                break;
            }
        }
        if(!isExist){
            InfoBean.DataBean.UserItemBean userItemBean = new InfoBean.DataBean.UserItemBean();
            userItemBean.setNum("1");
            InfoBean.DataBean.UserItemBean.ItemBean itemBean = new InfoBean.DataBean.UserItemBean.ItemBean();
            itemBean.setId(id);
            itemBean.setPic(pic);
            itemBean.setName(name);
            userItemBean.setItem(itemBean);
            mData.add(userItemBean);
        }
        notifyDataSetChanged();
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        if(view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_info_gift_show,null);
        ImageView ivGiftPic = (ImageView) view.findViewById(R.id.iv_gift_pic);
        TextView tvGiftCount = (TextView) view.findViewById(R.id.tv_gift_count);

        Glide.with(viewGroup.getContext()).load(mData.get(i).getItem().getPic()).centerCrop().into(ivGiftPic);
        tvGiftCount.setText(mData.get(i).getNum());
        return view;
    }
}
