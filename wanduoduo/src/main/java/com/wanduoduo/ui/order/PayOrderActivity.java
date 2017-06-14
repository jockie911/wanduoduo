package com.wanduoduo.ui.order;

import android.content.Intent;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.alipay.sdk.app.PayTask;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.bean.PlayerInfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.index.DetailWebViewActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.TimeShowUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.UserInfoUtils;
import com.wanduoduo.utils.WXPayUtils;
import com.wanduoduo.widget.ActionSheetDialog;
import com.wanduoduo.widget.MyHandler;

import org.json.JSONException;
import org.json.JSONObject;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

import butterknife.Bind;
import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imlib.model.CSCustomServiceInfo;

public class PayOrderActivity extends BaseActivity {

    private static final int ORDER_JUST_NOW = 1;            //刚刚下单
    private static final int ORDER_FROM_HISTORY = 2;        //从未完成订单下单
    private static final int LOOK_FOR_ORDER_STATUS = 1;
    private static final int PAY_FOR_ORDER = 2;

    private static final int ORDER_STUTAS_WAIT = 1;
    private static final int ORDER_STUTAS_PASS = 2;
    private static final int ORDER_ERROR = 3;
    private static final int ALI_RESULT = 4;
    private static final int PAY_WITH_WALLET_SELECTED = 5;
    private static final int ORDER_CANCEL_SUCCESS = 6;
    private static final int ORDER_CANCEL_FAILURE = 7;

    private boolean isMakeOrder;    //判断是否下过单
    @Bind(R.id.cb_weixin)
    CheckBox cbWX;
    @Bind(R.id.cb_zfb)
    CheckBox cbZFB;
    @Bind(R.id.cb_wallet)
    CheckBox cbWallet;
    @Bind(R.id.tv_time_1)
    TextView tvTime1;
    @Bind(R.id.tv_time_2)
    TextView tvTime2;
    @Bind(R.id.tv_time_3)
    TextView tvTime3;
    @Bind(R.id.tv_time_4)
    TextView tvTime4;

    @Bind(R.id.tv_money)
    TextView tvMoney;
    @Bind(R.id.tv_order_id)
    TextView tvOrderId;
    @Bind(R.id.tv_place)
    TextView tvPlace;
    @Bind(R.id.tv_time)
    TextView tvTime;
    @Bind(R.id.rel_wallet)
    RelativeLayout relWallet;
    @Bind(R.id.iv_right_title_bar)
    ImageView ivRightTitleBar;
    @Bind(R.id.ll_root_place)
    LinearLayout llRootPlace;
    @Bind(R.id.v_invis)
    View vInvis;
    @Bind(R.id.tv_remain_money)
    TextView tvRemainMoney;

