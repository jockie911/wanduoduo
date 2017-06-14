package com.wanduoduo.adapter.index;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jockie on 2016/7/21.
 */
public class PopRootListViewAdapter extends MyBaseAdapter<String> {

    private int leftSelectPostition;

    public PopRootListViewAdapter(int leftSelectPostition) {
        this.leftSelectPostition = leftSelectPostition;
    }

    @Override
    public View getView(int position, View contentView, final ViewGroup parent) {
        if(contentView == null){
            contentView = View.inflate(parent.getContext(), R.layout.pop_item_lv_tv,null);
        }
        final TextView textView = (TextView) contentView.findViewById(R.id.tv_pop_item_lv_tv);
        textView.setText(mData.get(position));
        textView.setTextSize(16);
        if(position == leftSelectPostition){
            textView.setTextColor(parent.getResources().getColor(R.color.c_mei_hong));
            FrameLayout fl = (FrameLayout) contentView.findViewById(R.id.fl_item_lv_pop);
            fl.setBackgroundResource(R.color.bgcolor);
        }
        return contentView;
    }

    public void addData(List<String> rootList) {
        mData.addAll(rootList);
        notifyDataSetChanged();
    }
}
