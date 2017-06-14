package com.wanduoduo.ui.info;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.fragment.info.setting.SettingAboutWddFragmetn;
import com.wanduoduo.fragment.info.setting.SettingAccoutFragmetn;
import com.wanduoduo.fragment.info.setting.SettingBlackPersonFragmetn;
import com.wanduoduo.fragment.info.setting.SettingMsgReturnFragment;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class SettingItemActivity extends BaseActivity {

    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    private int type;
    private SettingMsgReturnFragment settingMsgReturnFragment;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_setting_item;
    }

    @Override
    protected void initData() {
        type = getIntent().getIntExtra(IConsName.TYPE, -1);
        switch (type){
            case IConsName.REL_MANAGE_ACCOUNT:
                tvTitle.setText("账号与安全");
                rePlaceFragment(new SettingAccoutFragmetn());
                break;
            case IConsName.REL_MANAGE_BLACK_PEOPLE:
                tvTitle.setText("管理黑名单");
                rePlaceFragment(new SettingBlackPersonFragmetn());
                break;
            case IConsName.REL_MSG_RETURN:
                tvRightTitleBar.setText("提交");
                tvTitle.setText("意见反馈");
                settingMsgReturnFragment = new SettingMsgReturnFragment();
                rePlaceFragment(settingMsgReturnFragment);
                break;
            case IConsName.REL_ABOUT_WDD:
                tvTitle.setText("关于玩多多");
                rePlaceFragment(new SettingAboutWddFragmetn());
                break;
        }
    }

    @OnClick({R.id.tv_right_title_bar})
    public void onClick(View view){
        if(type == IConsName.REL_MSG_RETURN && R.id.tv_right_title_bar==view.getId()){
            if(settingMsgReturnFragment.isReadySubmit()){
                OkHttpUtils.sendPostRequest(IConstant.FEED_BACK, getMap(), new OkHttpUtils.OnResultListener() {
                    @Override
                    public void onSuccess(String result) {
                        alertDialog();
                    }

                    @Override
                    public void onFailure(int errCode, String errMsg) {

                    }
                });
            }
        }
    }

    /**
     * 反馈信息成功
     */
    private void alertDialog() {
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                com.wanduoduo.utils.AlertDialog builder = new com.wanduoduo.utils.AlertDialog(SettingItemActivity.this).builder();
                builder.setTitle("提交成功");
                builder.setMsg("谢谢您的反馈,我们将及时改进！");
                builder.setCancelable(false);
                builder.setPositiveButton("知道了", new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        finish();
                    }
                }).show();
            }
        });

    }

    private Map<String, String> getMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("content",settingMsgReturnFragment.getContent());
        map.put("mobile",settingMsgReturnFragment.getPhoneNum());
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("version_code",packageInfo.versionCode);
            jsonObject.put("verion_name",packageInfo.versionName);
            map.put("app_version",jsonObject.toString());
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return map;
    }

    private void rePlaceFragment(Fragment fm){
        getSupportFragmentManager().beginTransaction().replace(R.id.content_container,fm).commit();
    }
}
