package com.wanduoduo.fragment.info;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.InfoUserBillBean;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/9/2.
 */
public class InfoUserBillDetailAdapter extends MyBaseAdapter<InfoUserBillBean.DataBean.DataListBean> {

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_info_user_bean_detail, null);
        ViewHolder holder = ViewHolder.getHolder(view);
        int type = Integer.parseInt(mData.get(i).getOrder_type());

        //6 魅力值体现
        //7余额退款
        if(type == 3 || type == 5){         //支出
            holder.tvMoney.setTextColor(viewGroup.getResources().getColor(R.color.c_127_130_134));
            holder.tvMoney.setText("-" + mData.get(i).getOrder_total_fee());
            holder.tvDesc.setText("支出");
        }else if(type == 1 || type == 2 || type == 4 || type == 6 || type == 7){         // 收入
            holder.tvMoney.setTextColor(viewGroup.getResources().getColor(R.color.c_129_143_255));
            holder.tvMoney.setText("+" + mData.get(i).getOrder_total_fee());
            holder.tvDesc.setText("收入");
        }
        holder.tvTime.setText(mData.get(i).getOrder_create_time());
        return view;
    }


    static class ViewHolder {
        @Bind(R.id.tv_desc)
        TextView tvDesc;
        @Bind(R.id.tv_time)
        TextView tvTime;
        @Bind(R.id.tv_money)
        TextView tvMoney;
        private static ViewHolder getHolder(View convertView) {
            ViewHolder holder = (ViewHolder) convertView.getTag();
            if (holder == null) {
                holder = new ViewHolder(convertView);
                convertView.setTag(holder);
            }
            return holder;
        }
        ViewHolder(View view) {
            ButterKnife.bind(this, view);
        }
    }
}
