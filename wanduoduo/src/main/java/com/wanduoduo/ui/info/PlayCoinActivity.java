package com.wanduoduo.ui.info;

import android.content.Intent;

import com.github.lzyzsd.jsbridge.BridgeHandler;
import com.github.lzyzsd.jsbridge.CallBackFunction;
import com.wanduoduo.base.BaseWebViewActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.utils.SPUtils;

public class PlayCoinActivity extends BaseWebViewActivity {

    private String coin = "0";
    @Override
    protected void initData() {
        tvTitle.setText("我的玩币");
        coin = getIntent().getStringExtra("coin");
        setURL("https://api.wanduoduo.cc/new/coin.html?token=" + SPUtils.getStringData(IConsName.TOKEN,"") + "&coin="+ coin);

        webview.registerHandler("chargeCoin", new BridgeHandler() {
            @Override
            public void handler(String data, CallBackFunction function) {
                Intent intent = new Intent(PlayCoinActivity.this, InfoPayCoinActivity.class);
                intent.putExtra("data",data);
                startActivity(intent);
            }
        });
        super.initData();
    }
}
