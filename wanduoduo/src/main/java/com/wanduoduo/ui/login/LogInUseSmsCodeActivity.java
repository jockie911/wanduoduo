package com.wanduoduo.ui.login;

import android.content.Intent;
import android.net.Uri;
import android.os.Message;
import android.text.InputFilter;
import android.text.InputType;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.mm.sdk.modelmsg.SendAuth;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.umeng.analytics.MobclickAgent;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.eventclass.WXLogSuccessEventClass;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.MainActivity;
import com.wanduoduo.ui.index.DetailWebViewActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ScreemUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyHandler;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import java.util.Timer;
import java.util.TimerTask;

import butterknife.Bind;
import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imlib.RongIMClient;
import io.rong.imlib.model.UserInfo;

public class LogInUseSmsCodeActivity extends BaseActivity {

    private static final int SMS_REQUEST_CODE = 1;
    private static final int LOGIN_REQUEST_CODE = 2;
    @Bind(R.id.ll_base_title_bar)
    LinearLayout llBaseTitleBar;
    @Bind(R.id.ll_login)
    LinearLayout llLogin;
    @Bind(R.id.et_phone_num)
    EditText etPhoneNum;
    @Bind(R.id.iv_sms_code_icon)
    ImageView ivSmsCodeIcon;
    @Bind(R.id.et_security_code)
    EditText etSmsCode;
    @Bind(R.id.tv_forget_psw)
    TextView tvForgetPsw;
    @Bind(R.id.tv_use_sms_code)
    TextView tvUseSmsCode;
    @Bind(R.id.tv_sms_code)
    TextView tvSmsCode;
    @Bind(R.id.iv_psd)
    ImageView ivPsd;
    private InfoBean infoBean;
    private Timer timer;
    private long exitTime;

    @Override
    protected int getLayoutRes() {
        isSwipe = false;
        return R.layout.activity_log_in;
    }

    @Override
    protected void initData() {
        if(!EventBus.getDefault().isRegistered(this))
            EventBus.getDefault().register(this);

        tvTitle.setText("登录");
        tvTitle.setTextColor(getResources().getColor(R.color.white));
        llBaseTitleBar.setBackgroundDrawable(null);
        llLogin.setBackgroundResource(R.drawable.shape_login_smscode_bg);
        tvUseSmsCode.setText("使用密码登录");
        ivSmsCodeIcon.setImageDrawable(getResources().getDrawable(R.drawable.login_open_smscode));
        tvForgetPsw.setVisibility(View.GONE);
        tvSmsCode.setVisibility(View.VISIBLE);
        ivPsd.setVisibility(View.GONE);
        etSmsCode.setHint("验证码");
        etSmsCode.setFilters(new InputFilter[]{new InputFilter.LengthFilter(6)});
        etSmsCode.setInputType(InputType.TYPE_CLASS_NUMBER);
    }

    @OnClick({R.id.tv_sms_code, R.id.tv_login,R.id.iv_delete, R.id.tv_use_sms_code,R.id.iv_left_title_bar,
            R.id.tv_wdd_xieyi,R.id.iv_weixin_login,R.id.rel_root})
    public void onClick(View view) {
        String phoneNum = etPhoneNum.getText().toString();
        switch (view.getId()) {
            case R.id.iv_left_title_bar:
                exit();
                break;
            case R.id.tv_wdd_xieyi:
                Intent intent1 = new Intent(LogInUseSmsCodeActivity.this, DetailWebViewActivity.class);
                intent1.putExtra("url","http://api.wanduoduo.cc/new/a_registration.html");
                intent1.putExtra("title","玩多多注册协议");
                startActivity(intent1);
                break;
            case R.id.tv_sms_code:
                if(TextUtils.isEmpty(etPhoneNum.getText().toString())){
                    ToastUtils.makeToast("请填写正确的手机号码");
                    return;
                }
                timerSmsCode();
                OkHttpUtils.sendPostRequest(IConstant.SMS_CODE, MapUtils.clear().addParams(IConsName.MOBILE, phoneNum).getMap(), new MyOnResultListener(SMS_REQUEST_CODE));
                break;
            case R.id.tv_login:
                if(TextUtils.isEmpty(etPhoneNum.getText().toString())){
                    ToastUtils.makeToast("请填写正确的手机号码");
                    return;
                }
                if(TextUtils.isEmpty(etSmsCode.getText().toString())){
                    ToastUtils.makeToast("请输入验证码");
                    return;
                }
                DialogUtils.loading(this,"正在登录中...");
                String smsCode = etSmsCode.getText().toString();
                OkHttpUtils.sendPostRequest(IConstant.USER_LOGIN, MapUtils.clear().addParams(IConsName.MOBILE, phoneNum).addParams(IConsName.SMS_CODE, smsCode).getMap(), new MyOnResultListener(LOGIN_REQUEST_CODE));
                break;
            case R.id.iv_delete:
                etPhoneNum.setText("");
                break;
            case R.id.tv_use_sms_code:
                startActivity(new Intent(this,LogInActivity.class));
                finish();
                break;
            case R.id.iv_weixin_login:
                SendAuth.Req req = new SendAuth.Req();
                req.scope = "snsapi_userinfo";
                req.state = "wechat_wanduoduo" ;
                IWXAPI msgApi = WXAPIFactory.createWXAPI(this, null);
                msgApi.registerApp(IConstant.WXAPP_ID);
                msgApi.sendReq(req);
                break;
            case R.id.rel_root:
                ScreemUtils.closeSoftKeyBoard(this,getWindow());
                break;
        }
    }

