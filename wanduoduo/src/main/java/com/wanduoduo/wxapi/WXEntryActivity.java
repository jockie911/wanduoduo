package com.wanduoduo.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.modelmsg.SendAuth;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.eventclass.WXLogSuccessEventClass;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.MainActivity;
import com.wanduoduo.ui.login.LogInCompleteInfoActivity;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;

import org.greenrobot.eventbus.EventBus;

import java.util.HashMap;
import java.util.Map;

import io.rong.imkit.RongIM;
import io.rong.imlib.RongIMClient;
import io.rong.imlib.model.UserInfo;

public class WXEntryActivity extends Activity implements IWXAPIEventHandler {

    private IWXAPI msgApi;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        msgApi = WXAPIFactory.createWXAPI(this, null);
        msgApi.handleIntent(getIntent(),this);
    }

    @Override
    public void onReq(BaseReq baseReq) {

    }

    @Override
    public void onResp(BaseResp baseResp) {
        switch (baseResp.errCode){
            case BaseResp.ErrCode.ERR_OK:
                if(TextUtils.equals("wechat_wanduoduo",((SendAuth.Resp) baseResp).state)){
                    String code = ((SendAuth.Resp) baseResp).code;
                    requestLogIn(code);
                }
                break;
            case BaseResp.ErrCode.ERR_AUTH_DENIED :
                ToastUtils.makeToast("已拒绝授权");
                finish();
                break;
            case BaseResp.ErrCode.ERR_USER_CANCEL :
                ToastUtils.makeToast("已取消");
                finish();
                break;
        }
    }

    private void requestLogIn(final String code) {
        OkHttpUtils.sendGetRequest(IConstant.WE_LOGIN, getLogMap(code), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(final String result) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        InfoBean infoBean = GsonTools.changeGsonToBean(result, InfoBean.class);
                        SPUtils.savaStringData(IConsName.TOKEN,infoBean.getData().getToken());
                        SPUtils.savaStringData(IConsName.USER_ID,infoBean.getData().getId());
                        SPUtils.savaStringData(IConsName.RC_TOKEN,infoBean.getData().getRctoken());
                        connectRongIM(infoBean.getData().getRctoken(),infoBean.getData().getNickname(),infoBean.getData().getAvatar());

                        EventBus.getDefault().post(new WXLogSuccessEventClass());

                        if(infoBean.getData().isIs_new()){
                            Intent intent = new Intent(WXEntryActivity.this, LogInCompleteInfoActivity.class);
                            intent.putExtra("nickname",infoBean.getData().getNickname());
                            intent.putExtra("avatar",infoBean.getData().getAvatar());
                            intent.putExtra("type",1);
                            startActivity(intent);
                        }else{
                            Intent intent = new Intent(WXEntryActivity.this, MainActivity.class);
                            startActivity(intent);
                        }
                        finish();
                    }
                });
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String, String> getLogMap(String code) {
        Map<String,String> map = new HashMap<>();
        map.put("code",code);
        return map;
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

}
