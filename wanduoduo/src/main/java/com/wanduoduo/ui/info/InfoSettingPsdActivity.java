
package com.wanduoduo.ui.info;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;

public class InfoSettingPsdActivity extends BaseActivity {

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_setting_psd;
    }

    @Override
    protected void initData() {
        tvTitle.setText("支付密码");
        int type = getIntent().getIntExtra(IConsName.TYPE, -1);
        if(type == 1){

        }else if(type == 2){

        }
    }
}
