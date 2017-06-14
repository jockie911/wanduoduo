package com.wanduoduo.ui.login;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Message;
import android.text.Editable;
import android.text.InputType;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

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
import com.wanduoduo.utils.Base64Utils;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.RSAUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ScreemUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyHandler;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.InputStream;
import java.security.PublicKey;

import butterknife.Bind;
import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imlib.RongIMClient;
import io.rong.imlib.model.UserInfo;

public class LogInActivity extends BaseActivity {

    private static final int SECRET_REQUEST_CODE = 1;
    @Bind(R.id.et_phone_num)
    EditText etPhoneNum;
    @Bind(R.id.et_security_code)
    EditText etSecurityCode;
    @Bind(R.id.ll_base_title_bar)
    LinearLayout llBaseTitleBar;
    @Bind(R.id.iv_psd)
    ImageView ivPsd;
    private int psdCount;
    private InfoBean infoBean;
    private String avatar = "";
    private String nicknam = "";
    private long exitTime;
    //    @Bind(R.id.marquee_imageview)
//    MarqueeImageView marqueeImageView;

    @Override
    protected int getLayoutRes() {
        isSwipe = false;
        return R.layout.activity_log_in;
    }

    @Override
    protected void initData() {
        tvTitle.setText("登录");
        tvTitle.setTextColor(getResources().getColor(R.color.white));
        llBaseTitleBar.setBackgroundDrawable(null);

//        Bitmap bitmap = BitmapFactory.decodeResource(getResources(), R.drawable.aaaa);
//        marqueeImageView.Start(bitmap,getWindow());
        setEtListener();

        if(!EventBus.getDefault().isRegistered(this));
            EventBus.getDefault().register(this);
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

    @OnClick({R.id.tv_login, R.id.tv_forget_psw, R.id.tv_use_sms_code,R.id.iv_delete,R.id.iv_psd,R.id.iv_left_title_bar,
            R.id.tv_wdd_xieyi,R.id.iv_weixin_login,R.id.rel_root})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_left_title_bar:
                exit();
                break;
            case R.id.tv_wdd_xieyi:
                Intent intent1 = new Intent(LogInActivity.this, DetailWebViewActivity.class);
                intent1.putExtra("url","http://api.wanduoduo.cc/new/a_registration.html");
                intent1.putExtra("title","玩多多注册协议");
                startActivity(intent1);
                break;
            case R.id.iv_delete:
                etPhoneNum.setText("");
                break;
            case R.id.iv_psd:
                if((++ psdCount)%2 == 0){
                    ivPsd.setImageDrawable(getResources().getDrawable(R.drawable.login_close));
                    etSecurityCode.setInputType(InputType.TYPE_CLASS_TEXT|InputType.TYPE_TEXT_VARIATION_PASSWORD);
                    if(!TextUtils.isEmpty(etSecurityCode.getText().toString()))
                        etSecurityCode.setSelection(etSecurityCode.length());
                }else{
                    ivPsd.setImageDrawable(getResources().getDrawable(R.drawable.login_open_abc));
                    etSecurityCode.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD);
                    if(!TextUtils.isEmpty(etSecurityCode.getText().toString()))
                        etSecurityCode.setSelection(etSecurityCode.length());
                }
                break;
            case R.id.tv_login:     /*使用密码登录*/
                String phoneNum = etPhoneNum.getText().toString();
                String securityCode = etSecurityCode.getText().toString();
                InputStream inPublic = null;

                DialogUtils.loading(this,"正在登录中...");
                try {
                    inPublic = getResources().getAssets().open("rsa_public_key.pem");
                    PublicKey publicKey = RSAUtils.loadPublicKey(inPublic);
                    byte[] encryptByte = RSAUtils.encryptData(securityCode.getBytes(), publicKey);
                    String afterencrypt = Base64Utils.encode(encryptByte);
                    if (judgePhoneSecurityCode(phoneNum, securityCode)) return;
                OkHttpUtils.sendPostRequest(IConstant.USER_LOGINPASS, MapUtils.clear().addParams(IConsName.MOBILE, phoneNum).
                        addParams(IConsName.PASSWORD, afterencrypt).getMap(), new MyResultListener(SECRET_REQUEST_CODE));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                break;
            case R.id.tv_forget_psw:
                Intent intent = new Intent(LogInActivity.this,LogInFindPsdActivity.class);
                intent.putExtra(IConsName.TYPE,1);
                startActivity(intent);
                break;
            case R.id.tv_use_sms_code:
                jumpActivity(LogInUseSmsCodeActivity.class);
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

    /**
     * 判断手机号码和验证码
     */
    private boolean judgePhoneSecurityCode(String phoneNum, String securityCode) {
        if (TextUtils.isEmpty(phoneNum)) {
            DialogUtils.loadingDismiss();
            return true;
        }
        if (TextUtils.isEmpty(securityCode)) {
            DialogUtils.loadingDismiss();
            return true;
        }
        return false;
    }

    private void jumpActivity(Class activityClass) {
        startActivity(new Intent(LogInActivity.this, activityClass));
        finish();
    }

    MyHandler myHandler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what){
                case 0:
                    //TODO  跳转
                    break;
                case 1:
                    String errMsg = (String)msg.obj;
                    DialogUtils.loadingDismiss();
                    ToastUtils.makeToast(errMsg);
                    break;
            }
        }
    };


    /**
     * 请求接口监听回调
     */
    class MyResultListener implements OkHttpUtils.OnResultListener {

        private int post_code;

        public MyResultListener(int post_code) {
            this.post_code = post_code;
        }

        @Override
        public void onSuccess(String result) {
            if (post_code == SECRET_REQUEST_CODE) {         //密码登录成功
                try {
                    SPUtils.savaStringData(IConsName.CASH_LOGIN_INFO,result);
                    JSONObject data = new JSONObject(result).getJSONObject("data");
                    avatar = data.getString("avatar");
                    nicknam = data.getString("nickname");
                    SPUtils.savaStringData(IConsName.RC_TOKEN,data.getString("rctoken"));
                    connectRongIM(data.getString("rctoken"));
                    SPUtils.savaStringData(IConsName.TOKEN,data.getString("token"));
                    SPUtils.savaStringData(IConsName.USER_ID,data.getString("id"));
                    MobclickAgent.onProfileSignIn(data.getString("id"));
                    startActivity(new Intent(LogInActivity.this, MainActivity.class));
//                        myHandler.sendEmptyMessage(0);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }

        @Override
        public void onFailure(int errCode,String errMsg) {
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.obj = errMsg;
            myHandler.sendMessage(obtain);
        }
    }

    private void connectRongIM(String rctoken) {
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
                            return new UserInfo(userid,nicknam, Uri.parse(avatar));
                        }
                    },true);
                    startActivity(new Intent(LogInActivity.this, MainActivity.class));
                    finish();
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
        if(myHandler != null)
            myHandler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void wxLoginSuccess(WXLogSuccessEventClass eventClass){
        finish();
    }
}
