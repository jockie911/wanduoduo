package com.wanduoduo.ui.login;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;

import com.bumptech.glide.Glide;
import com.jph.takephoto.model.TImage;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.MainActivity;
import com.wanduoduo.utils.Base64Utils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.PhotoDialogHelper;
import com.wanduoduo.utils.RSAUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.WddHelper;
import com.wanduoduo.widget.CircleImageView;

import java.io.File;
import java.io.InputStream;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class LogInCompleteInfoActivity extends BaseActivity {

    @Bind(R.id.ll_base_title_bar)
    LinearLayout llBaseTitleBar;
    @Bind(R.id.civ_avatar)
    CircleImageView civAvatar;
    @Bind(R.id.et_psd)
    EditText etPsd;
    @Bind(R.id.et_nickname)
    EditText etNickname;
    @Bind(R.id.cb_male)
    CheckBox cbMale;
    @Bind(R.id.cb_female)
    CheckBox cbFemale;
    @Bind(R.id.ll_root_psd)
    LinearLayout llRootPsd;

    private boolean isHavaAvatar;
    private String avatar;
    private PhotoDialogHelper photoDialogHelper;
    private int type;   //0手机新用户  1微信新用户

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_log_in_complete_info;
    }

    @Override
    protected void initData() {
        tvTitle.setText("完善信息");
        llBaseTitleBar.setBackgroundDrawable(null);

        Intent intent = getIntent();
        String nickname = intent.getStringExtra("nickname");
        type = intent.getIntExtra("type",0);
        if(type == 1){
            llRootPsd.setVisibility(View.GONE);
        }

        avatar = intent.getStringExtra("avatar");
        int sex = intent.getIntExtra("sex",-1);

        if(WddHelper.isUploadAvatar(avatar)){
            isHavaAvatar = true;
            Glide.with(this).load(avatar).centerCrop().into(civAvatar);
        }

        if(!TextUtils.isEmpty(nickname)){
            etNickname.setText(nickname);
            etNickname.setSelection(nickname.length());
        }
        if(sex == 1){
            cbMale.setChecked(true);
            cbMale.setBackgroundDrawable(getResources().getDrawable(R.drawable.login_checked));
        }else if(sex == 2){
            cbFemale.setChecked(true);
            cbFemale.setBackgroundDrawable(getResources().getDrawable(R.drawable.login_checked));
        }
    }

    @OnClick({R.id.tv_welcome,R.id.cb_male,R.id.cb_female,R.id.civ_avatar})
    public void onClick(View view) {
        switch (view.getId()){
            case R.id.cb_male:
                setCheckBox(cbMale);
                break;
            case R.id.cb_female:
                setCheckBox(cbFemale);
                break;
            case R.id.civ_avatar:
                selectPhoto();
                break;
            case R.id.tv_welcome:
                if(isReady()){
                    OkHttpUtils.sendPostRequest(IConstant.USER_INFO, getMap(), new OkHttpUtils.OnResultListener() {
                        @Override
                        public void onSuccess(final String result) {
                            startActivity(new Intent(LogInCompleteInfoActivity.this, MainActivity.class));
                            finish();
                        }

                        @Override
                        public void onFailure(int errCode, final String errMsg) {
                            runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    ToastUtils.makeToast(errMsg);
                                }
                            });
                        }
                    });
                }
                break;
        }
    }

    /**
     * 上传头像
     */
    private void selectPhoto() {
        if(photoDialogHelper == null)
            photoDialogHelper = new PhotoDialogHelper(LogInCompleteInfoActivity.this);
        photoDialogHelper.setCrop(true).show();
    }

    private void setCheckBox(CheckBox cb) {
        cbMale.setChecked(false);
        cbFemale.setChecked(false);
        cbMale.setBackgroundDrawable(getResources().getDrawable(R.drawable.login_check_no));
        cbFemale.setBackgroundDrawable(getResources().getDrawable(R.drawable.login_check_no));

        cb.setChecked(true);
        cb.setBackgroundDrawable(getResources().getDrawable(R.drawable.login_checked));
    }

    private Map<String, String> getMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("nickname",etNickname.getText().toString().trim());
        if(cbMale.isChecked()){
            map.put("gender",1+"");
        }else if(cbFemale.isChecked()){
            map.put("gender",2+"");
        }
        InputStream inPublic = null;
        try {
            inPublic = getResources().getAssets().open("rsa_public_key.pem");
            PublicKey publicKey = RSAUtils.loadPublicKey(inPublic);
            byte[] encryptByte = RSAUtils.encryptData(etPsd.getText().toString().getBytes(), publicKey);
            String afterencrypt = Base64Utils.encode(encryptByte);
            map.put(IConsName.PASSWORD,afterencrypt);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }

    private boolean isReady() {
        if(!isHavaAvatar){
            ToastUtils.makeToast("请上传头像");
            return false;
        }
        if(type == 0 && TextUtils.isEmpty(etPsd.getText().toString())){
            ToastUtils.makeToast("请输入密码");
            return false;
        }
        if(TextUtils.isEmpty(etNickname.getText().toString())){
            ToastUtils.makeToast("请输入昵称");
            return false;
        }
        if(!cbMale.isChecked() && !cbFemale.isChecked()){
            ToastUtils.makeToast("请选择性别");
            return false;
        }
        return true;
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(requestCode == IConstant.PHOTO_PIC_REQUEST_CODE && data != null && data.getBooleanExtra(IConsName.SUCCESS,false )){
            ArrayList<TImage> images = (ArrayList<TImage>) data.getSerializableExtra("images");
            Glide.with(LogInCompleteInfoActivity.this).load(new File(images.get(0).getPath())).into(civAvatar);
            userAvatartUpLoad(images.get(0).getPath());
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    private void userAvatartUpLoad(String path) {
        OkHttpUtils.sendPostAvatar(IConstant.USER_AVATAR,path , new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                isHavaAvatar = true;
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }
}
