package com.wanduoduo.ui.authentication;

import android.content.Intent;
import android.net.Uri;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.MediaController;
import android.widget.TextView;
import android.widget.VideoView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyHandler;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;
import mabeijianxi.camera.MediaRecorderActivity;

public class AuthenticationPlayVideoActivity extends BaseActivity {

    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Bind(R.id.videoview)
    VideoView videoView;
    private String path;
    private String srceenShort = "";
    private String cover_pic = "";
    private String videoUrl;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_authentication_play_video;
    }

    protected void initData() {
        tvRightTitleBar.setText("上传");
        tvRightTitleBar.setTextColor(getResources().getColor(R.color.c_mei_hong));

        path = getIntent().getStringExtra(MediaRecorderActivity.VIDEO_URI);

        if(TextUtils.isEmpty(path))
            return;
        videoView.setMediaController(new MediaController(this));
        videoView.setVideoURI(Uri.parse(path));
        videoView.start();

        srceenShort = getIntent().getStringExtra(MediaRecorderActivity.VIDEO_SCREENSHOT);
    }

    private boolean isCoverOk;
    private boolean isVideoOk;
    @OnClick({R.id.tv_right_title_bar})
    public void onClick(View v){
        DialogUtils.loading(this,"正在上传中...");

        OkHttpUtils.sendPostPic(IConstant.PIC_UPLOAD, Arrays.asList(srceenShort), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                try {
                    cover_pic = new JSONObject(result).getJSONObject("data").getJSONArray("path").getString(0);
                    isCoverOk = true;
                    myHandler.sendEmptyMessage(3);
                } catch (JSONException e) {
                    myHandler.sendEmptyMessage(0);
                }
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });

        OkHttpUtils.sendPostVideo(IConstant.VIDEO_UPLOAD, path, new OkHttpUtils.OnResultListener() {

                @Override
                public void onSuccess(String result) {
                    try {
                        JSONObject jsonObject = new JSONObject(result);
                        videoUrl = jsonObject.getJSONObject("data").getString("path");
                        isVideoOk = true;
                        myHandler.sendEmptyMessage(3);
                    } catch (JSONException e) {
                        e.printStackTrace();
                        myHandler.sendEmptyMessage(0);
                    }
                }

                @Override
                public void onFailure(int errCode,String errMsg) {
                    myHandler.sendEmptyMessage(0);
                }
            });
        }

    private Map<String, String> getMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("video_url",videoUrl);
            jsonObject.put("video_cover",cover_pic);
            map.put("video_back",jsonObject.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return map;
    }


    MyHandler myHandler = new MyHandler(this){
        @Override

        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what == 0){
                DialogUtils.loadingDismiss();
                ToastUtils.makeToast("error . . . ");
            }else if(msg.what == 1){
                DialogUtils.loadingDismiss();
                new com.wanduoduo.utils.AlertDialog(AuthenticationPlayVideoActivity.this).builder()
                        .setTitle("上传成功")
                        .setMsg("您的视频已成功提交审核，我们将在24小时之内审核，请耐心等待。")
                        .setCancelable(false)
                        .setPositiveButton("确定", new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                Intent intent = new Intent(AuthenticationPlayVideoActivity.this, AuthenticationEditVideoActivity.class);
                                intent.putExtra(IConsName.ISCANEDIT,true);
                                intent.putExtra("path",path);
                                startActivity(intent);
                            }
                        }).show();
            }else if(msg.what == 3 && isVideoOk && isCoverOk){
                realSend();
            }
        }
    };

    private void realSend(){
        OkHttpUtils.sendPostRequest(IConstant.USER_INFO, getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                myHandler.sendEmptyMessage(1);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }
}
