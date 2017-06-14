package com.wanduoduo.ui;

import android.Manifest;
import android.annotation.TargetApi;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Build;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.UpdataBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.login.LogInActivity;
import com.wanduoduo.updatelibrary.utils.UpdateAppManager;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.widget.MyHandler;

import java.util.ArrayList;

import butterknife.Bind;

public class SplashActivity extends BaseActivity  {

    private static final int SDK_PERMISSION_REQUEST = 127;
    private String permissionInfo;
    private UpdataBean updataBean;
    private boolean isUpdate = true;
    private boolean isAniOver;
    private int count; // 计次

    @Bind(R.id.iv_splash)
    ImageView ivSplash;
    @Override
    protected int getLayoutRes() {
        isHaveTitleBar = false;
        isSwipe = false;
        return R.layout.activity_splash;
    }

    @Override
    protected void initData() {
        OkHttpUtils.sendGetRequest(IConstant.STARTUP, MapUtils.clear().addParams("app","andriod").addParams(IConsName.APP_VERSION, getVersion()).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                JLog.e(result);
//                mHandler.sendEmptyMessage(0);
                updataBean = GsonTools.changeGsonToBean(result, UpdataBean.class);
                mHandler.sendEmptyMessage(1);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {
                JLog.e(errMsg + " - - " + errCode);
            }
        });

        AlphaAnimation aa = new AlphaAnimation(0.5f,1.0f);
        aa.setDuration(1000);
        aa.setRepeatMode(Animation.REVERSE);
        aa.setRepeatCount(2);
        ivSplash.setAnimation(aa);

        aa.setAnimationListener(new Animation.AnimationListener() {
            @Override
            public void onAnimationStart(Animation animation) {

            }

            @Override
            public void onAnimationEnd(Animation animation) {
                isAniOver = true;
                mHandler.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        count ++ ;
                        setFinish();
                    }
                },500);
            }

            @Override
            public void onAnimationRepeat(Animation animation) {

            }
        });
    }

    /**
     * 动画结束 不需要更新
     */
    private void setFinish() {
        if(count > 3)
            isUpdate = true;
        if(isAniOver && !isUpdate){
            if(TextUtils.isEmpty(SPUtils.getStringData(IConsName.TOKEN,""))){
                startActivity(new Intent(SplashActivity.this,LogInActivity.class));
            }else{
                startActivity(new Intent(SplashActivity.this,MainActivity.class));
            }
            finish();
        }else{
            JLog.e(" wei jia zai wan cheng ");
        }
    }

    MyHandler mHandler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == 0){
                getPersimmions();
            }else if(msg.what == 1){
                if(0 == updataBean.getData().getIs_update()){
                    isUpdate = false;
                    setFinish();
                }else{
                    getPersimmions();
                    showDialog();
                }
            }
        }
    };

    private void showDialog() {
        com.wanduoduo.utils.AlertDialog builder = new com.wanduoduo.utils.AlertDialog(this).builder();
        builder.setTitle("玩多多版本更新")
                .setMsg(updataBean.getData().getInfo())
                .setCancelable(false)
                .setPositiveButton("立即更新", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        UpdateAppManager.downloadApk(SplashActivity.this,updataBean.getData().getUrl(),"版本升级","玩多多");
                    }
                }).setNegativeButton("退出", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        finish();
                    }
                }).show();
    }

    /**
     * statusbar状态栏
     */
    @Override
    protected void setStatusBar() {
        if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            Window window = getWindow();
            window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
            window.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                    | View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.setStatusBarColor(Color.TRANSPARENT);
        }
    }

    /**
     * 获取版本号
     * @return 当前应用的版本号
     */
    public String getVersion() {
        try {
            PackageManager manager = this.getPackageManager();
            PackageInfo info = manager.getPackageInfo(this.getPackageName(), 0);
            String version = info.versionName;
            return version;
        } catch (Exception e) {
            e.printStackTrace();
            return "1.0.0";
        }
    }

    @TargetApi(23)
    private void getPersimmions() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            ArrayList<String> permissions = new ArrayList<String>();
            if (addPermission(permissions, Manifest.permission.WRITE_EXTERNAL_STORAGE)) {
                permissionInfo += "Manifest.permission.WRITE_EXTERNAL_STORAGE Deny \n";
            }
            if (permissions.size() > 0) {
                requestPermissions(permissions.toArray(new String[permissions.size()]), SDK_PERMISSION_REQUEST);
            }
        }
    }

    @TargetApi(23)
    private boolean addPermission(ArrayList<String> permissionsList, String permission) {
        if (checkSelfPermission(permission) != PackageManager.PERMISSION_GRANTED) { // 如果应用没有获得对应权限,则添加到列表中,准备批量申请
            if (shouldShowRequestPermissionRationale(permission)){
                return true;
            }else{
                permissionsList.add(permission);
                return false;
            }

        }else{
            return true;
        }
    }

    @TargetApi(23)
    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        // TODO Auto-generated method stub
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @Override
    protected void onDestroy() {
        mHandler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }
}
