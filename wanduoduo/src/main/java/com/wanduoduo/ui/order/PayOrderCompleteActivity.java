package com.wanduoduo.ui.order;

import android.content.Intent;
import android.os.Message;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.OrderInfoBean;
import com.wanduoduo.bean.PlayerInfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.TimeShowUtils;
import com.wanduoduo.utils.ToastUtils;
import com.wanduoduo.utils.TvDrawableUtils;
import com.wanduoduo.widget.ActionSheetDialog;
import com.wanduoduo.widget.CircleImageView;
import com.wanduoduo.widget.MyHandler;

import butterknife.Bind;
import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imlib.model.CSCustomServiceInfo;

public class PayOrderCompleteActivity extends BaseActivity {

    private static final int ORDER_CANCEL_SUCCESS = 3;
    private static final int ORDER_CANCEL_FAILURE = 4;
    private static final int ORDER_REFUND_SUCCESS = 5;
    private static final int ORDER_REFUND_FAILURE = 6;
    private static final int ORDER_INFO_SUCCESS = 7;
    private static final int ORDER_INFO_FAILURE = 8;
    @Bind(R.id.iv_right_title_bar)
    ImageView ivRightTitleBar;
    @Bind(R.id.fl_yu_yue_ok)
    FrameLayout flYuYueOk;
    private final static int ORDER_JUST_NOW = 1;    //刚刚下的订单
    private final static int ORDER_FROM_HISTOEY = 2;    //从历史记录中的打开的
    @Bind(R.id.tv_time)
    TextView tvTime;
    @Bind(R.id.tv_place)
    TextView tvPlace;
    @Bind(R.id.tv_money)
    TextView tvMoney;
    @Bind(R.id.tv_order_id)
    TextView tvOrderId;
    @Bind(R.id.iv_avctor)
    CircleImageView ivAvctor;
    @Bind(R.id.iv_vip)
    ImageView ivVip;
    @Bind(R.id.tv_name)
    TextView tvName;
    @Bind(R.id.tv_age)
    TextView tvAge;
    @Bind(R.id.v_invis)
    View vInvis;
    @Bind(R.id.ll_root_place)
    LinearLayout llRootPlace;
    @Bind(R.id.tv_user_info_name)
    TextView tvUserInfoName;
    @Bind(R.id.rel_person_info)
    RelativeLayout relPersonInfo;
    private String user_id;
    private PlayerInfoBean playerInfoBean;
    private int type;
    private OrderInfoBean orderInfoBean;
    private int ispay;
    private int status;
    private boolean isOnline;
    private boolean isOrgnazer;

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_pay_oder_complete;
    }

    @Override
    protected void initData() {
        tvTitle.setText("订单详情");
        ivRightTitleBar.setImageDrawable(getResources().getDrawable(R.drawable.share));

        relPersonInfo.setBackgroundColor(getResources().getColor(R.color.bgcolor_deep_old));

        playerInfoBean = getIntent().getParcelableExtra("playerInfoBean");
        type = getIntent().getIntExtra("type", -1);
        if (type == ORDER_FROM_HISTOEY) {
            flYuYueOk.setVisibility(View.GONE);
            ispay = Integer.parseInt(playerInfoBean.getOrder_ispay());
            status = Integer.parseInt(playerInfoBean.getOrder_status());
            isOrgnazer = getIntent().getBooleanExtra("isOrgnazer", false);
            if(isOrgnazer){
                tvUserInfoName.setText("用户信息");
            }
        }
        setData();
        isOnline = getIntent().getBooleanExtra("isOnline", false);
        if(isOnline){
            llRootPlace.setVisibility(View.GONE);
            vInvis.setVisibility(View.GONE);
        }
    }

    private void setData() {
        tvTime.setText(TimeShowUtils.getTime(playerInfoBean.getTime()));
        tvPlace.setText(playerInfoBean.getPlace());
        tvOrderId.setText(playerInfoBean.getOrder_id());
        tvMoney.setText(playerInfoBean.getTotalFee());
        tvName.setText(playerInfoBean.getNickname());
        Glide.with(this).load(playerInfoBean.getAvatar()).centerCrop().into(ivAvctor);
        if (playerInfoBean.getGender() == 1){
            TvDrawableUtils.setTvDrawableLeft(tvAge, R.color.white,R.drawable.icon_male);
            tvAge.setBackgroundResource(R.drawable.shape_age_male);
        }else if(playerInfoBean.getGender() == 2){
            TvDrawableUtils.setTvDrawableLeft(tvAge,R.color.white,R.drawable.icon_female);
            tvAge.setBackgroundResource(R.drawable.shape_age_female);
        }
        tvAge.setText(playerInfoBean.getAge() + "");
        user_id = playerInfoBean.getUser_id();
    }

    @OnClick({R.id.iv_right_title_bar, R.id.rel_person_info,R.id.fl_chatting})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.iv_right_title_bar:
                alertRightTitleBarDialog();
