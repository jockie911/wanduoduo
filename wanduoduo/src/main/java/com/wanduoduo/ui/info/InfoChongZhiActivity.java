package com.wanduoduo.ui.info;

import android.graphics.Color;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;

import com.alipay.sdk.app.PayTask;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.utils.DensityUtil;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.WXPayUtils;
import com.wanduoduo.widget.MyGridView;
import com.wanduoduo.widget.MyHandler;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

/**
 * Created by jockie on 2016/8/22.
 */
public class InfoChongZhiActivity extends BaseActivity implements AdapterView.OnItemClickListener, TextWatcher {
    private static final int REQUEST_GET_ORDER = 1;
    private static final int REQUEST_READY_PAY = 2;
    @Bind(R.id.gv_money)
    MyGridView gvMoney;
    @Bind(R.id.et_money)
    EditText etMoney;
    @Bind(R.id.tv_make_sure_chong_zhi)
    TextView tvMakeSureChongZhi;
    private MoneyAdapter moneyAdapter;
    @Bind(R.id.cb_weixin)
    CheckBox cbWeixin;
    @Bind(R.id.cb_zfb)
    CheckBox cbZfb;
    private String paycode = "";

    @Override
    protected int getLayoutRes() {
        return R.layout.info_chong_zhi;
    }

    @Override
    protected void initData() {
        tvTitle.setText("钱包充值");
        moneyAdapter = new MoneyAdapter();
        gvMoney.setAdapter(moneyAdapter);
        gvMoney.setOnItemClickListener(this);
        etMoney.addTextChangedListener(this);
    }


    @OnClick({R.id.iv_delete, R.id.cb_weixin, R.id.cb_zfb, R.id.tv_make_sure_chong_zhi})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_delete:
                etMoney.setText("");
                break;
            case R.id.cb_weixin:
                cbChected(cbWeixin);
                break;
            case R.id.cb_zfb:
                cbChected(cbZfb);
                break;
            case R.id.tv_make_sure_chong_zhi:
                if(TextUtils.isEmpty(etMoney.getText().toString())){
                    return;
                }
                getOrder();
                break;
        }
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
        map.put(IConsName.TYPE,"2");
        map.put("num",etMoney.getText().toString());
        return map;
    }

    public void cbChected(CheckBox cb){
        cbWeixin.setChecked(false);
        cbZfb.setChecked(false);
        cb.setChecked(true);
    }
    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        for (int i1 = 0; i1 < adapterView.getCount(); i1++) {
            TextView tv = (TextView) adapterView.getChildAt(i1);
            if(i1 == i){
                tv.setTextColor(adapterView.getContext().getResources().getColor(R.color.c_129_143_255));
                tv.setBackgroundResource(R.drawable.money_selected);
            }else{
                tv.setTextColor(adapterView.getContext().getResources().getColor(R.color.c_208_210_211));
                tv.setBackgroundResource(R.drawable.money_normal);
            }
        }
        etMoney.setText(moneyAdapter.mData[i]);
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i, int i1, int i2) {

    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i, int i1, int i2) {
        if(TextUtils.isEmpty(charSequence)){
            tvMakeSureChongZhi.setClickable(false);
            tvMakeSureChongZhi.setTextColor(Color.parseColor("#394471"));
            tvMakeSureChongZhi.setBackgroundResource(R.drawable.shape_manage_tixian_bg_normal);
        }else{
            tvMakeSureChongZhi.setClickable(true);
            tvMakeSureChongZhi.setTextColor(Color.WHITE);
            tvMakeSureChongZhi.setBackgroundResource(R.drawable.shape_moblie_tv_bg_blue);
        }
    }

    @Override
    public void afterTextChanged(Editable editable) {

    }

    private class MoneyAdapter extends BaseAdapter{

        String[] mData = {"10","50","100","200","500","1000"};
        @Override
        public int getCount() {
            return mData.length;
        }

        @Override
        public Object getItem(int i) {
            return null;
        }

        @Override
        public long getItemId(int i) {
            return 0;
        }

        @Override
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView = new TextView(viewGroup.getContext());
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, DensityUtil.dip2px(viewGroup.getContext(), 40));
            textView.setLayoutParams(layoutParams);
            textView.setGravity(Gravity.CENTER);
            textView.setTextColor(viewGroup.getResources().getColor(R.color.c_208_210_211));
            textView.setBackgroundResource(R.drawable.money_normal);
            textView.setText(mData[i] + "元");
            return textView;
        }
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
                try {
                    //TODO 吊起支付宝付款或者微信
                    final JSONObject data = new JSONObject(result).getJSONObject("data");
                    if(cbWeixin.isChecked()){
                        paycode = data.getString("WX");
                        WXPayUtils.wxPay(paycode);
                    }else if(cbZfb.isChecked()){
                        paycode = data.getJSONObject("Ali").getString("orderStr");
                        if(!TextUtils.isEmpty(paycode)) {
                            PayTask payTask = new PayTask(InfoChongZhiActivity.this);
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
        public void onFailure(int errCode,String errMsg) {

        }
    }
}
