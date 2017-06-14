package com.wanduoduo.ui.info;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Message;
import android.support.v4.content.IntentCompat;
import android.view.View;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.index.DetailWebViewActivity;
import com.wanduoduo.ui.login.LogInActivity;
import com.wanduoduo.utils.DataCleanManager;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.widget.MyHandler;

import butterknife.Bind;
import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imlib.model.CSCustomServiceInfo;

public class SettingActivity extends BaseActivity {

    @Bind(R.id.tv_cash_size)
    TextView tvCashSize;
    @Override
    protected int getLayoutRes() {
        return R.layout.activity_setting;
    }

    @Override
    protected void initData() {
        tvTitle.setText(getResources().getString(R.string.setting));
        try {
            tvCashSize.setText(DataCleanManager.getTotalCacheSize());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @OnClick({R.id.rel_exit_login,R.id.rel_clear_cash,R.id.rel_manage_account,R.id.rel_manage_black_people,R.id.rel_msg_return,
    R.id.rel_plant_rule,R.id.rel_about_wdd,R.id.rel_forbidden,R.id.rel_kefu})
    public void onClick(View view){
        switch (view.getId()){
            case R.id.rel_exit_login:
                DialogUtils.showDialog(SettingActivity.this, "确认退出登录吗?", new DialogUtils.DialogIF() {
                    @Override
                    public void positiviButtom() {
                        DialogUtils.loading(SettingActivity.this,"正在退出中...");
                        logout();
                    }
                });
                break;
            case R.id.rel_clear_cash:
                DialogUtils.showDialog(SettingActivity.this, "确定清理缓存吗?", "这会清空您已经缓存的数据，下载访问的时候重新下载。", new DialogUtils.DialogIF() {
                    @Override
                    public void positiviButtom() {
                        DataCleanManager.clearAllCache();
                        try {
                           tvCashSize.setText(DataCleanManager.getTotalCacheSize());
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                });
                break;
            case R.id.rel_manage_account:
                jumpToActivity(IConsName.REL_MANAGE_ACCOUNT);
                break;
            case R.id.rel_kefu:
                if(RongIM.getInstance() != null){
                    CSCustomServiceInfo.Builder csBuilder = new CSCustomServiceInfo.Builder();
                    CSCustomServiceInfo csInfo = csBuilder.nickName("玩多多客服").build();
                    RongIM.getInstance().startCustomerServiceChat(SettingActivity.this, "KEFU147824193523989", "玩多多客服",csInfo);
                }
                break;
            case R.id.rel_manage_black_people:
                jumpToActivity(IConsName.REL_MANAGE_BLACK_PEOPLE);
                break;
            case R.id.rel_msg_return:
                jumpToActivity(IConsName.REL_MSG_RETURN);
                break;
            case R.id.rel_plant_rule:
                Intent intent = new Intent(this, DetailWebViewActivity.class);
                intent.putExtra("url","http://api.wanduoduo.cc/new/a_standard_behaviour.html");
                intent.putExtra("title","玩多多平台行为规范");
                startActivity(intent);
                break;
            case R.id.rel_about_wdd:
                jumpToActivity(IConsName.REL_ABOUT_WDD);
                break;
            case R.id.rel_forbidden:
                Intent intent1 = new Intent(this, DetailWebViewActivity.class);
                intent1.putExtra("url","http://api.wanduoduo.cc/new/a_punish.html");
                intent1.putExtra("title","处罚名单");
                startActivity(intent1);
                break;
        }
    }

    /**
     * 用户退出
     */
    private void logout() {
        OkHttpUtils.sendPostRequest(IConstant.USER_LOGOUT, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                SPUtils.deleteSP();
                if(RongIM.getInstance() != null)
                    RongIM.getInstance().disconnect();

                myHandler.sendEmptyMessage(1);
                Intent intent = new Intent(SettingActivity.this, LogInActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK + Intent.FLAG_ACTIVITY_CLEAR_TASK);
                ComponentName cn = intent.getComponent();
                Intent mainIntent = IntentCompat.makeRestartActivityTask(cn);
                startActivity(mainIntent);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {
                myHandler.sendEmptyMessage(1);
            }
        });
    }

    private void jumpToActivity(int type){
        Intent intent = new Intent(this,SettingItemActivity.class);
        intent.putExtra(IConsName.TYPE,type);
        startActivity(intent);
    }

    MyHandler myHandler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == 1){
                DialogUtils.loadingDismiss();
            }
        }
    };

    @Override
    protected void onDestroy() {
        myHandler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }
}
