package com.wanduoduo.base;

import android.content.pm.ActivityInfo;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;

import com.jude.swipbackhelper.SwipeBackHelper;
import com.umeng.analytics.MobclickAgent;
import com.wanduoduo.R;
import com.wanduoduo.utils.MyCrashHandler;
import com.wanduoduo.utils.ScreemUtils;

import java.util.ArrayList;
import java.util.List;

import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/7/12.
 */
public abstract class BaseActivity extends AppCompatActivity {
    protected View rootView;
    protected TextView tvTitle;
    protected boolean isHaveTitleBar =true;
    protected boolean isSwipe = true;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        setStatusBar();
        setPhoneOrientation();
        super.onCreate(savedInstanceState);
        getWindow().setSoftInputMode( WindowManager.LayoutParams.SOFT_INPUT_STATE_HIDDEN);
        rootView = LayoutInflater.from(this).inflate(getLayoutRes(), null);
        initSwipeBack();
        if(isHaveTitleBar)
            setTitleBar();
        setContentView(this.rootView);
        ButterKnife.bind(this);
        initData();

        MyCrashHandler myCrashHandler = MyCrashHandler.getInstance();
        myCrashHandler.init(getApplicationContext());
    }

    protected void initSwipeBack() {
        if(isSwipe){
            SwipeBackHelper.onCreate(this);
            SwipeBackHelper.getCurrentPage(this)
                    .setSwipeBackEnable(true)
                    .setSwipeSensitivity(0.5f)
                    .setSwipeRelateEnable(true)
                    .setSwipeEdgePercent(0.1f)
                    .setSwipeRelateOffset(500)
                    .setClosePercent(0.5f);
        }
    }

    protected void setTitleBar() {
        tvTitle = (TextView) rootView.findViewById(R.id.tv_title);
        ImageView ivLeftTitleBar = (ImageView) rootView.findViewById(R.id.iv_left_title_bar);
        ivLeftTitleBar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
    }

    /** 设置屏幕竖屏*/
    private void setPhoneOrientation() {
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
    }

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
     * int resID
     */
    protected abstract int getLayoutRes();
    protected abstract void initData();

    @Override
    protected void onPostCreate(Bundle savedInstanceState) {
        super.onPostCreate(savedInstanceState);
        if(isSwipe)
            SwipeBackHelper.onPostCreate(this);
    }

    @Override
    protected void onDestroy() {
        ScreemUtils.closeSoftKeyBoard(this,getWindow());
        super.onDestroy();
        if(isSwipe)
            SwipeBackHelper.onDestroy(this);
    }

    protected int currentSelectedPosition = 0;
    protected int beforeSelectedPosition = -1;
    /**
     * 对于有fragment切换的  hide和show
     */
    protected void dealWithFragment() {
        FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
        if (currentSelectedPosition == beforeSelectedPosition) {
            return;
        }
        Fragment baseFragment = getFragment().get(currentSelectedPosition);
        if (baseFragment.isAdded()) {
            transaction.show(baseFragment);
        } else {
            transaction.add(R.id.content_container, baseFragment);
        }
        if (beforeSelectedPosition != -1) {
            transaction.hide(getFragment().get(beforeSelectedPosition));
        }
        transaction.commit();
    }

    protected List<Fragment> mFragment = new ArrayList<>();
    protected List<Fragment> getFragment(){
        return mFragment;
    }

    public void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
    }
    public void onPause() {
        ScreemUtils.closeSoftKeyBoard(this,getWindow());
        super.onPause();
        MobclickAgent.onPause(this);
    }

    public void setWindowAphla(float aphla){
        WindowManager.LayoutParams params = getWindow().getAttributes();
        params.alpha = aphla;
        getWindow().setAttributes(params);
    }
}
