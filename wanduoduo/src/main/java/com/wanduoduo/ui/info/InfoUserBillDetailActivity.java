package com.wanduoduo.ui.info;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.fragment.info.InfoUserBillDetailFragment;

public class InfoUserBillDetailActivity extends BaseActivity {


    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_user_bill_detail;
    }

    @Override
    protected void initData() {
        tvTitle.setText("明细");

        getSupportFragmentManager().beginTransaction().replace(R.id.content_container,new InfoUserBillDetailFragment()).commit();
    }
}
