package com.wanduoduo.ui.appoint;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.fragment.appoint.AppointMoiveFragment;

import butterknife.Bind;
import butterknife.OnClick;

public class AppointMoiveActivity extends BaseActivity {

    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    private AppointMoiveFragment appointMoiveFragment;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_setting_item;
    }

    @Override
    protected void initData() {
        tvTitle.setText("电影列表");
        tvRightTitleBar.setText("确定");
        tvRightTitleBar.setTextColor(getResources().getColor(R.color.c_129_143_255));

        appointMoiveFragment = new AppointMoiveFragment();

        getSupportFragmentManager().beginTransaction().replace(R.id.content_container,appointMoiveFragment).commit();
    }

    @OnClick(R.id.tv_right_title_bar)
    public void onClick(){
        appointMoiveFragment.setMoiveNameResult();
    }
}
