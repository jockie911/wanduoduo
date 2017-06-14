package com.wanduoduo.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

import com.wanduoduo.R;

/**
 * Created by jockie on 2016/8/11.
 */
public class SelectPalceAllAdapter extends BaseAdapter {
    public SelectPalceAllAdapter(){
        notifyDataSetChanged();
    }
    @Override
    public int getCount() {
        return 10;
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
        if(view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_select_place_all,null);
        return view;
    }
}