    private void timerSmsCode(){
        tvSmsCode.setClickable(false);
        timer = new Timer();
        timer.schedule(new MyTimerTask(System.currentTimeMillis()),0,1000);
    }

    private class MyTimerTask extends TimerTask{

        private long timell;

        public MyTimerTask(long l) {
            this.timell = l;
        }

        @Override
        public void run() {
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    long l = System.currentTimeMillis();
                    int t = (int) ((l - timell)/1000);
                    if(t >= 60){
                        tvSmsCode.setText("获取验证码");
                        tvSmsCode.setClickable(true);
                        timer.cancel();
                    }else{
                        tvSmsCode.setText("剩余" + (60 - t)+ "秒");
                    }
                }
            });
        }
    }

    MyHandler sHandler = new MyHandler(this) {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 0: //验证码登录成功
                    DialogUtils.loadingDismiss();
                    if(infoBean != null){
                        SPUtils.savaStringData(IConsName.TOKEN,infoBean.getData().getToken());
                        SPUtils.savaStringData(IConsName.USER_ID,infoBean.getData().getId());
                        SPUtils.savaStringData(IConsName.RC_TOKEN,infoBean.getData().getRctoken());
                        connectRongIM(infoBean.getData().getRctoken(),infoBean.getData().getNickname(),infoBean.getData().getAvatar());
                    }
                    if(infoBean != null && infoBean.getData() != null && !TextUtils.isEmpty(infoBean.getData().getIs_password() + "") && infoBean.getData().getIs_password() == 0){
                        Intent intent = new Intent(LogInUseSmsCodeActivity.this, LogInCompleteInfoActivity.class);
                        intent.putExtra("nickname",infoBean.getData().getNickname());
                        intent.putExtra("sex",infoBean.getData().getGender());
                        intent.putExtra("avatar",infoBean.getData().getAvatar());
                        startActivity(intent);
                        finish();
                    }else if(infoBean != null){
                        MobclickAgent.onProfileSignIn(infoBean.getData().getId());
                        startActivity(new Intent(LogInUseSmsCodeActivity.this, MainActivity.class));
                        finish();
                    }
                    break;
                case 1:
                    DialogUtils.loadingDismiss();
                    ToastUtils.makeToast((String) msg.obj);
//                    ToastUtils.makeToast("验证码错误");
                    break;
                case 100:
                    ToastUtils.makeToast("验证码发送成功");
                    break;
                case 101:
                    ToastUtils.makeToast("请输入正确的手机号码");
                    break;
            }
        }
    };


    class MyOnResultListener implements OkHttpUtils.OnResultListener {
        private int requestCode;

        public MyOnResultListener(int requestCode) {
            this.requestCode = requestCode;
        }

        @Override
        public void onSuccess(String result) {
            if (requestCode == 1) {       /*验证码成功*/
                sHandler.sendEmptyMessage(100);
            } else if (requestCode == 2) {    /*登录成功*/
                SPUtils.savaStringData(IConsName.CASH_LOGIN_INFO,result);
                infoBean = GsonTools.changeGsonToBean(result, InfoBean.class);
                sHandler.sendEmptyMessage(0);
                }
            }

        @Override
        public void onFailure(int errCode,String errMsg) {
            Message obtain = Message.obtain();
            obtain.obj = errMsg;
            if(requestCode == 1)
                obtain.what = 101;
//                sHandler.sendEmptyMessage(101);
            if(requestCode == 2)
                obtain.what = 1;
//                sHandler.sendEmptyMessage(1);
            sHandler.sendMessage(obtain);
        }
    }

    private void connectRongIM(String rctoken, final String nickname, final String avatar ) {
        if (getApplicationInfo().packageName.equals(BaseApp.getCurProcessName(getApplicationContext()))) {

            RongIM.connect(rctoken, new RongIMClient.ConnectCallback() {

                @Override
                public void onTokenIncorrect() {
                }

                @Override
                public void onSuccess(final String userid) {

                    RongIM.setUserInfoProvider(new RongIM.UserInfoProvider() {
                        @Override
                        public UserInfo getUserInfo(String s) {
                            return new UserInfo(userid,nickname, Uri.parse(avatar));
                        }
                    },true);
                }

                @Override
                public void onError(RongIMClient.ErrorCode errorCode) {
                }
            });
        }
    }

    @Override
    protected void onDestroy() {
        if(EventBus.getDefault().isRegistered(this))
            EventBus.getDefault().unregister(this);
        if(timer != null)
            timer.cancel();
        sHandler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            exit();
            return false;
        }
        return super.onKeyDown(keyCode, event);
    }

    public void exit() {
        if ((System.currentTimeMillis() - exitTime) > 2000) {
            ToastUtils.makeToast("再按一次退出程序");
            exitTime = System.currentTimeMillis();
        } else {
            finish();
            System.exit(0);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void wxLoginSuccess(WXLogSuccessEventClass eventClass){
        finish();
    }
}
