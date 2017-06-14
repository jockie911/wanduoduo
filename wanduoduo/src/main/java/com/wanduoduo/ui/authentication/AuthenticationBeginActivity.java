package com.wanduoduo.ui.authentication;

import com.github.lzyzsd.jsbridge.BridgeHandler;
import com.github.lzyzsd.jsbridge.CallBackFunction;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseWebViewActivity;

import mabeijianxi.camera.MediaRecorderActivity;
import mabeijianxi.camera.model.MediaRecorderConfig;

public class AuthenticationBeginActivity extends BaseWebViewActivity {

    private String url = "http://api.wanduoduo.cc/new/video.html";

    @Override
    protected void initData() {
        tvTitle.setText(getResources().getString(R.string.ren_zheng_xing_xiang_shi_pin));
        setURL(url);
        webview.registerHandler("showCamera", new BridgeHandler() {
            @Override
            public void handler(String data, CallBackFunction function) {
//                startActivity(new Intent(AuthenticationBeginActivity.this,AuthenticationRecordVideoActivity.class));
                MediaRecorderConfig config = new MediaRecorderConfig.Buidler()
                        .doH264Compress(true)
                        .smallVideoWidth(480)
                        .smallVideoHeight(480)
                        .recordTimeMax(10 * 1000)
                        .maxFrameRate(20)
                        .minFrameRate(8)
                        .captureThumbnailsTime(1)
                        .recordTimeMin((3 * 1000))
                        .build();
                MediaRecorderActivity.goSmallVideoRecorder(AuthenticationBeginActivity.this, AuthenticationPlayVideoActivity.class.getName(), config);
            }
        });
        super.initData();
    }
}
