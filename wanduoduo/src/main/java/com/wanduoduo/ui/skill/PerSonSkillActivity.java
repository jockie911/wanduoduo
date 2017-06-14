package com.wanduoduo.ui.skill;

import android.support.v4.app.Fragment;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.fragment.activi.ActiviContentFragment;
import com.wanduoduo.fragment.online.AppointmentItemFragment;
import com.wanduoduo.fragment.personability.PerSonSkillFragment;
import com.wanduoduo.istatic.IConsName;

public class PerSonSkillActivity extends BaseActivity {

    private int type; // 1 技能详情

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_per_son_skill;
    }

    @Override
    protected void initData() {
        int type = getIntent().getIntExtra(IConsName.TYPE, 0);
        switch (type){
            case 1:
                tvTitle.setText("技能列表");
                rePlaceFragment(new PerSonSkillFragment(getIntent().getStringExtra(IConsName.USER_ID)));
                break;
            case 2:
                tvTitle.setText("随心约列表");
                rePlaceFragment(new AppointmentItemFragment(getIntent().getStringExtra(IConsName.USER_ID)));
                break;
            case 3:
                tvTitle.setText("动态详情");
                rePlaceFragment(new ActiviContentFragment(type,getIntent().getStringExtra(IConsName.USER_ID)));
                break;
        }

    }

    private void rePlaceFragment(Fragment fm) {
        getSupportFragmentManager().beginTransaction().replace(R.id.content_container,fm).commit();
    }
}
