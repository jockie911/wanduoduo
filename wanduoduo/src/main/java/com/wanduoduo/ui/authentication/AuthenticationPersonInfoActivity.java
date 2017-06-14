package com.wanduoduo.ui.authentication;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.SettingRealNameActivity;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.UserInfoUtils;

import butterknife.Bind;
import butterknife.OnClick;

public class AuthenticationPersonInfoActivity extends BaseActivity {

    @Bind(R.id.tv_video)
    TextView tvVideo;
    @Bind(R.id.tv_idcard)
    TextView tvIdcard;
    private boolean isBecomeSuperOk;    //避免重复提交

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_authentication_person_info;
    }

    @Override
    protected void initData() {
        tvTitle.setText("个人信息认证");

        setInfo();
    }

    private void setInfo() {
        UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
            @Override
            public void onSuccess(InfoBean infoBean) {
                if(TextUtils.isEmpty(infoBean.getData().getVideo_back())){
                    if(!TextUtils.isEmpty(infoBean.getData().getVideo())){
                        tvVideo.setText("已通过");
                        tvVideo.setTextColor(getResources().getColor(R.color.c_129_143_255));
                    }else{
                        tvVideo.setText("未认证");
                        tvVideo.setTextColor(getResources().getColor(R.color.c_127_130_134));
                    }
                }else {
                    tvVideo.setText("*审核中");
                    tvVideo.setTextColor(getResources().getColor(R.color.c_mei_hong));
                }

                if(TextUtils.equals("0",infoBean.getData().getIdcard_ok())){
                    if(TextUtils.isEmpty(infoBean.getData().getIdcard_pic())){
                        tvIdcard.setText("未认证");
                        tvIdcard.setTextColor(getResources().getColor(R.color.c_127_130_134));
                    }else{
                        tvIdcard.setText("*审核中");
                        tvIdcard.setTextColor(getResources().getColor(R.color.c_mei_hong));
                    }
                }else{
                    tvIdcard.setText("已验证");
                    tvIdcard.setTextColor(getResources().getColor(R.color.c_129_143_255));
                }
            }
        });
    }

    @OnClick({R.id.iv_video_auth, R.id.iv_idcard_auth,R.id.rel_submit})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_video_auth:
                startActivityForResult(new Intent(this, AuthenticationBeginActivity.class),1);
                break;
            case R.id.iv_idcard_auth:
                startActivityForResult(new Intent(this, SettingRealNameActivity.class),1);
                break;
            case R.id.rel_submit:
                if(isBecomeSuperOk) {
                    ToastUtils.makeToast("您已经提交成功，后台正在审核");
                    return;
                }
                UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
                    @Override
                    public void onSuccess(InfoBean infoBean) {
                        InfoBean.DataBean data = infoBean.getData();
                        if((!TextUtils.isEmpty(data.getVideo()) || !TextUtils.isEmpty(data.getVideo_back()))
                                &&(data.getIdcard_ok().equals("1") || !TextUtils.isEmpty(data.getIdcard_pic()))){
                            becomeSuper();
                        }else{
                            ToastUtils.makeToast("请完善信息");
                        }
                    }
                });
                break;
        }
    }

    private void becomeSuper() {
        OkHttpUtils.sendPostRequest(IConstant.PRO_APLLY, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).getMap(),
                new OkHttpUtils.OnResultListener() {
                    @Override
                    public void onSuccess(String result) {
                        runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                isBecomeSuperOk = true;
                                ToastUtils.makeToast("后台正在审核中");
                            }
                        });
                    }

                    @Override
                    public void onFailure(int errCode, final String errMsg) {

                    }
                });
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        setInfo();
        super.onActivityResult(requestCode, resultCode, data);
    }
}
