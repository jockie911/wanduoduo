package com.wanduoduo.ui.info;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;

import com.wanduoduo.R;
import com.wanduoduo.base.BaseActivity;
import com.wanduoduo.bean.InfoBean;
import com.wanduoduo.istatic.IConsName;
import com.wanduoduo.istatic.IConstant;
import com.wanduoduo.rongCloud.CmtMessage;
import com.wanduoduo.rongCloud.CmtMessageProvider;
import com.wanduoduo.rongCloud.OrderMessage;
import com.wanduoduo.rongCloud.OrderMessageProvider;
import com.wanduoduo.rongCloud.SysMessage;
import com.wanduoduo.rongCloud.SysMessageProvider;
import com.wanduoduo.ui.SystemCmtActivity;
import com.wanduoduo.ui.SystemMessageActivity;
import com.wanduoduo.utils.GsonTools;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.MapUtils;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;
import com.wanduoduo.utils.ToastUtils;

import java.util.List;

import butterknife.Bind;
import butterknife.OnClick;
import io.rong.imkit.RongIM;
import io.rong.imkit.model.UIConversation;
import io.rong.imlib.RongIMClient;
import io.rong.imlib.model.Conversation;
import io.rong.imlib.model.UserInfo;

public class MsgActivity extends BaseActivity {

    @Bind(R.id.tv_right_title_bar)
    TextView tvRightTitleBar;
    @Override
    protected int getLayoutRes() {
        return R.layout.activity_msg;
    }

    @Override
    protected void initData() {
        RongIM.getInstance().setCurrentUserInfo(new UserInfo("1","系统消息",Uri.parse("http://image.wanduoduo.cc/assets/avatars/xitong.png")));
        RongIM.getInstance().setCurrentUserInfo(new UserInfo("2","赞",Uri.parse("http://image.wanduoduo.cc/assets/avatars/zan.png")));
        RongIM.getInstance().setCurrentUserInfo(new UserInfo("4","订单小秘书",Uri.parse("http://image.wanduoduo.cc/assets/avatars/dingd.png")));
        RongIM.getInstance().setCurrentUserInfo(new UserInfo("7","评论",Uri.parse("http://image.wanduoduo.cc/assets/avatars/plun.png")));

        RongIM.registerMessageType(CmtMessage.class);
        RongIM.registerMessageTemplate(new CmtMessageProvider());

        RongIM.registerMessageType(SysMessage.class);
        RongIM.registerMessageTemplate(new SysMessageProvider());

        RongIM.registerMessageType(OrderMessage.class);
        RongIM.registerMessageTemplate(new OrderMessageProvider());

        tvRightTitleBar.setText("忽略未读");

        RongIM.setConversationListBehaviorListener(new RongIM.ConversationListBehaviorListener() {
            @Override
            public boolean onConversationPortraitClick(Context context, Conversation.ConversationType conversationType, String s) {
                return conversationType == Conversation.ConversationType.SYSTEM;
            }

            @Override
            public boolean onConversationPortraitLongClick(Context context, Conversation.ConversationType conversationType, String s) {
                return false;
            }

            @Override
            public boolean onConversationLongClick(Context context, View view, UIConversation uiConversation) {
                return false;
            }

            @Override
            public boolean onConversationClick(Context context, View view, UIConversation uiConversation) {
                boolean isSystem = uiConversation.getConversationType().toString().equalsIgnoreCase("system");
                if(isSystem){
                    String sendId = uiConversation.getConversationSenderId();
                    Intent intent = new Intent();
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    intent.putExtra("sendID",sendId);
                    intent.putExtra("title",uiConversation.getUIConversationTitle());
                    if(TextUtils.equals("1",sendId)){
                        intent.setClass(context,SystemMessageActivity.class);
                    }else if(TextUtils.equals("2",sendId) || TextUtils.equals("7",sendId)){
                        intent.setClass(context,SystemCmtActivity.class);
                    }else if(TextUtils.equals("4",sendId)){
                        intent.setClass(context,SystemCmtActivity.class);
                    }
                    startActivity(intent);
                    return true;
                }
                return false;
            }
        });


        RongIM.getInstance().getConversationList(new RongIMClient.ResultCallback<List<Conversation>>() {
            @Override
            public void onSuccess(List<Conversation> conversations) {
                if(conversations != null){
                    for (Conversation conversation : conversations) {
                        setUserProvider(conversation.getSenderUserId());
                    }
                }
            }

            @Override
            public void onError(RongIMClient.ErrorCode errorCode) {

            }
        },Conversation.ConversationType.PRIVATE);

        setUserProvider(SPUtils.getStringData(IConsName.USER_ID,""));
    }

    private void setUserProvider(String id) {
        if(TextUtils.isEmpty(id)) return;
        OkHttpUtils.sendGetRequest(IConstant.USER_INFO, MapUtils.clear().addParams("user_id", id).getMap(), new OkHttpUtils.OnResultListener() {
            @Override
            public void onSuccess(final String result) {
                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        InfoBean infoBean = GsonTools.changeGsonToBean(result, InfoBean.class);
                        if(RongIM.getInstance() != null && infoBean != null && infoBean.getData() != null){
                            RongIM.getInstance().setCurrentUserInfo(new UserInfo(infoBean.getData().getId(),infoBean.getData().getNickname(), Uri.parse(infoBean.getData().getAvatar())));
                        }
                    }
                });
            }

            @Override
            public void onFailure(int errCode, String errMsg) {

            }
        });
    }

    @OnClick({R.id.tv_right_title_bar})
    public void onClick(View view){
        if(RongIM.getInstance() != null){
            RongIM.getInstance().getConversationList(new RongIMClient.ResultCallback<List<Conversation>>() {
                @Override
                public void onSuccess(List<Conversation> conversations) {
                    if(conversations != null){
                        for (Conversation conversation : conversations) {
                            RongIM.getInstance().clearMessagesUnreadStatus(conversation.getConversationType(),conversation.getTargetId());
                        }
                    }else{
                        ToastUtils.makeToast("暂时没有消息");
                    }
                }

                @Override
                public void onError(RongIMClient.ErrorCode errorCode) {

                }
            },Conversation.ConversationType.PRIVATE, Conversation.ConversationType.SYSTEM,Conversation.ConversationType.CUSTOMER_SERVICE);
        }
    }
}
