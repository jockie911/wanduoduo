package com.wanduoduo.ui.login;

import android.content.Intent;
import android.os.Message;
import android.text.Editable;
import android.text.InputType;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.Base64Utils;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.RSAUtils;
import com.wanduoduo.utils.ScreemUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyHandler;

import java.io.InputStream;
import java.security.PublicKey;
import java.util.Timer;
import java.util.TimerTask;

import butterknife.Bind;
import butterknife.OnClick;

public class LogInFindPsdActivity extends BaseActivity {

    private static final int SMS_REQUEST_CODE = 100;
    private static final int LOGIN_REQUEST_CODE = 101;
    @Bind(R.id.ll_base_title_bar)
    LinearLayout llBaseTitleBar;
    @Bind(R.id.iv_icon)
    ImageView ivIcon;
    @Bind(R.id.et_phone_num)
    EditText etPhoneNum;
    @Bind(R.id.et_get_sms_code)
    EditText etGetSmsCode;
    @Bind(R.id.et_security_code)
    EditText etSecurityCode;
    @Bind(R.id.tv_login)
    TextView tvLogin;
    @Bind(R.id.tv_forget_psw)
    TextView tvForgetPsw;
    @Bind(R.id.tv_use_sms_code)
    TextView tvUseSmsCode;
    @Bind(R.id.ll_login)
    LinearLayout llLogin;
    @Bind(R.id.ll_get_sms_code)
    LinearLayout llGetSmsCode;
    @Bind(R.id.iv_psd)
    ImageView ivPsd;
    @Bind(R.id.tv_get_sms_code)
    TextView tvGetSmsCode;
    @Bind(R.id.ll_bottom_other_login)
    LinearLayout llBottomOtherLogin;
    private int psdCount;
    private int type;
    private Timer timer;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_log_in;
    }

    @Override
    protected void initData() {
        llGetSmsCode.setVisibility(View.VISIBLE);
        llLogin.setBackgroundResource(R.drawable.shape_login_smscode_bg);
        llBaseTitleBar.setBackgroundDrawable(null);
        tvTitle.setTextColor(getResources().getColor(R.color.white));
        ivIcon.setVisibility(View.GONE);
        tvForgetPsw.setVisibility(View.INVISIBLE);
        tvUseSmsCode.setVisibility(View.INVISIBLE);
        llBottomOtherLogin.setVisibility(View.GONE);
        type = getIntent().getIntExtra("type", 0);
        if(type == 1){
            tvTitle.setText("找回密码");
            tvLogin.setText("确定重置");
        }else{
            tvTitle.setText("修改密码");
            tvLogin.setText("确认修改");

        }

        setEtListener();
    }

    private void setEtListener() {
        etSecurityCode.addTextChangedListener(new TextWatcher() {
            String tmp = "";
            String digits = "0123456789abcdefghigklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ?/@,._'[]{}\\|!#$%^()-+=";
            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
            }
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                tmp = s.toString();
            }
            @Override
            public void afterTextChanged(Editable s) {
                String str = s.toString();
                if(str.equals(tmp)){
                    return;
                }
                StringBuffer sb = new StringBuffer();
                for(int i = 0; i < str.length(); i++){
                    if(digits.indexOf(str.charAt(i)) >= 0){
                        sb.append(str.charAt(i));
                    }
                }
                tmp = sb.toString();
                etSecurityCode.setText(tmp);
                etSecurityCode.setSelection(tmp.length());
            }
        });
    }


    @OnClick({R.id.iv_delete, R.id.tv_get_sms_code, R.id.iv_psd, R.id.tv_login,R.id.rel_root})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_delete:
                etPhoneNum.setText("");
                break;
            case R.id.tv_get_sms_code:
                String phoneNum = etPhoneNum.getText().toString();
                if(TextUtils.isEmpty(phoneNum)){
                    ToastUtils.makeToast("请输入手机号码");
                    return;
                }
                timerSmsCode();
                OkHttpUtils.sendPostRequest(IConstant.SMS_CODE, MapUtils.clear().addParams(IConsName.MOBILE, phoneNum).getMap(), new MyOnResultListener(SMS_REQUEST_CODE));
                break;
            case R.id.iv_psd:
                if((++ psdCount)%2 == 0){
                    ivPsd.setImageDrawable(getResources().getDrawable(R.drawable.login_close));
                    etSecurityCode.setInputType(InputType.TYPE_CLASS_TEXT|InputType.TYPE_TEXT_VARIATION_PASSWORD);
                    if(!TextUtils.isEmpty(etSecurityCode.getText().toString()))
                        etSecurityCode.setSelection(etSecurityCode.length());
                }else{
                    ivPsd.setImageDrawable(getResources().getDrawable(R.drawable.login_open_abc));
                    etSecurityCode.setInputType(InputType.TYPE_CLASS_TEXT|InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD);
                    if(!TextUtils.isEmpty(etSecurityCode.getText().toString()))
                        etSecurityCode.setSelection(etSecurityCode.length());
                }
                break;
            case R.id.tv_login:
                if(isReady()){
                    InputStream inPublic = null;
                    try {
                        String securityCode = etSecurityCode.getText().toString();
                        inPublic = getResources().getAssets().open("rsa_public_key.pem");
                        PublicKey publicKey = RSAUtils.loadPublicKey(inPublic);
                        byte[] encryptByte = RSAUtils.encryptData(securityCode.getBytes(), publicKey);
                        String afterencrypt = Base64Utils.encode(encryptByte);
                        OkHttpUtils.sendPostRequest(IConstant.FIND_PASS,MapUtils.clear().addParams("mobile",etPhoneNum.getText().toString()).
                                addParams("sms_code",etGetSmsCode.getText().toString()).addParams("password",afterencrypt).getMap()
                                ,new MyOnResultListener(LOGIN_REQUEST_CODE));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                break;
            case R.id.rel_root:
                ScreemUtils.closeSoftKeyBoard(this,getWindow());
                break;
        }
    }

    private void timerSmsCode(){
        tvGetSmsCode.setClickable(false);
        timer = new Timer();
        timer.schedule(new MyTimerTask(System.currentTimeMillis()),0,1000);
    }

    private class MyTimerTask extends TimerTask {

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
                        tvGetSmsCode.setText("获取验证码");
                        tvGetSmsCode.setClickable(true);
                        timer.cancel();
                    }else{
                        tvGetSmsCode.setText("剩余" + (60 - t)+ "秒");
                    }
                }
            });
        }
    }


    private boolean isReady() {
        if(TextUtils.isEmpty(etPhoneNum.getText().toString())){
            ToastUtils.makeToast("请输入手机号码");
            return false;
        }
        if(TextUtils.isEmpty(etGetSmsCode.getText().toString())){
            ToastUtils.makeToast("请输入验证码");
            return false;
        }
        if(TextUtils.isEmpty(etSecurityCode.getText().toString())){
            ToastUtils.makeToast("请输入验证码");
            return false;
        }
        return true;
    }


    MyHandler sHandler = new MyHandler(this) {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 0: //验证码登录成功
                    ToastUtils.makeToast("修改成功");
                    if(type == 0){
                        startActivity(new Intent(LogInFindPsdActivity.this,LogInActivity.class));
                    }
                    finish();
                    break;
                case 1:
                    ToastUtils.makeToast("验证码错误");
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

    private class MyOnResultListener implements OkHttpUtils.OnResultListener {
        private int requestCode;

        public MyOnResultListener(int requestCode) {
            this.requestCode = requestCode;
        }

        @Override
        public void onSuccess(String result) {
            if(requestCode == SMS_REQUEST_CODE){
                sHandler.sendEmptyMessage(100);
            }else if(requestCode == LOGIN_REQUEST_CODE){
                sHandler.sendEmptyMessage(0);
            }
        }

        @Override
        public void onFailure(int errCode,String errMsg) {
            if(requestCode == SMS_REQUEST_CODE){
                sHandler.sendEmptyMessage(101);
            }else if(requestCode == LOGIN_REQUEST_CODE){
                sHandler.sendEmptyMessage(1);
            }
        }
    }

    @Override
    protected void onDestroy() {
        if(timer != null)
            timer.cancel();
        super.onDestroy();
    }
}
