package com.wanduoduo.ui.info;

import android.content.Intent;

import com.github.lzyzsd.jsbridge.BridgeHandler;
import com.github.lzyzsd.jsbridge.CallBackFunction;
import com.wanduoduo.base.BaseWebViewActivity;

public class InfoVipActivity extends BaseWebViewActivity {

    private String url = "https://api.wanduoduo.cc/new/vip.html";

    @Override
    protected void initData() {
        tvTitle.setText("会员中心");
        setURL(url);
        super.initData();
        webview.registerHandler("gotoChargeVip", new BridgeHandler() {
            @Override
            public void handler(String data, CallBackFunction function) {
                Intent intent = new Intent(InfoVipActivity.this, InfoVipChongZhiActivity.class);
                intent.putExtra("coin",getIntent().getStringExtra("coin"));
                startActivity(intent);
            }
        });
    }
}
