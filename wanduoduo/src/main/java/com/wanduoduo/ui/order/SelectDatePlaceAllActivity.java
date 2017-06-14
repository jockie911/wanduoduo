package com.wanduoduo.ui.order;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.fragment.order.SelectDataPlaceFragment;

import butterknife.Bind;

public class SelectDatePlaceAllActivity extends BaseActivity {

    SelectDataPlaceFragment selectPlaceAllFragment;
    @Override
    protected int getLayoutRes() {
        return R.layout.activity_select_date_place;
    }

    @Override
    protected void initData() {
        tvTitle.setText("选择场地");
        selectPlaceAllFragment = (SelectDataPlaceFragment) getSupportFragmentManager().findFragmentById(R.id.select_place_all_fragment);
    }
}
