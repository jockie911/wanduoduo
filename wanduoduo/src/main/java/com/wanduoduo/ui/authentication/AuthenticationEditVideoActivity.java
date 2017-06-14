package com.wanduoduo.ui.authentication;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.VideoView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.MainActivity;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.ActionSheetDialog;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class AuthenticationEditVideoActivity extends BaseActivity {

    @Bind(R.id.videoview)
    VideoView videoView;
    @Bind(R.id.iv_right_title_bar)
    ImageView ivRightTitleBar;
    private boolean iscanEdit;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_authentication_edit_video;
    }

    @Override
    protected void initData() {
        tvTitle.setText("查看视频");

        iscanEdit = getIntent().getBooleanExtra(IConsName.ISCANEDIT, false);
        if(iscanEdit)
            ivRightTitleBar.setImageResource(R.drawable.share);

        String path = getIntent().getStringExtra("path");
        videoView.setMediaController(new MediaController(this));
        videoView.setVideoURI(Uri.parse(path));
        videoView.start();
    }

    @OnClick({R.id.iv_right_title_bar})
    public void onClick(View view){
        if(view.getId() == R.id.iv_right_title_bar){
            new ActionSheetDialog(this).builder()
                    .addSheetItem("更改视频", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                        @Override
                        public void onClick(int which) {
                            startActivity(new Intent(AuthenticationEditVideoActivity.this,AuthenticationBeginActivity.class));
                        }
                    }).show();
        }
    }

    private void deleteVideoRequest() {
        OkHttpUtils.sendPostRequest(IConstant.USER_INFO, getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        ToastUtils.makeToast("视频删除成功");
                        startActivity(new Intent(AuthenticationEditVideoActivity.this, MainActivity.class));
                    }
                });
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    /**
     * 提示用户正在删除视频
     */
    private void alertDeleteVideo() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage("删除视频就无法查看其它用户的视频咯！你如此美好，可不能藏太深啊，确定要删除吗？");
        builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                deleteVideoRequest();
                dialogInterface.dismiss();
            }
        }).setNegativeButton("取消", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    private Map<String, String> getMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("video","");
        return map;
    }
}
