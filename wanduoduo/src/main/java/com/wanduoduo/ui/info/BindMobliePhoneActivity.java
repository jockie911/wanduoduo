package com.wanduoduo.ui.info;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;

public class BindMobliePhoneActivity extends BaseActivity {


    @Override
    protected int getLayoutRes() {
        return R.layout.activity_bind_moblie_phone;
    }

    @Override
    protected void initData() {
        tvTitle.setText(getResources().getString(R.string.bang_ding_shou_ji));
    }
}
