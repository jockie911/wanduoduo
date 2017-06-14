package com.wanduoduo.ui.info;

import android.content.Intent;
import android.view.View;
import android.widget.RelativeLayout;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;

import butterknife.Bind;
import butterknife.OnClick;

public class InfoZFAnquanActivity extends BaseActivity {


    @Bind(R.id.rel_set_psd)
    RelativeLayout relSetPsd;
    @Bind(R.id.rel_change_psd)
    RelativeLayout relChangePsd;
    @Bind(R.id.rel_forget_psd)
    RelativeLayout relForgetPsd;
    private int TYPE_NEW = 1;
    private int TYPE_OLD = 2;
    private int type;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_zfanquan;
    }

    @Override
    protected void initData() {
        tvTitle.setText("支付安全");

        type = getIntent().getIntExtra(IConsName.TYPE, -1);
        if(type == TYPE_NEW){      //type 1 表示没有设置过密码  2 表示修改密码
            relSetPsd.setVisibility(View.VISIBLE);
        }else if(type == TYPE_OLD){
            relChangePsd.setVisibility(View.VISIBLE);
            relForgetPsd.setVisibility(View.VISIBLE);
        }
    }


    @OnClick({R.id.rel_set_psd, R.id.rel_change_psd, R.id.rel_forget_psd})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.rel_set_psd:
                Intent intent = new Intent(this, InfoSettingPsdActivity.class);
                intent.putExtra(IConsName.TYPE,type);
                startActivity(intent);
                break;
            case R.id.rel_change_psd:
                break;
            case R.id.rel_forget_psd:
                break;
        }
    }
}
