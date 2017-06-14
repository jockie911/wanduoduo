package com.wanduoduo.ui.info;

import android.graphics.Color;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;

import com.alipay.sdk.app.PayTask;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.WXPayUtils;
import com.wanduoduo.widget.MyHandler;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class InfoPayCoinActivity extends BaseActivity {
    private static final int REQUEST_GET_ORDER = 1;
    private static final int REQUEST_READY_PAY = 2;
    @Bind(R.id.tv_make_sure_chong_zhi)
    TextView tvMakeSureChongZhi;
    @Bind(R.id.cb_weixin)
    CheckBox cbWeixin;
    @Bind(R.id.cb_zfb)
    CheckBox cbZfb;

    @Bind(R.id.tv_coin)
    TextView tvCoin;
    @Bind(R.id.tv_price)
    TextView tvPrice;
    private String paycode;
    private String coin;
    private String price;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_info_pay_coin;
    }

    @Override
    protected void initData() {
        tvTitle.setText("支付方式");
        String data = getIntent().getStringExtra("data");
        if (!TextUtils.isEmpty(data)) {
            try {
                coin = new JSONObject(data).getString("coin");
                price = new JSONObject(data).getString("price");
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        tvCoin.setText("玩币  :" + "  " + coin);
        tvPrice.setText("价格  :" + "  "+price);
    }

    @OnClick({R.id.rel_weixin,R.id.rel_zfb,R.id.tv_make_sure_chong_zhi})
    public void onClick(View view){
        switch (view.getId()){
            case R.id.rel_weixin:
                setCBSelected(cbWeixin);
                break;
            case R.id.rel_zfb:
                setCBSelected(cbZfb);
                break;
            case R.id.tv_make_sure_chong_zhi:
                getOrder();
                break;
        }
    }

    private void setCBSelected(CheckBox cb){
        cbWeixin.setVisibility(View.INVISIBLE);
        cbZfb.setVisibility(View.INVISIBLE);
        cb.setVisibility(View.VISIBLE);
        setMakeSureChongZhi();
    }

    private void setMakeSureChongZhi(){
        tvMakeSureChongZhi.setClickable(true);
        tvMakeSureChongZhi.setTextColor(Color.WHITE);
        tvMakeSureChongZhi.setBackgroundResource(R.drawable.shape_moblie_tv_bg_blue);
    }

    /**
     * 生成订单
     */
    private void getOrder() {
        OkHttpUtils.sendPostRequest(IConstant.CHARGE,getMap(),new MyOnRefresListen(REQUEST_GET_ORDER));
    }

    /**
     * params
     */
    private Map<String,String> getMap() {
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put(IConsName.TYPE,"1");
        map.put("num",coin);
        return map;
    }

    MyHandler myHandler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == 0){
                String order_id = (String)msg.obj;
                OkHttpUtils.sendGetRequest(IConstant.CHARGE_PAY,getPayMap(order_id),new MyOnRefresListen(REQUEST_READY_PAY));
            }else if(msg.what == 1){
                String res = (String) msg.obj;
                JLog.e(res);
                if(res.contains("9000")){
                    ToastUtils.makeToast("支付成功");
                }else if(res.contains("4000")){
                    ToastUtils.makeToast("支付失败");
                }else if(res.contains("6001")){
                    ToastUtils.makeToast("已取消");
                }else if(res.contains("6002")){
                    ToastUtils.makeToast("网络连接失败");
                }
            }
        }
    };

    private Map<String,String> getPayMap(String order_id){
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN,SPUtils.getStringData(IConsName.TOKEN,""));
        map.put("order_id",order_id);
        if(cbWeixin.isChecked())
            map.put("pay_method","1");
        if(cbZfb.isChecked())
            map.put("pay_method","2");
        return map;
    }

    private class MyOnRefresListen implements OkHttpUtils.OnResultListener{
        private  int requestCode;
        public MyOnRefresListen(int requestCode) {
            this.requestCode = requestCode;
        }

        @Override
        public void onSuccess(String result) {

            if(requestCode == REQUEST_GET_ORDER){
                try {
                    String order_id = new JSONObject(result).getJSONObject("data").getString("orderid");
                    Message obtain = Message.obtain();
                    obtain.what = 0;
                    obtain.obj = order_id;
                    myHandler.sendMessage(obtain);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }else if(requestCode == REQUEST_READY_PAY){

                JLog.e("result  " + result);
                try {
                    //TODO 吊起支付宝付款或者微信
                    JSONObject data = new JSONObject(result).getJSONObject("data");
                    if(cbWeixin.isChecked()){
                        paycode = data.getString("WX");
                        JLog.e("WX " + paycode);
                        WXPayUtils.wxPay(paycode);
                    }else if(cbZfb.isChecked()){
                        paycode = data.getJSONObject("Ali").getString("orderStr");

                        JLog.e("paycode"  + paycode);
                        if(!TextUtils.isEmpty(paycode)) {
                            PayTask payTask = new PayTask(InfoPayCoinActivity.this);
                            String payResult = payTask.pay(paycode, true);
                            Message msg = new Message();
                            msg.what = 1;
                            msg.obj = payResult;
                            myHandler.sendMessage(msg);
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }

        @Override
        public void onFailure(int errCode, String errMsg) {

        }
    }
}
