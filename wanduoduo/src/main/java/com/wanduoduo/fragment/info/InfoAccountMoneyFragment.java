package com.wanduoduo.fragment.info;

import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseFragment;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.index.DetailWebViewActivity;
import com.wanduoduo.ui.info.InfoChongZhiActivity;
import com.wanduoduo.ui.info.InfoReceiveGiftActivity;
import com.wanduoduo.ui.info.InfoZFAnquanActivity;
import com.wanduoduo.ui.skill.PlayerSkillManageItemActivity;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import org.json.JSONException;
import org.json.JSONObject;

import butterknife.Bind;
import butterknife.OnClick;

/**
 * Created by jockie on 2016/8/15.
 */
public class InfoAccountMoneyFragment extends BaseFragment {

    private int TYPE_NEW = 1;
    private int TYPE_OLD = 2;
    @Bind(R.id.tv_money)
    TextView tvMonry;
    @Bind(R.id.tv_money_draw)
    TextView tvMonryDraw;
    @Bind(R.id.tv_money_in)
    TextView tvMoneyIn;
    private String money_bal = "0.00";
    private String money_in = "0.00";
    private String money_draw = "0.00";

    @Override
    protected View inflater(LayoutInflater inflater) {
        return inflater.inflate(R.layout.fragment_accout_money,null);
    }

    @Override
    protected void initData() {
        String money = getActivity().getIntent().getStringExtra("money");
        if(!TextUtils.isEmpty(money))
            tvMonry.setText(money);

        requsetMonet();
    }

    private void requsetMonet() {
        OkHttpUtils.sendGetRequest(IConstant.USER_BILLSUM, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,"")).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                try {
                    final JSONObject jsonObject = new JSONObject(result).getJSONObject("data");
                    money_in = jsonObject.getString("money_in");
                    money_draw = jsonObject.getString("money_draw");
                    money_bal = jsonObject.getString("money_bal");
                    if(getActivity() != null){
                        getActivity().runOnUiThread(new Runnable() {
                            @Override
                            public void run() {
                                tvMoneyIn.setText(money_in);
                                tvMonryDraw.setText(money_draw);
                                tvMonry.setText(money_bal);
                            }
                        });
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    @OnClick({R.id.rel_ti_xian,R.id.rel_chong_zhi,R.id.rel_anquan,R.id.rel_gift,R.id.tv_xieyi})
    public void onClick(View view){
        switch (view.getId()){
            case R.id.rel_ti_xian:
                jumpToItemActivity(IConsName.MANAGE_GET_MONEY);
                break;
            case R.id.rel_chong_zhi:
                Intent intent = new Intent(mContext, InfoChongZhiActivity.class);
                startActivityForResult(intent,1);
                break;
            case R.id.rel_anquan:
                Intent intent1 = new Intent(mContext, InfoZFAnquanActivity.class);
                intent1.putExtra(IConsName.TYPE,TYPE_NEW);
                startActivityForResult(intent1,TYPE_NEW);
                break;
            case R.id.rel_gift:
                startActivity(new Intent(mContext, InfoReceiveGiftActivity.class));
                break;
            case R.id.tv_xieyi:
                Intent intent2 = new Intent(mContext, DetailWebViewActivity.class);
                intent2.putExtra("url","http://api.wanduoduo.cc/new/a_registration.html");
                intent2.putExtra("title","服务收入及提现说明");
                startActivity(intent2);
                break;
        }
    }

    private void jumpToItemActivity(int type) {
        Intent intent = new Intent(mContext, PlayerSkillManageItemActivity.class);
        intent.putExtra("type",type);
        intent.putExtra("money_bal",money_bal);
        startActivityForResult(intent,1);
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(requestCode == 1 )
            requsetMonet();
        super.onActivityResult(requestCode, resultCode, data);
    }
}
