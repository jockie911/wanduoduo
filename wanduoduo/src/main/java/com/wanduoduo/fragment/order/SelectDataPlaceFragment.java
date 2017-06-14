package com.wanduoduo.fragment.order;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;

import com.wanduoduo.adapter.SelectPalceAllAdapter;
import com.wanduoduo.base.BaseListRefreshFragment;
import com.wanduoduo.ui.order.SelectDatePlaceDetailActivity;

/**
 * Created by jockie on 2016/8/11.
 */
public class SelectDataPlaceFragment extends BaseListRefreshFragment {

    @Override
    protected void sendDataRequest() {

    }

    @Override
    protected Object parseData(String result) {
        return null;
    }

    @Override
    public void updateAdapter(Object obj) {

    }

    @Override
    protected BaseAdapter getAdapter() {
        return new SelectPalceAllAdapter();
    }


    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {
        Intent intent = new Intent(mContext, SelectDatePlaceDetailActivity.class);
        startActivity(intent);
    }
}
