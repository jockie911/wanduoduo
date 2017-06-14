package com.wanduoduo.adapter.index;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.IndexTagListBean;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/7/22.
 */
public class PlayerSkillChooseItemAdapter extends MyBaseAdapter<IndexTagListBean.DataBean.DataListBean.DataListChildBean> {

    @Override
    public View getView(int position, View contentView, ViewGroup parent) {
        if(null == contentView){
            contentView = View.inflate(parent.getContext(), R.layout.item_gv_player_skill_choose,null);
        }
        ViewHolder holder = ViewHolder.getHolder(contentView);
        holder.itemTv.setText(mData.get(position).getTag_name());
        return contentView;
    }

    static class ViewHolder {
        @Bind(R.id.item_tv_skill_choose_gv)
        TextView itemTv;
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
