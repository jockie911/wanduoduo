package com.wanduoduo.adapter.info;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.android.liuzhuang.rcimageview.RoundCornerImageView;
import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseApp;
import com.wanduoduo.base.MyBaseAdapter;
import com.wanduoduo.bean.InfoBuyServiceBean;
import com.wanduoduo.bean.PlayerInfoBean;
import com.wanduoduo.fragment.info.AlreadyBuyServiceAllFragment;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.InfoWritingEvaluationActivity;
import com.wanduoduo.ui.order.PayOrderActivity;
import com.wanduoduo.utils.DialogUtils;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.TimeShowUtils;

import org.json.JSONException;
import org.json.JSONObject;

import butterknife.Bind;
import butterknife.ButterKnife;

/**
 * Created by jockie on 2016/8/15.
 */
public class BuyServiceAdapter extends MyBaseAdapter<InfoBuyServiceBean.DataBean.DataListBean> {

    private static final int USER_AGREE_ORDER = 1;
    private static final int CLICK_PAY_FOR_ORDER = 11;
    private static final int CLCK_EVALUATION_ORDER = 12;
    private static final int CLCK_ORDER_OVER = 13;
    private static final int USER_OVER_ORDER = 14;
    private Activity activity;
    private AlreadyBuyServiceAllFragment fragment;
    private boolean isOrgina;

    public BuyServiceAdapter(boolean isOrgina, Activity activity,AlreadyBuyServiceAllFragment fragment){
        this.isOrgina = isOrgina;
        this.activity = activity;
        this.fragment = fragment;
    }

    @Override
    public View getView(int position, View view, ViewGroup viewGroup) {
        if (view == null)
            view = View.inflate(viewGroup.getContext(), R.layout.item_lv_buy_service, null);
        InfoBuyServiceBean.DataBean.DataListBean dataListBean = mData.get(position);

        ViewHolder holder = ViewHolder.getHolder(view);
        holder.itemTvTitle.setText(mData.get(position).getGift().getTitle());

        Glide.with(viewGroup.getContext()).load(mData.get(position).getGift().getCover_pic()).centerCrop().into(holder.itemIvPhoto);
        holder.itemTvMoney.setText("实付  " + dataListBean.getOrder_total_fee());
        holder.itemTvTime.setText("时间  " + TimeShowUtils.getTime(dataListBean.getOrder_server_time()));

        //ispay  0；未支付 1：已支付 2，退款中 ，3已退款
        //status -1未确认  0：取消 1进行中 2：结束 未评论 3 结束已经评论
        switch (dataListBean.getOrder_status()){
            case "-1":
                setTextStatus(holder,false,true);
                if(isOrgina){
                    if("0".equals(dataListBean.getOrder_ispay())){  //服务者等待对方付款
                        holder.itemTvPayOrDiscuss.setText("等待对方付款");
                        setTextColor(holder.itemTvPayOrDiscuss,R.color.c_mei_hong);
                        holder.itemTvPayOrDiscuss.setBackgroundDrawable(null);
                    }else if("1".equals(dataListBean.getOrder_ispay())){    //服务者等待接单
                        holder.itemTvPayOrDiscuss.setText("确认接单");
                        setTextColor(holder.itemTvPayOrDiscuss,R.color.white);
                        holder.itemTvPayOrDiscuss.setBackgroundDrawable(viewGroup.getResources().getDrawable(R.drawable.shape_meihong_bg));
                        holder.itemTvPayOrDiscuss.setOnClickListener(new MyOnClickListener(position,USER_AGREE_ORDER));
                    }
                }else{
                    if("0".equals(dataListBean.getOrder_ispay())){  // 玩家去付款
                        holder.itemTvPayOrDiscuss.setText("立即支付");
                        setTextColor(holder.itemTvPayOrDiscuss,R.color.white);
                        holder.itemTvPayOrDiscuss.setBackgroundDrawable(viewGroup.getResources().getDrawable(R.drawable.shape_meihong_bg));
                        holder.itemTvPayOrDiscuss.setOnClickListener(new MyOnClickListener(position,CLICK_PAY_FOR_ORDER));
                    }else if("1".equals(dataListBean.getOrder_ispay())){    // 玩家等待对方确认接单
                        holder.itemTvPayOrDiscuss.setText("等待对方接单");
                        setTextColor(holder.itemTvPayOrDiscuss,R.color.c_mei_hong);
                        holder.itemTvPayOrDiscuss.setBackgroundDrawable(null);
                    }
                }
                break;
            case "0":
                setTextStatus(holder,true,false);
                holder.ivStatus.setBackgroundResource(R.drawable.buy_service_cancle_icon);
                break;
            case "1":
                setTextStatus(holder,false,true);
                if(isOrgina){
                    setTextStatus(holder,false,false);
                    setTextColor(holder.itemTvPayOrDiscuss,R.color.c_mei_hong);
                     holder.itemTvPayOrDiscuss.setBackgroundDrawable(null);
                }else{
                    if("1".equals(dataListBean.getOrder_ispay())){
                        holder.itemTvPayOrDiscuss.setText("结束订单");
                        setTextColor(holder.itemTvPayOrDiscuss,R.color.white);
                        holder.itemTvPayOrDiscuss.setBackgroundDrawable(viewGroup.getResources().getDrawable(R.drawable.shape_meihong_bg));
                        holder.itemTvPayOrDiscuss.setOnClickListener(new MyOnClickListener(position,CLCK_ORDER_OVER));
                    } else if("2".equals(dataListBean.getOrder_ispay())){
                        setTextStatus(holder,true,false);
                        holder.ivStatus.setBackgroundResource(R.drawable.buy_service_back_money_icon);
                    }
                }
                break;
            case "2":
                if(isOrgina){
                    setTextStatus(holder,true, false);
                    holder.ivStatus.setBackgroundResource(R.drawable.buy_service_order_over_icon);
                }else{
                    setTextStatus(holder,false,true);
                    holder.itemTvPayOrDiscuss.setBackgroundDrawable(viewGroup.getResources().getDrawable(R.drawable.shape_meihong_bg));
                    holder.itemTvPayOrDiscuss.setText("去评价");
                    holder.itemTvPayOrDiscuss.setOnClickListener(new MyOnClickListener(position,CLCK_EVALUATION_ORDER));
                    setTextColor(holder.itemTvPayOrDiscuss,R.color.white);
                }
                break;
            case "3":
                if(isOrgina){
                    setTextStatus(holder,true, false);
                    holder.ivStatus.setBackgroundResource(R.drawable.buy_service_order_over_icon);
                }else{
                    setTextStatus(holder,true, false);
                    holder.ivStatus.setBackgroundResource(R.drawable.buy_service_order_over_icon);
                }
                break;
        }

        if(!isOrgina && "3".equals(dataListBean.getOrder_ispay())){
            setTextStatus(holder,true,false);
            holder.ivStatus.setBackgroundResource(R.drawable.buy_service_yituikuan_icon);
        }
        return view;
    }

