package com.wanduoduo.adapter.info;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.CouponsBean;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/8/12.
 */
public class InfoCouponsAdapter extends MyBaseAdapter<CouponsBean.DataBean.DataListBean> {

    private int myCoupons;
    public InfoCouponsAdapter(int myCoupons) {
        this.myCoupons = myCoupons;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_info_coupons, null);
        ViewHolder holder = ViewHolder.getHolder(view);
        holder.itemCouponsTvMoney.setText(mData.get(i).getPrice());
        holder.itemCouponsTvYouxiaoqi.setText(mData.get(i).getOutdate_time());
        if(mData.get(i).getTag_name() == null){
            holder.itemCouponsTvShiyong.setText("全品类商品使用");
        }else{
            holder.itemCouponsTvShiyong.setText(mData.get(i).getTag_name());
        }
        if(myCoupons == 2)
            setTextColor(holder);

        if(!TextUtils.isEmpty(mData.get(i).getOrder_price())){
            holder.itemCouponsTvDesc.setText("满" + mData.get(i).getOrder_price() + "可用");
        }
        return view;
    }

    private void setTextColor(ViewHolder holder) {
        setTextColor(holder.itemCouponsTvDesc);
        setTextColor(holder.itemCouponsTvMoney);
        setTextColor(holder.itemCouponsTvRmb);
        setTextColor(holder.itemCouponsTvShiyong);
        setTextColor(holder.itemCouponsTvTitle);
        setTextColor(holder.itemCouponsTvYouxiaoqi);
        holder.relCouponsBg.setBackgroundResource(R.drawable.info_coupsons_now_gray);
        holder.ivPass.setVisibility(View.VISIBLE);
    }

    private void setTextColor(TextView tv){
        tv.setTextColor(BaseApp.getContext().getResources().getColor(R.color.c_208_208_208));
    }

    static class ViewHolder {
        @Bind(R.id.item_coupons_tv_rmb)
        TextView itemCouponsTvRmb;
        @Bind(R.id.item_coupons_tv_money)
        TextView itemCouponsTvMoney;
        @Bind(R.id.item_coupons_tv_desc)
        TextView itemCouponsTvDesc;
        @Bind(R.id.item_coupons_tv_title)
        TextView itemCouponsTvTitle;
        @Bind(R.id.item_coupons_tv_shiyong)
        TextView itemCouponsTvShiyong;
        @Bind(R.id.item_coupons_tv_youxiaoqi)
        TextView itemCouponsTvYouxiaoqi;
        @Bind(R.id.iv_pass)
        ImageView ivPass;
        @Bind(R.id.rel_coupons_bg)
        RelativeLayout relCouponsBg;

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
