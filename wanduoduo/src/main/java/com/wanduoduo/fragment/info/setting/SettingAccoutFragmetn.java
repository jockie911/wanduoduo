package com.wanduoduo.fragment.info.setting;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.SettingMobileNumFirstActivity;
import com.wanduoduo.ui.info.SettingRealNameActivity;
import com.wanduoduo.ui.login.LogInFindPsdActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.UserInfoUtils;
import com.wanduoduo.widget.MyHandler;

import butterknife.Bind;
import butterknife.ButterKnife;
import butterknife.OnClick;

/**
 * Created by jockie on 2016/8/26.
 */
public class SettingAccoutFragmetn extends BaseFragment {
    @Bind(R.id.tv_phone_num)
    TextView tvPhoneNum;
    @Bind(R.id.iv_already_name)
    ImageView ivAlreadyName;
    @Bind(R.id.rel_real_name)
    RelativeLayout relRealName;
    @Bind(R.id.rel_edit_phone)
    RelativeLayout relEditPhone;
    private InfoBean infoBean;

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_setting_account, null);
    }

    @Override
    protected void initData() {
        UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
            @Override
            public void onSuccess(InfoBean infoBean) {
                SettingAccoutFragmetn.this.infoBean = infoBean;
                myHandler.sendEmptyMessage(0);
            }
        });

        /*OkHttpUtils.sendGetRequest(IConstant.USER_INFO, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                infoBean = GsonTools.changeGsonToBean(result, InfoBean.class);
                myHandler.sendEmptyMessage(0);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });*/
    }

    MyHandler myHandler = new MyHandler(getActivity()){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == 0 && infoBean != null ){
                relEditPhone.setClickable(true);
                relRealName.setClickable(true);

                String mobile = infoBean.getData().getUsername();
                if(!TextUtils.isEmpty(mobile)){
                    tvPhoneNum.setText(mobile.substring(0,3) + "****" + mobile.substring(mobile.length() - 4,mobile.length()));
                }

                if("0".equals(infoBean.getData().getIdcard_ok())){
                }else{
                    ivAlreadyName.setVisibility(View.VISIBLE);
                }
            }
        }
    };

    @OnClick({R.id.rel_edit_phone, R.id.rel_chane_psd, R.id.rel_real_name})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.rel_edit_phone:
                if(infoBean != null){
                    Intent intent = new Intent(mContext, SettingMobileNumFirstActivity.class);
                    if(TextUtils.isEmpty(infoBean.getData().getUsername())){      //绑定手机号码
                        startActivity(intent);
                    }else{      //解除绑定
                        intent.putExtra("phone",infoBean.getData().getUsername());
                        intent.putExtra(IConsName.TYPE,1);
                        startActivity(intent);
                    }
                }
                break;
            case R.id.rel_chane_psd:
                Intent intentPsd = new Intent(mContext, LogInFindPsdActivity.class);
                intentPsd.putExtra("type",1);
                startActivity(intentPsd);
                break;
            case R.id.rel_real_name:
                if(infoBean != null && TextUtils.isEmpty(infoBean.getData().getIdcard_pic())){
                    Intent intent = new Intent(mContext, SettingRealNameActivity.class);
                    startActivityForResult(intent,1);
                }else if(infoBean != null ){
                    if("0".equals(infoBean.getData().getIdcard_ok())){
                        alertDialog();
                    }else if("1".equals(infoBean.getData().getIdcard_ok())){
                        Intent intent = new Intent(mContext, SettingRealNameActivity.class);
                        intent.putExtra("ishava",true);
                        startActivityForResult(intent,1);
                    }
                }
                break;
        }
    }

    /**
     * 显示弹窗  表在正在进行验证
     */
    private void alertDialog() {
//        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
//        builder.setTitle("您的身份验证正在等待后台审核，我们将尽快完成你的审核");
//        builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
//            @Override
//            public void onClick(DialogInterface dialogInterface, int i) {
//                dialogInterface.dismiss();
//            }
//        }).create().show();

        DialogUtils.showDialog(getActivity(),"您的身份验证正在等待后台审核，我们将尽快完成你的审核",null);
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(requestCode == 1 && data != null){
            if(infoBean != null) {
                String pic = data.getStringExtra("pic");
                infoBean.getData().setIdcard_pic(pic+"");
                ivAlreadyName.setVisibility(View.VISIBLE);
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }
}
