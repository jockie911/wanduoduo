package com.wanduoduo.receiver;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

import com.wanduoduo.ui.SystemCmtActivity;
import com.wanduoduo.ui.SystemMessageActivity;

import io.rong.push.RongPushClient;
import io.rong.push.notification.PushMessageReceiver;
import io.rong.push.notification.PushNotificationMessage;

public class MessageNotificationReceiver extends PushMessageReceiver {

    @Override
    public boolean onNotificationMessageArrived(Context context, PushNotificationMessage pushNotificationMessage) {
        if(pushNotificationMessage.getConversationType() == RongPushClient.ConversationType.PRIVATE){

        }
        return false;
    }

    @Override
    public boolean onNotificationMessageClicked(Context context, PushNotificationMessage pushNotificationMessage) {
        boolean isSystem = pushNotificationMessage.getConversationType().toString().equalsIgnoreCase("system");
        if(isSystem){
            String sendId = pushNotificationMessage.getSenderId();
            Intent intent = new Intent();
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            intent.putExtra("sendID",sendId);
            intent.putExtra("title",pushNotificationMessage.getPushTitle());
            if(TextUtils.equals("1",sendId)){
                intent.setClass(context,SystemMessageActivity.class);
            }else if(TextUtils.equals("2",sendId) || TextUtils.equals("7",sendId)){
                intent.setClass(context,SystemCmtActivity.class);
            }else if(TextUtils.equals("4",sendId)){
                intent.setClass(context,SystemCmtActivity.class);
            }
            context.startActivity(intent);
            return true;
        }
        return false;
    }
}