//                requestOrderInfo();
                break;
            case R.id.rel_person_info:
                Intent intent = new Intent(this, InfoEditorPersonActivity.class);
                intent.putExtra(IConsName.ISCANEDIT, false);
                intent.putExtra("user_id",user_id);
                startActivity(intent);
                break;
            case R.id.fl_chatting:
                if(RongIM.getInstance() != null)
                    RongIM.getInstance().startPrivateChat(this,user_id,playerInfoBean.getNickname());
                break;
        }
    }

    /**
     * 点击右侧的弹窗
     */
    private void alertRightTitleBarDialog() {
//        if(orderInfoBean == null || orderInfoBean.getData() == null) return;
//        String order_ispay = orderInfoBean.getData().getSonData().getOrder_ispay();
//        String order_status = orderInfoBean.getData().getSonData().getOrder_status();

        if(type == ORDER_JUST_NOW || (!isOrgnazer && (status == 1 && ispay == 1))){
            new ActionSheetDialog(this).builder()
                    .addSheetItem("取消订单并退款", ActionSheetDialog.SheetItemColor.Red, new ActionSheetDialog.OnSheetItemClickListener() {
                        @Override
                        public void onClick(int which) {
                            orderRefund();
                        }
                    })
                    .addSheetItem("联系客服", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                        @Override
                        public void onClick(int which) {
                            connectKeFu();
                        }
                    }).show();
        }else if(type == ORDER_FROM_HISTOEY && (!isOrgnazer && status == -1 && ((ispay == 0) || (ispay == 1)))){
            new ActionSheetDialog(this).builder()
                    .addSheetItem("取消订单", ActionSheetDialog.SheetItemColor.Red, new ActionSheetDialog.OnSheetItemClickListener() {
                        @Override
                        public void onClick(int which) {
                            orderCancel();
                        }
                    })
                    .addSheetItem("联系客服", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                        @Override
                        public void onClick(int which) {
                            connectKeFu();
                        }
                    }).show();
            }else{
            alertDialogDefault();
        }
    }

    private void alertDialogDefault() {
        new ActionSheetDialog(this).builder()
                .addSheetItem("联系客服", ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() {
                    @Override
                    public void onClick(int which) {
                        connectKeFu();
                    }
                }).show();
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
                        status = 0;
                        handler.sendEmptyMessage(ORDER_CANCEL_SUCCESS);
                    }

                    @Override
                    public void onFailure(int errCode, String errMsg) {
                        Message obtain = Message.obtain();
                        obtain.what = ORDER_CANCEL_FAILURE;
                        obtain.obj = errMsg;
                        handler.sendMessage(obtain);
                    }
                });
            }
        });
    }

    /**
     * 订单退款
     */
    private void orderRefund() {
        DialogUtils.showDialog(this, "订单一旦取消不可恢复，确定要取消吗?", new DialogUtils.DialogIF() {
            @Override
            public void positiviButtom() {
                OkHttpUtils.sendPostRequest(IConstant.ORDER_REFURN_TWO, MapUtils.clear().addParams("order_id", playerInfoBean.getOrder_id())
                        .addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN, "")).getMap(), new OkHttpUtils.OnResultListener() {
                    @Override
                    public void onSuccess(String result) {
                        handler.sendEmptyMessage(ORDER_REFUND_SUCCESS);
                    }

                    @Override
                    public void onFailure(int errCode, String errMsg) {
                        Message obtain = Message.obtain();
                        obtain.what = ORDER_REFUND_FAILURE;
                        obtain.obj = errMsg;
                        handler.sendMessage(obtain);
                    }
                });
            }
        });
    }

    private void connectKeFu() {
        if(RongIM.getInstance() != null){
            CSCustomServiceInfo.Builder csBuilder = new CSCustomServiceInfo.Builder();
            CSCustomServiceInfo csInfo = csBuilder.nickName("玩多多客服").build();
            RongIM.getInstance().startCustomerServiceChat(PayOrderCompleteActivity.this, "KEFU147824193523989", "玩多多客服",csInfo);
        }
    }

    private void requestOrderInfo(){
        OkHttpUtils.sendPostRequest(IConstant.ORDERINFO, MapUtils.clear().addParams("order_id", playerInfoBean.getOrder_id()).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(String result) {
                orderInfoBean = GsonTools.changeGsonToBean(result, OrderInfoBean.class);
                handler.sendEmptyMessage(ORDER_INFO_SUCCESS);
            }

            @Override
            public void onFailure(int errCode, String errMsg) {
                handler.sendEmptyMessage(ORDER_INFO_FAILURE);
            }
        });
    }

    MyHandler handler = new MyHandler(this){
        @Override
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what){
                case ORDER_CANCEL_SUCCESS:
                    ToastUtils.makeToast("取消订单成功");
                    break;
                case ORDER_CANCEL_FAILURE:
                    ToastUtils.makeToast((String) msg.obj);
                    break;
                case ORDER_REFUND_SUCCESS:
                    ispay = 2;
                    flYuYueOk.setVisibility(View.GONE);
                    ToastUtils.makeToast("取消订单成功,支付金额将尽快退回的账户");
                    break;
                case ORDER_REFUND_FAILURE:
                    ToastUtils.makeToast((String) msg.obj);
                    break;
                case ORDER_INFO_SUCCESS:
                    alertRightTitleBarDialog();
                    break;
                case ORDER_INFO_FAILURE:
                    alertDialogDefault();
                    break;
            }
        }
    };

    @Override
    protected void onDestroy() {
        handler.removeCallbacksAndMessages(null);
        super.onDestroy();
    }
}