    /**
     * 文本颜色变成灰色,控制右侧取消是否显示，控制底部是否显示
     * @param holder
     */
    private void setTextStatus(ViewHolder holder,boolean isRightIconShow,boolean isBottomRelShow) {
        if(isRightIconShow){
            holder.ivStatus.setVisibility(View.VISIBLE);
        }else{
            holder.ivStatus.setVisibility(View.INVISIBLE);
        }
         if(isBottomRelShow){
             holder.itemRelPayOrDiscuss.setVisibility(View.VISIBLE);
         }else{
             holder.itemRelPayOrDiscuss.setVisibility(View.GONE);
         }

    }

    private void setTextColor(TextView tv, int color) {
        tv.setTextColor(BaseApp.getContext().getResources().getColor(color));
    }

    static class ViewHolder {
        @Bind(R.id.item_iv_photo)
        RoundCornerImageView itemIvPhoto;
        @Bind(R.id.item_tv_title)
        TextView itemTvTitle;
        @Bind(R.id.item_tv_time)
        TextView itemTvTime;
        @Bind(R.id.item_tv_money)
        TextView itemTvMoney;
        @Bind(R.id.item_iv_status)
        ImageView ivStatus;
        @Bind(R.id.item_tv_pay_or_discuss)
        TextView itemTvPayOrDiscuss;
        @Bind(R.id.item_rel_pay_or_discuss)
        RelativeLayout itemRelPayOrDiscuss;

        private static ViewHolder getHolder(View convertView) {
            ViewHolder holder = (ViewHolder) convertView.getTag();
            if (holder == null) {
                holder = new ViewHolder(convertView);
                convertView.setTag(holder);
            }
            return holder;
        }
        ViewHolder(View convertView) {
            ButterKnife.bind(this, convertView);
        }
    }

    private class MyOnClickListener implements View.OnClickListener {

        private int clickStatus;
        private int position;

        public MyOnClickListener(int position, int clickStatus) {
            this.position = position;
            this.clickStatus = clickStatus ;
        }

