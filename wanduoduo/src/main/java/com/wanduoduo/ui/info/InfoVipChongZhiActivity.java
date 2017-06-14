package com.wanduoduo.ui.info;

import android.content.Intent;
import android.text.TextUtils;

import com.github.lzyzsd.jsbridge.BridgeHandler;
import com.github.lzyzsd.jsbridge.CallBackFunction;
import com.wanduoduo.base.BaseWebViewActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class InfoVipChongZhiActivity extends BaseWebViewActivity {

    private String remainCoin = "0";
    private String user_id;

    @Override
    protected void initData() {
        tvTitle.setText("充值会员");
        remainCoin = getIntent().getStringExtra("coin");
        setURL("https://api.wanduoduo.cc/new/recharge.html?token=" + SPUtils.getStringData(IConsName.TOKEN,""));
        super.initData();

        webview.registerHandler("checkVipRights", new BridgeHandler() {         //查看会员特权
            @Override
            public void handler(String data, CallBackFunction function) {
                startActivity(new Intent(InfoVipChongZhiActivity.this,InfoVipActivity.class));
            }
        });

        webview.registerHandler("chargeVip", new BridgeHandler() {      //充值vip
            @Override
            public void handler(String data, CallBackFunction function) {
                JLog.e(data.toString());
                try {
                    JSONObject obj = new JSONObject(data);
                    String type = obj.getString("type");
                    String day = obj.getString("day");
                    String coin = obj.getString("coin");
                    remainCoin = obj.getString("remainCoin");

                    if(TextUtils.isEmpty(remainCoin) || Integer.parseInt(coin) > Integer.parseInt(remainCoin)){
                        alertDialogPayCoin();
                    }else{
                        alertDialog(type,day,coin,true);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        });

        /** 给好友充值vip */
        webview.registerHandler("giveVip", new BridgeHandler() {
            @Override
            public void handler(String data, CallBackFunction function) {
                JLog.e(data);
                try {
                    JSONObject obj = new JSONObject(data);
                    String type = obj.getString("type");
                    String day = obj.getString("day");
                    String coin = obj.getString("coin");
                    user_id = obj.getString("user_id");
                    if(TextUtils.isEmpty(user_id)){
                        ToastUtils.makeToast("请选择好友");
                        return;
                    }
                    if(TextUtils.isEmpty(remainCoin)){
                        ToastUtils.makeToast("发生错误");
                        return;
                    }
                    if(Integer.parseInt(coin) > Integer.parseInt(remainCoin)){
                        alertDialogPayCoin();
                    }else{
                        alertDialog(type,day,coin,false);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                    JLog.e(e.toString());
                }
            }
        });
    }

    /**
     * 余额不足 充值余额
     */
    private void alertDialogPayCoin() {
        DialogUtils.showDialog(this, "金币不足，是否充值金币", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                startActivity(new Intent(InfoVipChongZhiActivity.this,PlayCoinActivity.class));
                finish();
            }
        });
    }

    /**
     * 弹出框
     * isSelf 是否是给自己 还是 给好友充值
     */
    private void alertDialog(final String type, final String day, final String needCoin, final boolean isSelf) {
        DialogUtils.showDialog(this, isSelf ? "确定充值vip吗?" : "确定给好友充值vip吗?", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                sendDataRequest(type, day, needCoin,isSelf);
            }
        });
    }

    private void sendDataRequest(String type, String day, String needCoin,boolean isSelf) {
        OkHttpUtils.sendPostRequest(IConstant.CHARGE_VIP, getMap(type, day, needCoin,isSelf), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private Map<String, String> getMap(String type, String day, String needCoin,boolean isSelf) {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("vip",type);
        map.put("price",needCoin);
        map.put("day",day);
        if(!isSelf)
            map.put("user_id",user_id);
        return map;
    }
}