    private long currentTimeMillis;
    private String order_id;
    private String pay_method = "1";
    private PlayerInfoBean playerInfoBean;
    private boolean isCanceled;
    private boolean isOnline;
    private double remianMoney; //余额

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_pay_order;
    }

    @Override
    protected void initData() {
        tvTitle.setText(getResources().getString(R.string.make_sure_pay));
        ivRightTitleBar.setImageDrawable(getResources().getDrawable(R.drawable.share));

        Intent intent = getIntent();
        int type = intent.getIntExtra("type", -1);
        isOnline = intent.getBooleanExtra("isOnline", false);
        if(isOnline){
            llRootPlace.setVisibility(View.GONE);
            vInvis.setVisibility(View.GONE);
        }

        if(type == ORDER_JUST_NOW){
            currentTimeMillis = System.currentTimeMillis();
        }else if( type == ORDER_FROM_HISTORY){
            try {
                currentTimeMillis = getCurrentTimeMillis(intent.getStringExtra("create_time"));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        Timer timer = new Timer();
        MyTimerTask timerTask = new MyTimerTask(currentTimeMillis);
        timer.schedule(timerTask,0,1000);

        playerInfoBean = intent.getParcelableExtra("playerInfoBean");

        tvTime.setText(TimeShowUtils.getTime(playerInfoBean.getTime()));
        tvMoney.setText(playerInfoBean.getTotalFee());
        order_id = playerInfoBean.getOrder_id();
        tvOrderId.setText(order_id);
        tvPlace.setText(playerInfoBean.getPlace());

        cbWallet.setClickable(false);
        cbWX.setClickable(false);
        cbZFB.setClickable(false);

        UserInfoUtils.getUserInfo(new UserInfoUtils.OnResquestSuccess() {
            @Override
            public void onSuccess(InfoBean infoBean) {
                if(tvRemainMoney != null){
                    remianMoney = Double.parseDouble(infoBean.getData().getMoney());
                    tvRemainMoney.setText("余额：" + remianMoney);
                }
            }
        });
    }

    /**
     * 历史订单的毫秒值
     * @param time
     * @return
     * @throws ParseException
     */
    private long getCurrentTimeMillis(String time) throws ParseException {
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.parse(time).getTime();
    }

    @OnClick({R.id.iv_left_title_bar,R.id.rel_wallet,R.id.rel_wx,R.id.rel_zfb,R.id.tv_pay,R.id.tv_wdd_xieyi,R.id.iv_right_title_bar})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_left_title_bar:
                showDialogExit();
                break;
            case R.id.rel_wallet:
                if(isEnough() && !cbWallet.isChecked()){
                    cbZFB.setChecked(false);
                    cbWX.setChecked(false);
                }
                cbWallet.setChecked(!cbWallet.isChecked());
                break;
            case R.id.rel_wx:
                if(isEnough()){
                    cbWallet.setChecked(false);
                }
                cbWX.setChecked(!cbWX.isChecked());
                cbZFB.setChecked(false);
                break;
            case R.id.rel_zfb:
                if(isEnough()){
                    cbWallet.setChecked(false);
                }
                cbZFB.setChecked(!cbZFB.isChecked());
                cbWX.setChecked(false);
                break;
            case R.id.tv_pay:           //先获取订单的状态
                if(!cbWallet.isChecked() && !cbZFB.isChecked() && !cbWX.isChecked()){
                    ToastUtils.makeToast("至少选择一种支付方式");
                    return;
                }
                OkHttpUtils.sendGetRequest(IConstant.ORDERINFO, MapUtils.clear().addParams("order_id",order_id).getMap(),new MyOnRefreshListen(LOOK_FOR_ORDER_STATUS));
                break;
            case R.id.tv_wdd_xieyi:
                Intent intent1 = new Intent(PayOrderActivity.this, DetailWebViewActivity.class);
                intent1.putExtra("title","退款规则");
                intent1.putExtra("url","http://api.wanduoduo.cc/new/a_return.html");
                startActivity(intent1);
                break;
            case R.id.iv_right_title_bar:
                alertOrderCancelDialog();
                break;
        }
    }

    /**
     * 账户余额是否能够支付
     * @return
     */
    private boolean isEnough(){
        return remianMoney - Double.parseDouble(playerInfoBean.getTotalFee()) > 0;
    }

    private void alertOrderCancelDialog() {
        ActionSheetDialog builder = new ActionSheetDialog(this).builder();
        if(!isCanceled){
            builder.addSheetItem("取消订单", ActionSheetDialog.SheetItemColor.Red, new ActionSheetDialog.OnSheetItemClickListener() {
                        @Override
                        public void onClick(int which) {
                            orderCancel();
                        }
                    });
        }
        builder.addSheetItem("联系客服", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
            @Override
            public void onClick(int which) {
                connectKeFu();
            }
        }).show();
    }

    private void connectKeFu() {
        if(RongIM.getInstance() != null){
            CSCustomServiceInfo.Builder csBuilder = new CSCustomServiceInfo.Builder();
            CSCustomServiceInfo csInfo = csBuilder.nickName("玩多多客服").build();
            RongIM.getInstance().startCustomerServiceChat(PayOrderActivity.this, "KEFU147824193523989", "玩多多客服",csInfo);
        }
    }

    /**
     * 未付款取消订单
     */
    private void orderCancel() {
        DialogUtils.showDialog(this, "订单一旦取消不可恢复，确定要取消吗?", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                OkHttpUtils.sendPostRequest(IConstant.ORDER_CANCLE_TWO, MapUtils.clear().addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).
                        addParams("order_id", playerInfoBean.getOrder_id()).getMap(), new OkHttpUtils.OnResultListener() {
                    @Override
                    public void onSuccess(String result) {
                        myHandler.sendEmptyMessage(ORDER_CANCEL_SUCCESS);
                    }

                    @Override
                    public void onFailure(int errCode, String errMsg) {
                        Message obtain = Message.obtain();
                        obtain.what = ORDER_CANCEL_FAILURE;
                        obtain.obj = errMsg;
                        myHandler.sendMessage(obtain);
                    }
                });
            }
        });
    }

    private Map<String,String> getMap() {
        Map<String,String> map = new HashMap<>();
        if(cbWallet.isChecked() && !cbWX.isChecked() && !cbZFB.isChecked()){
            pay_method = "3";
        }else if(cbWallet.isChecked()){
            map.put("use_money","1");
        }
        if(cbZFB.isChecked())
            pay_method = "2";
        if(cbWX.isChecked())
            pay_method = "1";
        map.put("pay_method",pay_method);
        map.put("order_id",order_id);
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        JLog.e(map.toString());
        return map;
    }

    private void payForZhiFuBao(String ali) {
        PayTask payTask = new PayTask(this);
        String payResult = payTask.pay(ali, true);
        Message msg = new Message();
        msg.what = ALI_RESULT;
        msg.obj = payResult;
        myHandler.sendMessage(msg);
    }

    private void payForWeiXin(String wx) {
        WXPayUtils.wxPay(wx);
    }


    MyHandler myHandler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what){
                case ORDER_STUTAS_WAIT:
                    ToastUtils.makeToast("等待服务者确认");
                    break;
                case ORDER_STUTAS_PASS:
                    ToastUtils.makeToast((String)msg.obj);
                    break;
                case ORDER_ERROR:
                    String errMsg = (String)msg.obj;
                    ToastUtils.makeToast(errMsg);
                    break;
                case ALI_RESULT:
                    String res = (String) msg.obj;
                    if(res.contains("9000")){
                        ToastUtils.makeToast("支付成功");
                        orderPayComplete();
                    }else if(res.contains("4000")){
                        ToastUtils.makeToast("支付失败");
                    }else if(res.contains("6001")){
                        ToastUtils.makeToast("已取消");
                    }else if(res.contains("6002")){
                        ToastUtils.makeToast("网络连接失败");
                    }
                    break;
                case PAY_WITH_WALLET_SELECTED:
                    relWallet.setClickable(false);
                    cbWallet.setChecked(true);
                    break;
                case ORDER_CANCEL_SUCCESS:
                    isCanceled = true;
                    ToastUtils.makeToast("取消订单成功");
                    break;
                case ORDER_CANCEL_FAILURE:
                    isCanceled = true;
                    ToastUtils.makeToast((String) msg.obj);
                    break;
            }
        }
    };


    /**
     * 定时器
     */
    private class MyTimerTask extends TimerTask{

        private long currentTimeMillis;
        private long time = 15 * 60 * 1000; // 十五分钟倒计时
        private long remainTime;
        private int minTime;
        private int secondTime;

        public MyTimerTask(long currentTimeMillis) {
            this.currentTimeMillis = currentTimeMillis;
        }

        @Override
        public void run() {
            remainTime = time - (System.currentTimeMillis() - currentTimeMillis);
            if(remainTime > 0){
                minTime = (int) ((remainTime/1000) / 60);
                secondTime = (int) ((remainTime/1000) % 60);
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        if(minTime < 10){
                            tvTime1.setText("0");
                            tvTime2.setText(minTime + "");
                        }else{
                            tvTime1.setText("1");
                            tvTime2.setText((minTime - 10) + "");
                        }
                        if(secondTime < 10){
                            tvTime3.setText("0");
                            tvTime4.setText(secondTime + "");
                        }else{
                            tvTime3.setText((secondTime / 10) + "");
                            tvTime4.setText((secondTime % 10) + "");
                        }
                    }
                });
            }
        }
    }


    private class MyOnRefreshListen implements OkHttpUtils.OnResultListener {

        private int requestCode;

        public MyOnRefreshListen(int requestCode){
            this.requestCode = requestCode;
        }
        @Override
        public void onSuccess(String result) {
            switch (requestCode){
                case LOOK_FOR_ORDER_STATUS:     //查询订单状态
                    try {
                        JSONObject jsonObject = new JSONObject(result).getJSONObject("data").getJSONObject("data");
                        String order_status = jsonObject.getString("order_status");
                        String errMsg = new JSONObject(result).getString("errMsg");
                        if(jsonObject.has("order_cold_money") && !TextUtils.equals("0.00",jsonObject.getString("order_cold_money"))) //有余额支付
                            myHandler.sendEmptyMessage(PAY_WITH_WALLET_SELECTED);
                        if("0".equals(order_status)){//无效的订单
                            isMakeOrder = true;
                            Message obtain = Message.obtain();
                            obtain.obj = errMsg;
                            obtain.what = ORDER_STUTAS_PASS;
                            myHandler.sendMessage(obtain);
                        }else{
                            OkHttpUtils.sendGetRequest(IConstant.PAY_TWO, getMap(),new MyOnRefreshListen(PAY_FOR_ORDER));
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    break;
                case PAY_FOR_ORDER:
                    if(cbZFB.isChecked() || cbWX.isChecked()){
                        try {
                            JSONObject data = new JSONObject(result).getJSONObject("data");
                            if(cbWX.isChecked())
                                payForWeiXin(data.getString("WX"));
                            if(cbZFB.isChecked())
                                payForZhiFuBao(data.getJSONObject("Ali").getString("orderStr"));
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }else if(cbWallet.isChecked() && !cbWX.isChecked() && !cbZFB.isChecked()){
                        orderPayComplete();
                    }
            }
        }

        @Override
        public void onFailure(int errCode,String errMsg) {
            if(requestCode == PAY_FOR_ORDER && cbWallet.isChecked()){
                Message obtain = Message.obtain();
                obtain.obj = errMsg;
                obtain.what = ORDER_ERROR;
                myHandler.sendMessage(obtain);
            }
        }
    }

    private void orderPayComplete(){
        Intent intent = new Intent(this, PayOrderCompleteActivity.class);
        intent.putExtra("type",1);
        intent.putExtra("playerInfoBean",playerInfoBean);
        intent.putExtra("isOnline",isOnline);
        startActivity(intent);
        finish();
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK){
                showDialogExit();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    private void showDialogExit() {
        DialogUtils.showDialog(this, "确定放弃支付?", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                finish();
            }
        });
    }
}
