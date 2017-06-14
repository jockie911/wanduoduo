package com.wanduoduo.base;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jockie on 2016/7/21.
 */
public abstract class  MyBaseAdapter<T> extends BaseAdapter {

    public List<T> mData = new ArrayList<>();
    public void addData(List<T> data,boolean isRefreshData){
        if(isRefreshData)
            mData.clear();
        if(data != null)
            mData.addAll(data);
        notifyDataSetChanged();
    }

    public void clear(){
        mData.clear();
        notifyDataSetChanged();
    }

    public void removeViewAt(int position){
        mData.remove(position);
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
        return mData.size();
    }

    @Override
    public T getItem(int position) {
        return mData.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public abstract View getView(int position, View contentView, ViewGroup parent) ;
}
