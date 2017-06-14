package com.wanduoduo.ui.index;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Message;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.Window;
import android.view.WindowManager;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyHandler;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import fm.jiecao.jcvideoplayer_lib.JCVideoPlayer;
import fm.jiecao.jcvideoplayer_lib.JCVideoPlayerStandard;


public class VideoPlayActivity extends BaseActivity {

    JCVideoPlayerStandard videocontroller;
    JCVideoPlayer.JCAutoFullscreenListener sensorEventListener;
    SensorManager sensorManager;
    private String videoUrl;

    @Override
    protected int getLayoutRes() {
        isHaveTitleBar = false;
        sensorManager = (SensorManager) getSystemService(SENSOR_SERVICE);
        sensorEventListener = new JCVideoPlayer.JCAutoFullscreenListener();
        return R.layout.activity_video_play;
    }

    @Override
    protected void initData() {
        videocontroller = (JCVideoPlayerStandard) findViewById(R.id.videocontroller);
        videoUrl = getIntent().getStringExtra("video");
        videocontroller.setUp(videoUrl, JCVideoPlayerStandard.SCREEN_LAYOUT_LIST,"");

//        judgeVideoPlayCount();
    }

    /**
     * 判断视频播放的次数
     */
    private void judgeVideoPlayCount() {
        OkHttpUtils.sendPostRequest(IConstant.USER_OPERATION, getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                try {
                    JSONObject data = new JSONObject(result).getJSONObject("data");
                    if(data != null){
                        String ok = data.getString("ok");
                        if(TextUtils.equals("1",ok)){
                            myHandler.sendEmptyMessage(0);
                        }else{
                            myHandler.sendEmptyMessage(1);
                        }
                    }
                } catch (JSONException e) {
                    myHandler.sendEmptyMessage(0);
                    e.printStackTrace();
                }
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    MyHandler myHandler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == 0){
                videocontroller.setUp(videoUrl, JCVideoPlayerStandard.SCREEN_LAYOUT_LIST,"");
            }else if(msg.what == 1){
                ToastUtils.makeToast("您的观看视频已经达到上限");
            }
        }
    };

    private Map<String,String> getMap(){
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TYPE,"video_view");
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        return map;
    }

    @Override
    public void onResume() {
        super.onResume();
        Sensor accelerometerSensor = sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
        sensorManager.registerListener(sensorEventListener, accelerometerSensor, SensorManager.SENSOR_DELAY_NORMAL);
    }

    public void onBackPressed() {
        if (JCVideoPlayer.backPress()) {
            return;
        }
        super.onBackPressed();
    }

    @Override
    public void onPause() {
        super.onPause();
        sensorManager.unregisterListener(sensorEventListener);
        JCVideoPlayer.releaseAllVideos();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case android.R.id.home:
                finish();
                break;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void setStatusBar() {
        Window window = getWindow();
        window.addFlags((WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON));
        window.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
    }
}
