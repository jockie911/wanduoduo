package com.wanduoduo.ui.info;

import android.content.Intent;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.fragment.info.InfoCouponsFragment;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;

import org.json.JSONException;
import org.json.JSONObject;

import butterknife.Bind;
import butterknife.OnClick;

public class CouponsActivity extends BaseActivity {

    @Bind(R.id.ll_old_pass_coupons)
    LinearLayout llOldPassCoupons;
    @Bind(R.id.tv_old_pass_coupons)
    TextView tvOldPassCoupons;
    @Bind(R.id.ll_coupons_search)
    LinearLayout llCouponsSearch;
    private final static int MY_COUPONS = 1;
    private final static int OLD_COUPONS = 2;
    @Bind(R.id.et_coupons_search)
    EditText etCouponsSearch;
    private InfoCouponsFragment infoCouponsFragment;
    private boolean isUserConpous;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_coupons;
    }

    @Override
    protected void initData() {
        isUserConpous = getIntent().getBooleanExtra("isuserconpous", false);
        if (getIntent() != null && getIntent().getIntExtra("type", -1) == OLD_COUPONS) {
            tvTitle.setText("历史优惠券");
            llOldPassCoupons.setVisibility(View.GONE);
            llCouponsSearch.setVisibility(View.GONE);
            replaceFragment(new InfoCouponsFragment(OLD_COUPONS,isUserConpous));
        } else {
            tvTitle.setText("我的优惠券");
            infoCouponsFragment = new InfoCouponsFragment(MY_COUPONS,isUserConpous);
            replaceFragment(infoCouponsFragment);
        }
    }

    private void replaceFragment(Fragment fm) {
        getSupportFragmentManager().beginTransaction().replace(R.id.content_container, fm).commit();
    }

    @OnClick({R.id.tv_old_pass_coupons})
    public void onClick(View v) {
        if (v.getId() == R.id.tv_old_pass_coupons) {
            Intent intent = new Intent(this, CouponsActivity.class);
            intent.putExtra("type", OLD_COUPONS);
            startActivity(intent);
        }
    }

    @OnClick(R.id.tv_conpons_search)
    public void onClick() {
        if(TextUtils.isEmpty(etCouponsSearch.getText().toString())){
            ToastUtils.makeToast("兑换码不能为空");
            return;
        }
        OkHttpUtils.sendPostRequest(IConstant.EXCHANGE_TICKET, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).
                addParams("code", etCouponsSearch.getText().toString().trim()).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(final String result) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        infoCouponsFragment.onRefreshing();
                        ToastUtils.makeToast("兑换成功");
                        etCouponsSearch.setText("");
                    }
                });
            }

            @Override
            public void onFailure(int errCode , final String errMsg) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        ToastUtils.makeToast(errMsg);
                    }
                });
            }
        });
    }
}
