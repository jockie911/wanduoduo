package com.wanduoduo.adapter.index;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;

import java.util.List;

/**
 * Created by jockie on 2016/7/21.
 */
public class PopSubListViewAdapter extends MyBaseAdapter<String> {
    private int rightSelectPostition = -1;

    @Override
    public View getView(int position, View contentView, ViewGroup parent) {
        if(null == contentView){
            contentView = View.inflate(parent.getContext(), R.layout.pop_item_lv_tv,null);
        }
        TextView textView = (TextView) contentView.findViewById(R.id.tv_pop_item_lv_tv);
        textView.setText(mData.get(position));
        textView.setTextSize(16);
        if(position == rightSelectPostition){
            textView.setTextColor(parent.getResources().getColor(R.color.c_mei_hong));
        }else{
            textView.setTextColor(parent.getResources().getColor(R.color.c_208_210_211));
        }
        return contentView;
    }

    public void addData(List<String> rootList) {
        mData.clear();
        mData.addAll(rootList);
        notifyDataSetChanged();
    }

    public void addData(List<String> subStatusList, int rightSelectPostition) {
        mData.clear();
        this.rightSelectPostition = rightSelectPostition;
        mData.addAll(subStatusList);
        notifyDataSetChanged();
    }
}