        @Override
        public void onClick(View view) {
            switch (clickStatus){
                case CLICK_PAY_FOR_ORDER:      //未支付
                    Intent intent1 = new Intent(BaseApp.getContext(),PayOrderActivity.class);
                    intent1.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    intent1.putExtra("playerInfoBean",getPlayerInfoBean(position));
                    intent1.putExtra("create_time",mData.get(position).getOrder_create_time());
                    intent1.putExtra(IConsName.TYPE,2);
                    BaseApp.getContext().startActivity(intent1);
                    break;
                case CLCK_EVALUATION_ORDER:       //评论
                    orderOverToEvaluation(position);
                    break;
                /**    --------------------    服务者  与    客户    ---------------------  */
                case USER_AGREE_ORDER:
                    DialogUtils.showDialog(activity, "确认订单?", "点击确认订单后,用户会收到确认通知,请在约定时间内完成服务", new DialogUtils.DialogIF() {
                        @Override
                        public void positiviButtom() {
                            OkHttpUtils.sendPostRequest(IConstant.ORDER_CONFIRMTWO, MapUtils.clear().addParams("order_id",mData.get(position).getOrder_id()).
                                    addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,"")).getMap(),new MyOnRrefresListen(USER_AGREE_ORDER,position));
                        }
                    });
                    break;
                case CLCK_ORDER_OVER:
                    DialogUtils.showDialog(activity, "结束订单?", "服务者是否在规定时间内提供了服务呢,服务完成请点击确定", new DialogUtils.DialogIF() {
                        @Override
                        public void positiviButtom() {
                            OkHttpUtils.sendPostRequest(IConstant.ORDER_OVER, MapUtils.clear().addParams("order_id",mData.get(position).getOrder_id()).
                                    addParams(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,"")).getMap(),new MyOnRrefresListen(USER_OVER_ORDER,position));
                        }
                    });
                    break;
            }
        }
    }

    private void orderOverToEvaluation(int position) {
        Intent intent2 = new Intent(BaseApp.getContext(),InfoWritingEvaluationActivity.class);
        intent2.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        intent2.putExtra(IConsName.ORDER_ID,mData.get(position).getOrder_id());
        intent2.putExtra("gift_id",mData.get(position).getGift().getId());
        intent2.putExtra("avatar",mData.get(position).getGift().getOrganizer().getAvatar());
        intent2.putExtra("nickname",mData.get(position).getGift().getOrganizer().getNickname());
        BaseApp.getContext().startActivity(intent2);
    }

    private PlayerInfoBean getPlayerInfoBean(int position){
        PlayerInfoBean playerInfoBean = new PlayerInfoBean();
        InfoBuyServiceBean.DataBean.DataListBean data = mData.get(position);
        playerInfoBean.setOrder_id(data.getOrder_id());
        playerInfoBean.setOrder_ispay(data.getOrder_ispay());
        playerInfoBean.setTotalFee(data.getOrder_total_fee());
        try {
            String name = new JSONObject(data.getOrder_address()).getString("name");
            playerInfoBean.setPlace(name);
        } catch (JSONException e) {
            e.printStackTrace();
        }

        InfoBuyServiceBean.DataBean.DataListBean.GiftBean gift = data.getGift();
        playerInfoBean.setId(gift.getId());
        playerInfoBean.setAge(gift.getOrganizer().getAge());
        playerInfoBean.setAvatar(gift.getOrganizer().getAvatar());
        playerInfoBean.setCover_pic(gift.getCover_pic());
        playerInfoBean.setFee(gift.getFee());
        playerInfoBean.setNickname(gift.getOrganizer().getNickname());
        playerInfoBean.setGender(gift.getOrganizer().getGender());
        playerInfoBean.setTitle(gift.getTitle());
        playerInfoBean.setUser_id(gift.getOrganizer().getId() );
        playerInfoBean.setTime(data.getOrder_server_time());
        return playerInfoBean;
    }


    private class MyOnRrefresListen implements OkHttpUtils.OnResultListener {

        private int requestCode;
        private int position;

        public MyOnRrefresListen(int requestCode){
            this.requestCode = requestCode;
        }

        public MyOnRrefresListen(int requestCode, int position) {
            this.requestCode = requestCode;
            this.position = position;
        }

        @Override
        public void onSuccess(String result) {
            Message obtain = Message.obtain();
            obtain.obj = position;
            switch (requestCode){
                case USER_AGREE_ORDER:
                    obtain.what = USER_AGREE_ORDER;
                    break;
                case USER_OVER_ORDER:
                    obtain.what = USER_OVER_ORDER;
                    break;
            }
            handler.sendMessage(obtain);
        }

        @Override
        public void onFailure(int errCode, String errMsg) {
            JLog.d(errMsg);
        }
    }

    Handler handler = new Handler(Looper.getMainLooper()){
        @Override
        public void handleMessage(Message msg) {
            if (msg.what == USER_AGREE_ORDER){
                int position = (int) msg.obj;
                mData.get(position).setOrder_status("1");
                fragment.refreshCurrentFragment();
                notifyDataSetChanged();
            }else if(msg.what == USER_OVER_ORDER){
                orderOverToEvaluation((int)msg.obj);
            }
        }
    };
}
