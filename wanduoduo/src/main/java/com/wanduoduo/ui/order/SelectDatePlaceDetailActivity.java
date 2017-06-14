package com.wanduoduo.ui.order;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;

public class SelectDatePlaceDetailActivity extends BaseActivity {

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_select_date_place_detail;
    }

    @Override
    protected void initData() {
        tvTitle.setText("选择场地");
    }
}
