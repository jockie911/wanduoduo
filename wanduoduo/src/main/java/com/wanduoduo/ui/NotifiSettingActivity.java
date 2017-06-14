package com.wanduoduo.ui;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.TvDrawableUtils;
import com.wanduoduo.widget.CircleImageView;

import java.util.HashMap;
import java.util.Map;

import butterknife.Bind;
import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imlib.RongIMClient;
import io.rong.imlib.model.Conversation;

public class NotifiSettingActivity extends BaseActivity implements View.OnClickListener {

    @Bind(R.id.rel_person_info)
    RelativeLayout relPersonInfo;
    @Bind(R.id.iv_is_new_msg_notify)
    ImageView ivIsNewMsgNotify;
    @Bind(R.id.iv_is_chat_top)
    ImageView ivISChatTop;

    @Bind(R.id.iv_avctor)
    CircleImageView ivAvator;
    @Bind(R.id.tv_name)
    TextView tvNickName;
    @Bind(R.id.tv_age)
    TextView tvAge;
    @Bind(R.id.iv_vip_level)
    ImageView ivVipLevel;
    @Bind(R.id.rel_black)
    RelativeLayout relBlack;
    @Bind(R.id.iv_is_black)
    ImageView ivIsBlack;

    @Bind(R.id.v_blank)
    View vBlank;
    private boolean isSystem;
    private String sendid;
    private boolean isTop;
    private boolean isNewMsgNotify;
    private boolean isInBlack;
    private int[] vipRes = {R.drawable.vip_1,R.drawable.vip_2,R.drawable.vip_3,R.drawable.vip_4};

    @Override
    protected int getLayoutRes() {
        return R.layout.activity_notifi_setting;
    }

    @Override
    protected void initData() {
        isSystem = getIntent().getBooleanExtra("isSystem", true);
        sendid = getIntent().getStringExtra("sendid");

        if(isSystem || "KEFU147824193523989".equals(sendid)){
            tvTitle.setText("设置");
            relPersonInfo.setVisibility(View.GONE);
        }else{
            tvTitle.setText("个人资料");
            ivAvator.setClickable(false);
            relPersonInfo.setBackgroundColor(getResources().getColor(R.color.bgcolor));
            setPersonInfo();
            vBlank.setVisibility(View.VISIBLE);
            relBlack.setVisibility(View.VISIBLE);
            setBlack();
        }

        RongIM.getInstance().getConversation(getType(), sendid, new RongIMClient.ResultCallback<Conversation>() {
            @Override
            public void onSuccess(Conversation conversation) {
                if(conversation != null)
                    isTop = conversation.isTop();
                ivISChatTop.setBackgroundResource(isTop?R.drawable.btn_open_online:R.drawable.btn_close_online);
            }

            @Override
            public void onError(RongIMClient.ErrorCode errorCode) {

            }
        });

        RongIM.getInstance().getConversationNotificationStatus(getType(), sendid, new RongIMClient.ResultCallback<Conversation.ConversationNotificationStatus>() {
            @Override
            public void onSuccess(Conversation.ConversationNotificationStatus conversationNotificationStatus) {
                if(conversationNotificationStatus != null){
                    isNewMsgNotify = conversationNotificationStatus == Conversation.ConversationNotificationStatus.NOTIFY;
                    ivIsNewMsgNotify.setBackgroundResource(isNewMsgNotify? R.drawable.btn_open_online:R.drawable.btn_close_online);
                }
            }

            @Override
            public void onError(RongIMClient.ErrorCode errorCode) {

            }
        });
   }

    /**
     * 设置黑名单
     */
    private void setBlack() {
        RongIM.getInstance().getBlacklistStatus(sendid, new RongIMClient.ResultCallback<RongIMClient.BlacklistStatus>() {
            @Override
            public void onSuccess(RongIMClient.BlacklistStatus blacklistStatus) {
                isInBlack = (blacklistStatus == RongIMClient.BlacklistStatus.IN_BLACK_LIST);
                ivIsBlack.setBackgroundResource(isInBlack?
                        R.drawable.btn_open_online:R.drawable.btn_close_online);
            }

            @Override
            public void onError(RongIMClient.ErrorCode errorCode) {

            }
        });
    }

