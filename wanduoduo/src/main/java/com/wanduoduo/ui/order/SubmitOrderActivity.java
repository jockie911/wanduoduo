package com.wanduoduo.ui.order;

import android.content.Intent;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.liuzhuang.rcimageview.RoundCornerImageView;
import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.PlayerInfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.index.DetailWebViewActivity;
import com.wanduoduo.ui.info.CouponsActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.TimeShowUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.widget.MyHandler;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;

public class SubmitOrderActivity extends BaseActivity {

    private final static String server_hour = "";
    private static final int REQUEST_CONPOUS = 1;
    private static final int SUBMIT_ORDER_SUCCESS = 2;
    @Bind(R.id.iv_pic)
    RoundCornerImageView ivPic;
    @Bind(R.id.tv_sub_title)
    TextView tvSubTitle;
    @Bind(R.id.tv_price)
    TextView tvPrice;
    @Bind(R.id.tv_coupons)
    TextView tvCoupons;
    @Bind(R.id.tv_time)
    TextView tvTime;
    @Bind(R.id.tv_total_price)
    TextView tvTotalPrice;
    @Bind(R.id.et_place)
    EditText etPlace;
    @Bind(R.id.ll_root_place)
    LinearLayout llRootPlace;
    @Bind(R.id.tv_make_sure_order)
    TextView tvMaleSureOrder;

