package com.wanduoduo.ui.info;

import android.content.DialogInterface;
import android.support.v7.app.AlertDialog;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.fragment.info.InfoReceiceGiftFragment;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;

import org.json.JSONException;
import org.json.JSONObject;

import butterknife.Bind;
import butterknife.OnClick;

public class InfoReceiveGiftActivity extends BaseActivity {

    @Bind(R.id.tv_charming)
    TextView tvCharming;
    @Bind(R.id.tv_renqi)
    TextView tvRenqi;
    @Bind(R.id.tv_gift_count)
    TextView tvGiftCount;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_receive_gift;
    }

    @Override
    protected void initData() {
        tvTitle.setText("收到的礼物");

        getSupportFragmentManager().beginTransaction().replace(R.id.content_container,new InfoReceiceGiftFragment()).commit();
    }

    public void setTvCharming(String charming){
        tvCharming.setText(charming);
        if(!TextUtils.isEmpty(charming)){
            tvRenqi.setText((float)(Long.parseLong(charming)/100.0) + "" );
        }
    }

    public void setTvGiftCount(int count){
        tvGiftCount.setText("我收到的礼物(" + count + ")");
    }

    @OnClick(R.id.tv_tixian)
    public void onClick(View view) {
        if(view.getId() == R.id.tv_tixian){
           alertDialog();
        }
    }

    /**
     * 是否提现
     */
    private void alertDialog() {
        if("0".equals(tvCharming.getText().toString())) {
            ToastUtils.makeToast("人气值不足");
        }else{
            DialogUtils.showDialog(InfoReceiveGiftActivity.this, "确定将所有人气值提现至余额?", new DialogUtils.DialogIF() {
                @Override
                public void positiviButtom() {
                    makeSureTiXian();
                }
            });
        }
    }

    private void makeSureTiXian() {
        OkHttpUtils.sendPostRequest(IConstant.CHARM_MONRY, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        tvRenqi.setText("0");
                        tvCharming.setText("0");
                        ToastUtils.makeToast("提现成功");
                    }
                });
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }
}