    @OnClick({R.id.iv_is_new_msg_notify,R.id.iv_is_chat_top,R.id.iv_is_black})
    public void onClick(View view){
        if(view.getId() == R.id.iv_is_new_msg_notify){
            isNewMsgNotify = !isNewMsgNotify;
            RongIM.getInstance().setConversationNotificationStatus(getType(), sendid, isNewMsgNotify ?
                            Conversation.ConversationNotificationStatus.NOTIFY : Conversation.ConversationNotificationStatus.DO_NOT_DISTURB,
                    new RongIMClient.ResultCallback<Conversation.ConversationNotificationStatus>() {
                        @Override
                        public void onSuccess(Conversation.ConversationNotificationStatus conversationNotificationStatus) {

                        }

                        @Override
                        public void onError(RongIMClient.ErrorCode errorCode) {

                        }
                    });
            ivIsNewMsgNotify.setBackgroundResource(isNewMsgNotify?R.drawable.btn_open_online:R.drawable.btn_close_online);
        }else if(view.getId() == R.id.iv_is_chat_top){
            isTop = !isTop;
            RongIM.getInstance().setConversationToTop(getType(),sendid,isTop);
            ivISChatTop.setBackgroundResource(isTop?R.drawable.btn_open_online:R.drawable.btn_close_online);
        }else if(view.getId() == R.id.iv_avctor){
            Intent intent = new Intent(this, InfoEditorPersonActivity.class);
            intent.putExtra(IConsName.ISCANEDIT,false);
            intent.putExtra(IConsName.USER_ID,sendid);
            startActivity(intent);
        }else if(view.getId() == R.id.iv_is_black){
            if(isInBlack){
                RongIM.getInstance().removeFromBlacklist(sendid, new RongIMClient.OperationCallback() {
                    @Override
                    public void onSuccess() {
                        isInBlack = !isInBlack;
                        ivIsBlack.setBackgroundResource(isInBlack?
                                R.drawable.btn_open_online:R.drawable.btn_close_online);
                    }

                    @Override
                    public void onError(RongIMClient.ErrorCode errorCode) {

                    }
                });
            }else{
                RongIM.getInstance().addToBlacklist(sendid, new RongIMClient.OperationCallback() {
                @Override
                public void onSuccess() {
                    isInBlack = !isInBlack;
                    ivIsBlack.setBackgroundResource(isInBlack?
                        R.drawable.btn_open_online:R.drawable.btn_close_online);
                }

                @Override
                public void onError(RongIMClient.ErrorCode errorCode) {

                }
                });
            }
        }
    }

    private Conversation.ConversationType getType(){
        return isSystem?Conversation.ConversationType.SYSTEM: Conversation.ConversationType.PRIVATE;
    }

    private void setPersonInfo() {
        OkHttpUtils.sendGetRequest(IConstant.USER_INFO, getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(final String result) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        setData(result);
                    }
                });
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    private void setData(String result) {
        ivAvator.setClickable(true);
        InfoBean infoBean = GsonTools.changeGsonToBean(result, InfoBean.class);
        Glide.with(this).load(infoBean.getData().getAvatar()).centerCrop().into(ivAvator);
        tvNickName.setText(infoBean.getData().getNickname());

        String vip_level = infoBean.getData().getVip_level();
        int level = Integer.parseInt(vip_level);
        if (level != 0){
            ivVipLevel.setVisibility(View.VISIBLE);
            ivVipLevel.setImageResource(vipRes[level - 1]);
        }

        if(infoBean.getData().getGender() == 1){
            tvAge.setBackgroundResource(R.drawable.shape_age_male);
            TvDrawableUtils.setTvDrawableLeft(tvAge,R.color.white,R.drawable.icon_male);
            tvAge.setText(infoBean.getData().getAge() + "");
        }else if(infoBean.getData().getGender() == 2){
            tvAge.setBackgroundResource(R.drawable.shape_age_female);
            TvDrawableUtils.setTvDrawableLeft(tvAge,R.color.white,R.drawable.icon_female);
            tvAge.setText(infoBean.getData().getAge() + "");
        }else{
            tvAge.setVisibility(View.INVISIBLE);
        }

        ivAvator.setOnClickListener(this);
    }

    private Map<String,String> getMap(){
        Map<String,String> map = new HashMap<>();
        map.put(IConsName.USER_ID,sendid);
        map.put(IConsName.TOKEN, SPUtils.getStringData(IConsName.TOKEN,""));
        return map;
    }
}
