package com.wanduoduo.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.SystemMessageBean;
import com.wanduoduo.utils.TimeShowUtils;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/9/9.
 */
public class SystemMessageAdapter extends MyBaseAdapter<SystemMessageBean.DataBean.DataListBean> {

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        if(view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_system_message,null);

        ViewHolder holder = ViewHolder.getHolder(view);
        holder.tvContent.setText(mData.get(i).getSystem_content());
        holder.tvTime.setText(TimeShowUtils.getStandardDate(mData.get(i).getSystem_create_time()));
        return view;
    }

    static class ViewHolder {
        @Bind(R.id.tv_content)
        TextView tvContent;
        @Bind(R.id.tv_time)
        TextView tvTime;
        private static ViewHolder getHolder(View convertView) {
            ViewHolder holder = (ViewHolder) convertView.getTag();
            if (holder == null) {
                holder = new ViewHolder(convertView);
                convertView.setTag(holder);
            }
            return holder;
        }

        ViewHolder(View convertView) {
            ButterKnife.bind(this, convertView);
        }
    }
}
