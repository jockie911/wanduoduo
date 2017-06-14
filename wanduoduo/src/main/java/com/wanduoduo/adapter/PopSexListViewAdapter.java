package com.wanduoduo.adapter;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.wanduoduo.R;

import java.util.ArrayList;
import java.util.List;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/8/8.
 */
public class PopSexListViewAdapter extends BaseAdapter{

    List<String> mData = new ArrayList<>();
    private int selectedPosition;

    public void addData(List<String> data, int selectedPosition) {
        mData.clear();
        mData.addAll(data);
        this.selectedPosition = selectedPosition;
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
        return mData.size();
    }

    @Override
    public Object getItem(int i) {
        return null;
    }

    @Override
    public long getItemId(int i) {
        return 0;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        if(null == view)
            view = View.inflate(viewGroup.getContext(), R.layout.pop_item_sex_index,null);
        ViewHolder holder = ViewHolder.getHolder(view);
        holder.tvSexAll.setText(mData.get(i));
        if(i == selectedPosition){
            holder.ivIsChecked.setVisibility(View.VISIBLE);
            holder.tvSexAll.setTextColor(viewGroup.getResources().getColor(R.color.c_mei_hong));
        }else{
            holder.ivIsChecked.setVisibility(View.INVISIBLE);
            holder.tvSexAll.setTextColor(viewGroup.getResources().getColor(R.color.c_208_210_211));
        }
        return view;
    }

    static class ViewHolder {
        @Bind(R.id.tv_sex_all)
        TextView tvSexAll;
        @Bind(R.id.item_iv_isChecked)
        ImageView ivIsChecked;
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
