package com.wanduoduo.ui.skill;

import android.content.Intent;
import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.fragment.managecenter.ManageGetMoneyFragment;
import com.wanduoduo.fragment.managecenter.ManageMySkillFragment;
import com.wanduoduo.fragment.managecenter.ManageOrderCenterFragment;
import com.wanduoduo.fragment.personability.PlayerEvaluationFragment;
import com.wanduoduo.istatic.IConsName;

import butterknife.Bind;
import butterknife.OnClick;

public class PlayerSkillManageItemActivity extends BaseActivity {

    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    private int type;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_player_skill_manage_item;
    }

    @Override
    protected void initData() {
        type = getIntent().getIntExtra("type",-1);
        switch (type){
            case IConsName.MANAGE_ORDER_CENTER:
                tvTitle.setText("订单中心");
                replaceFragment(new ManageOrderCenterFragment());
                break;
            case IConsName.MANAGE_MY_SKILL:
                tvTitle.setText("我的技能");
                tvRightTitleBar.setText("发布技能");
                replaceFragment(new ManageMySkillFragment());
                break;
            case IConsName.MANAGE_USER_DISCUSS:
                tvTitle.setText("用户评价");
                replaceFragment(new PlayerEvaluationFragment(true));
                break;
            case IConsName.MANAGE_GET_MONEY:
                tvTitle.setText("申请提现");
                replaceFragment(new ManageGetMoneyFragment());
                break;
        }
    }

    private void replaceFragment(Fragment fm){
        getSupportFragmentManager().beginTransaction().replace(R.id.content_container,fm).commit();
    }

    @OnClick(R.id.tv_right_title_bar)
    public void onClick(View view){
        if(type == IConsName.MANAGE_MY_SKILL){
            startActivity(new Intent(this, PlayerSkillChooseActivity.class));
        }
    }
}
