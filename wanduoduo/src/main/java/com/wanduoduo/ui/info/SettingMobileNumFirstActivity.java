package com.wanduoduo.ui.info;

import android.content.Intent;
import android.graphics.Color;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.login.LogInFindPsdActivity;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyHandler;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class SettingMobileNumFirstActivity extends BaseActivity implements TextWatcher {

    @Bind(R.id.ed_tv_psd)
    EditText edTvPsd;
    @Bind(R.id.tv_make_sure_tixian)
    TextView tvMakeSureTixian;
    @Bind(R.id.et_sms_code)
    EditText etSmsCode;
    @Bind(R.id.tv_forget_psw)
    TextView tvForgetPsw;
    /**
     * type 默认为0，表示绑定手机号码     1表示已绑定修改需先验证
     */
    private int type;

    private static final int SMS_REQUEST_CODE = 1;
    private static final int REQUEST_CODE_JIE_BAND = 2;
    private static final int REQUEST_CODE_BIND = 3;
    @Override
    protected int getLayoutRes() {
        return R.layout.activity_setting_mobile_num;
    }

    @Override
    protected void initData() {
        type = getIntent().getIntExtra("type", 0);

        if(type == 1){
            tvTitle.setText("验证手机号码");
            String phone = getIntent().getStringExtra("phone");
            if(!TextUtils.isEmpty(phone)){
                edTvPsd.setText(phone.substring(0,3) + "****" + phone.substring(phone.length()-4,phone.length()));
                edTvPsd.setFocusableInTouchMode(false);
            }
        }else{
            tvTitle.setText("绑定手机号码");
            tvMakeSureTixian.setText("确定");
            tvForgetPsw.setVisibility(View.INVISIBLE);
        }
        edTvPsd.addTextChangedListener(this);
        etSmsCode.addTextChangedListener(this);
    }

    @OnClick({R.id.tv_make_sure_tixian, R.id.tv_forget_psw,R.id.tv_send_sms_code})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tv_make_sure_tixian:  //
                if(type == 1){
                    OkHttpUtils.sendGetRequest(IConstant.BIND_TEL,getMap(),new MyOnResultListener(REQUEST_CODE_JIE_BAND));
                }else{
                    OkHttpUtils.sendPostRequest(IConstant.BIND_TEL,getMap(),new MyOnResultListener(REQUEST_CODE_BIND));
                }
                break;
            case R.id.tv_forget_psw:
                Intent intent = new Intent(this, LogInFindPsdActivity.class);
                intent.putExtra("type",1);
                startActivity(intent);
                break;
            case R.id.tv_send_sms_code:
                if(TextUtils.isEmpty(edTvPsd.getText().toString())){
                    ToastUtils.makeToast("手机号码不能为空");
                    return;
                }
                OkHttpUtils.sendPostRequest(IConstant.SMS_CODE, MapUtils.clear().addParams(IConsName.MOBILE, getPhoneNum()).getMap(), new MyOnResultListener(SMS_REQUEST_CODE));
                break;
        }
    }

    private String getPhoneNum() {
        String phoneNum = "";
        if(type == 1){
            phoneNum =  getIntent().getStringExtra("phone");
        }else{
            phoneNum = edTvPsd.getText().toString();
        }
        return phoneNum;
    }

    private Map<String, String> getMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        if(type == 1){
            map.put("sms_code_old",etSmsCode.getText().toString());
        }else{
            String oldsmscode = getIntent().getStringExtra("oldsmscode");
            if(!TextUtils.isEmpty(oldsmscode)){
                map.put("sms_code_old",oldsmscode);
            }
            map.put("mobile_new",getPhoneNum());
            map.put("sms_code_new",etSmsCode.getText().toString());
        }
        return map;
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
        if(!TextUtils.isEmpty(edTvPsd.getText().toString()) && !TextUtils.isEmpty(etSmsCode.getText().toString()) ){
            tvMakeSureTixian.setClickable(true);
            tvMakeSureTixian.setTextColor(Color.WHITE);
            tvMakeSureTixian.setBackgroundResource(R.drawable.shape_moblie_tv_bg_blue);
        }else{
            tvMakeSureTixian.setClickable(false);
            tvMakeSureTixian.setTextColor(Color.parseColor("#394471"));
            tvMakeSureTixian.setBackgroundResource(R.drawable.shape_manage_tixian_bg_normal);
        }
    }

    @Override
    public void afterTextChanged(Editable editable) {

    }

    class MyOnResultListener implements OkHttpUtils.OnResultListener {
        private int requestCode;

        public MyOnResultListener(int requestCode) {
            this.requestCode = requestCode;
        }

        @Override
        public void onSuccess(String result) {
            if (requestCode == 1) {       /*验证码成功*/
                sHandler.sendEmptyMessage(100);
            } else if (requestCode == REQUEST_CODE_JIE_BAND) {    /*登录成功*/
                sHandler.sendEmptyMessage(0);
            }else if(requestCode == REQUEST_CODE_BIND){
                sHandler.sendEmptyMessage(3);
            }
        }

        @Override
        public void onFailure(int errCode, String errMsg) {
            if (requestCode == 1) {       /*验证码成功*/
                sHandler.sendEmptyMessage(101);
            } else if (requestCode == REQUEST_CODE_JIE_BAND) {    /*登录成功*/
                sHandler.sendEmptyMessage(1);
            }else if(requestCode == REQUEST_CODE_BIND){
                Message obtain = Message.obtain();
                obtain.what = 4;
                obtain.obj = errMsg;
                sHandler.sendMessage(obtain);
            }
        }
    }

    MyHandler sHandler = new MyHandler(this) {
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 0: //验证码登录成功
                    Intent intent = new Intent(SettingMobileNumFirstActivity.this,SettingMobileNumFirstActivity.class);
                    intent.putExtra("oldsmscode",etSmsCode.getText().toString());
                    startActivity(intent);
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
                case 3:
                    ToastUtils.makeToast("手机号码绑定成功");
                    finish();
                    break;
                case 4:
                    String errMsg = (String)msg.obj;
                    ToastUtils.makeToast(errMsg);
                    break;
            }
        }
    };
}
