package com.wanduoduo.adapter.appoint;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.MyBaseAdapter;

/**
 * Created by jockie on 2016/12/21.
 */
public class WarningAdapter extends MyBaseAdapter<String>{

    private int selectedPosition = -1;
    @Override
    public View getView(int position, View contentView, ViewGroup parent) {
        if(contentView == null)
            contentView = View.inflate(parent.getContext(), R.layout.item_warning,null);
        TextView tvWarning = (TextView) contentView.findViewById(R.id.tv_warning);
        TextView cb = (TextView) contentView.findViewById(R.id.cb);
        cb.setVisibility(selectedPosition == position?View.VISIBLE:View.INVISIBLE);
        tvWarning.setText(getItem(position));
        return contentView;
    }

    public void setSelectedPosition(int position) {
        selectedPosition = position;
        notifyDataSetChanged();
    }
}
