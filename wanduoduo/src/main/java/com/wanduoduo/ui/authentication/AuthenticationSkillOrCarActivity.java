package com.wanduoduo.ui.authentication;

import com.github.lzyzsd.jsbridge.BridgeHandler;
import com.github.lzyzsd.jsbridge.CallBackFunction;
import com.wanduoduo.base.BaseWebViewActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.utils.SPUtils;

public class AuthenticationSkillOrCarActivity extends BaseWebViewActivity {

    @Override
    protected void initData() {
        int type = getIntent().getIntExtra("type", -1);

        if(type == 1){
            tvTitle.setText("车辆认证");
            setURL("http://api.wanduoduo.cc/new/car.html?token="+ SPUtils.getStringData(IConsName.TOKEN,""));
        }else if(type == 2){
            tvTitle.setText("技能认证");
           setURL("http://api.wanduoduo.cc/new/skill.html?token="+ SPUtils.getStringData(IConsName.TOKEN,""));
        }
        super.initData();

        webview.registerHandler("go_back", new BridgeHandler() {
            @Override
            public void handler(String data, CallBackFunction function) {
                finish();
            }
        });
    }
}