    private String gift_id;
    private String pic;
    private String title;
    private String fee;
    private String serverPlace = "";     //服务地点
    private String type;
    private String count;       //下单数量
    private PlayerInfoBean playerInfoBean;
    private String ticket_id = "0";
    private String cpprice = "0";       //优惠券的卷面价格
    private boolean isOnline;
    private int SUBMIT_ORDER_FAILURE = 1;
    private String orderprice;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_submit_order;
    }

    @Override
    protected void initData() {
        tvTitle.setText(getResources().getString(R.string.ti_jiao_ding_dan));
        playerInfoBean = getIntent().getParcelableExtra("playerinfobean");
        gift_id = playerInfoBean.getId();
        pic = playerInfoBean.getCover_pic();
        title = playerInfoBean.getTitle();
        fee = playerInfoBean.getFee();
        count = getIntent().getStringExtra("count");

        Glide.with(this).load(pic).centerCrop().into(ivPic);
        tvSubTitle.setText(title);
        tvPrice.setText(fee);

        type = getIntent().getStringExtra(IConsName.TYPE);
        if(IConstant.COMMUNICATE_SECOND.equals(type)){
            tvTime.setText("您选择的数量为：  " + count + " 小时");
        }else if(IConstant.COMMUNICATE_FIRST.equals(type)){
            tvTime.setText(TimeShowUtils.getTime( getIntent().getStringExtra("time")));
        }
        tvTotalPrice.setText((Integer.parseInt(fee) * Integer.parseInt(count)) + "" );

        isOnline = getIntent().getBooleanExtra("isOnline", false);
        if(isOnline){
            llRootPlace.setVisibility(View.GONE);
        }
    }

    @OnClick({R.id.tv_make_sure_order,/*R.id.rel_submit_order_slecte_place,*/R.id.rel_coupons,R.id.tv_xieyi})
    public void onClick(View view){
        switch (view.getId()){
            case R.id.tv_make_sure_order:
                if(!isOnline && TextUtils.isEmpty(etPlace.getText().toString())){
                    ToastUtils.makeToast("请先选择服务地点");
                    return;
                }
                tvMaleSureOrder.setClickable(false);
                tvMaleSureOrder.setTextColor(getResources().getColor(R.color.c_127_130_134));
                tvMaleSureOrder.setBackgroundResource(R.drawable.shape_bg_item_player_skill_choose);
                DialogUtils.loading(this,"正在下单中");
                OkHttpUtils.sendPostRequest(IConstant.APPLY_TWO, getMap(), new MyOnResultListener());   //提交订单
                break;
//            case R.id.rel_submit_order_slecte_place:    //选择地点
////                Intent intent = new Intent(this, SelectDatePlaceAllActivity.class);
////                startActivity(intent);
//                break;
            case R.id.rel_coupons:      //优惠券
                Intent intentCoupons = new Intent(this, CouponsActivity.class);
                intentCoupons.putExtra("isuserconpous",true);
                startActivityForResult(intentCoupons,REQUEST_CONPOUS);
                break;
            case R.id.tv_xieyi:
                Intent intent1 = new Intent(SubmitOrderActivity.this, DetailWebViewActivity.class);
                intent1.putExtra("title","预约协议");
                intent1.putExtra("url","http://api.wanduoduo.cc/new/a_order.html");
                startActivity(intent1);
                break;
        }
    }

    private Map<String,String> getMap(){
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        map.put(IConsName.GIFT_ID, gift_id);
//        if(IConstant.COMMUNICATE_FIRST.equals(type)){
        map.put("server_hour",getIntent().getStringExtra("time"));
//        }
        map.put(IConsName.NUM, count);
        serverPlace = etPlace.getText().toString();
        JSONObject jsonObject = new JSONObject();
        try {
            jsonObject.put("name",serverPlace);
            map.put("server_place", jsonObject.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        if(!TextUtils.equals("0",ticket_id))
            map.put("ticket_id",ticket_id);
        map.put("server_start_time",getIntent().getStringExtra("server_start_time"));
        map.put("server_end_time",getIntent().getStringExtra("server_end_time"));
        return map;
    }

    private class MyOnResultListener implements OkHttpUtils.OnResultListener {
        @Override
        public void onSuccess(String result) {
            try {
                JSONObject jsonObject = new JSONObject(result).getJSONObject("data").getJSONObject("data");
                PlayerInfoBean playerInfoBean = getIntent().getParcelableExtra("playerinfobean");
                playerInfoBean.setOrder_id(jsonObject.getString("order_id"));
                playerInfoBean.setTotalFee(jsonObject.getString("order_total_fee"));
                playerInfoBean.setTime(getIntent().getStringExtra("time"));
                playerInfoBean.setPlace(serverPlace);

                handler.sendEmptyMessage(SUBMIT_ORDER_SUCCESS);
                Intent intent = new Intent(SubmitOrderActivity.this, PayOrderActivity.class);
                intent.putExtra("type",1);
                intent.putExtra("isOnline",isOnline);
                intent.putExtra("playerInfoBean",playerInfoBean);
                startActivity(intent);
                finish();
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        @Override
        public void onFailure(int errCode,String errMsg) {
            Message obtain = Message.obtain();
            obtain.obj = errMsg;
            obtain.what = SUBMIT_ORDER_FAILURE;
            handler.sendMessage(obtain);
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(requestCode == REQUEST_CONPOUS){
            if(data != null){
                tvCoupons.setText("已选择");
                orderprice = data.getStringExtra("orderprice");
                if(Integer.parseInt(orderprice) + 0.00  <= (Double.parseDouble(fee)* Integer.parseInt(count))){
                    ticket_id = data.getStringExtra("cpcode");
                    cpprice = data.getStringExtra("cpprice");
                    tvTotalPrice.setText("￥" + (Integer.parseInt(fee) * Integer.parseInt(count) - Integer.parseInt(cpprice)) + "" );
                }else{
                    ToastUtils.makeToast("不符合使用条件");
                }
            }else{
                tvCoupons.setText("");
                ticket_id = "0";
                cpprice = "0";
                tvTotalPrice.setText("￥" + (Integer.parseInt(fee) * Integer.parseInt(count)) + "" );
            }
        }
        super.onActivityResult(requestCode, resultCode, data);
    }

    MyHandler handler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if(msg.what == SUBMIT_ORDER_FAILURE){
                ToastUtils.makeToast((String) msg.obj);
                DialogUtils.loadingDismiss();
            }else if(msg.what == SUBMIT_ORDER_SUCCESS){
                DialogUtils.loadingDismiss();
                tvMaleSureOrder.setClickable(true);
                tvMaleSureOrder.setTextColor(getResources().getColor(R.color.c_129_143_255));
                tvMaleSureOrder.setBackgroundResource(R.drawable.shape_bg_make_order);
            }
        }
    };

    @Override
    protected void onDestroy() {
        handler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }
}
