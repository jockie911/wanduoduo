package com.wanduoduo.ui.info;

import android.content.Intent;
import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.fragment.info.AlreadyBuyServiceFragment;
import com.wanduoduo.fragment.info.InfoAccountMoneyFragment;
import com.wanduoduo.fragment.info.InfoLikeFragment;
import com.wanduoduo.fragment.info.InfoWatchFragment;
import com.wanduoduo.istatic.IConsName;

import butterknife.Bind;
import butterknife.OnClick;

public class InfoDifferentActivity extends BaseActivity {


    @Bind(R.id.ll_base_title_bar)
    LinearLayout llBaseTitleBar;
    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    private int type;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_different;
    }

    @Override
    protected void initData() {
        type = getIntent().getIntExtra("type", -1);
        initTitle();
    }

    private void initReplaceContent(Fragment fm) {
        getSupportFragmentManager().beginTransaction().replace(R.id.content_container, fm).commit();
    }

    private void initTitle() {
        if (type == IConsName.INFO_ALREADY_BUY_SERVICE) {
            tvTitle.setText("我购买的技能");
            initReplaceContent(new AlreadyBuyServiceFragment());
        } else if (type == IConsName.INFO_MY_LIKE) {
            llBaseTitleBar.setVisibility(View.GONE);
            initReplaceContent(new InfoLikeFragment());
        }else if(type == IConsName.INFO_ACOUNT_MONEY){
            tvTitle.setText("我的余额");
            tvRightTitleBar.setText("明细");
            initReplaceContent(new InfoAccountMoneyFragment());
        }else if(type == IConsName.INFO_WATCH){
            llBaseTitleBar.setVisibility(View.GONE);
            initReplaceContent(new InfoWatchFragment());
        }
    }

    @OnClick(R.id.tv_right_title_bar)
    public void onClick(View view){
        if(view.getId() == R.id.tv_right_title_bar && type == IConsName.INFO_ACOUNT_MONEY){
            // 查看明细
            startActivity(new Intent(this,InfoUserBillDetailActivity.class));
        }
    }
}
