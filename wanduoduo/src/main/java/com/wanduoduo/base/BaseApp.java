package com.wanduoduo.base;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.support.multidex.MultiDex;
import android.text.TextUtils;
import android.view.View;

import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.umeng.socialize.PlatformConfig;
import com.umeng.socialize.UMShareAPI;
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
import com.wanduoduo.ui.info.InfoEditorPersonActivity;
import com.wanduoduo.utils.JLog;
import com.wanduoduo.utils.OkHttpUtils;
import com.wanduoduo.utils.SPUtils;

import java.io.File;

import io.rong.imkit.RongIM;
import io.rong.imkit.model.UIConversation;
import io.rong.imlib.RongIMClient;
import io.rong.imlib.model.Conversation;
import io.rong.imlib.model.Message;
import io.rong.imlib.model.UserInfo;
import mabeijianxi.camera.VCamera;
import mabeijianxi.camera.util.DeviceUtils;

/**
 * Created by jockie on 2016/7/7.
 */
public class BaseApp extends Application {

    private static Context context;

    static {
        PlatformConfig.setWeixin(IConstant.WXAPP_ID, "2c9fb8b488055e0806f0b7699f11a519");
        PlatformConfig.setQQZone("1104909805", "9zBsBiQaCgWpX4kt");
    }

    @Override
    public void onCreate() {
        super.onCreate();
        context = getApplicationContext();
//        Fresco.initialize(getApplicationContext());
        initCityListData();

        final IWXAPI msgApi = WXAPIFactory.createWXAPI(context, null);
        msgApi.registerApp(IConstant.WXAPP_ID);

        if (getApplicationInfo().packageName.equals(getCurProcessName(getApplicationContext())) ||
                "io.rong.push".equals(getCurProcessName(getApplicationContext()))) {
            RongIM.init(this);
        }
        String rc_token = SPUtils.getStringData(IConsName.RC_TOKEN, "");
        if(!TextUtils.isEmpty(rc_token)){
            connect(rc_token);
        }

        initSmallVideo(getContext());

        initCityCashAll();

        UMShareAPI.get(this);
    }

    /**
     * 自定义消息  注册模板
     */
    private void initSelfMessage() {
        RongIM.registerMessageType(CmtMessage.class);
        RongIM.registerMessageTemplate(new CmtMessageProvider());

        RongIM.registerMessageType(SysMessage.class);
        RongIM.registerMessageTemplate(new SysMessageProvider());

        RongIM.registerMessageType(OrderMessage.class);
        RongIM.registerMessageTemplate(new OrderMessageProvider());
    }

    /**
     * 所有城市的缓存
     */
    private void initCityCashAll() {
        if(TextUtils.isEmpty(SPUtils.getStringData(IConsName.CASH_CITY_All, "")))
            OkHttpUtils.sendGetRequest(IConstant.ALL_CITY, null, new OkHttpUtils.OnResultListener() {
                @Override
                public void onSuccess(String result) {
                    SPUtils.savaStringData(IConsName.CASH_CITY_All,result);
                }

                @Override
                public void onFailure(int errCode, String errMsg) {

                }
            });
    }

    private void initRongIMBrhevieClick() {
        RongIM.setConversationBehaviorListener(new RongIM.ConversationBehaviorListener() {
            @Override
            public boolean onUserPortraitClick(Context context, Conversation.ConversationType conversationType, UserInfo userInfo) {
                if(conversationType == Conversation.ConversationType.PRIVATE){
                    Intent intent = new Intent(getContext(), InfoEditorPersonActivity.class);
                    intent.putExtra(IConsName.ISCANEDIT,false);
                    intent.putExtra(IConsName.USER_ID,userInfo.getUserId());
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    getContext().startActivity(intent);
                    return true;
                }
                return false;
            }

            @Override
            public boolean onUserPortraitLongClick(Context context, Conversation.ConversationType conversationType, UserInfo userInfo) {
                return false;
            }

            @Override
            public boolean onMessageClick(Context context, View view, Message message) {
                return false;
            }

            @Override
            public boolean onMessageLinkClick(Context context, String s) {
                return false;
            }

            @Override
            public boolean onMessageLongClick(Context context, View view, Message message) {
                return false;
            }
        });

        RongIM.setConversationListBehaviorListener(new RongIM.ConversationListBehaviorListener() {
            @Override
            public boolean onConversationPortraitClick(Context context, Conversation.ConversationType conversationType, String s) {
                return !(conversationType == Conversation.ConversationType.PRIVATE);
            }

            @Override
            public boolean onConversationPortraitLongClick(Context context, Conversation.ConversationType conversationType, String s) {
                return false;
            }

            @Override
            public boolean onConversationLongClick(Context context, View view, UIConversation uiConversation) {

                JLog.e(uiConversation.getConversationType().getName());

                if(uiConversation.getConversationType().getName() == Conversation.ConversationType.SYSTEM.getName() ||
                        uiConversation.getConversationType().getName() == Conversation.ConversationType.CUSTOMER_SERVICE.getName()){
                    return true;
                }
                return true;
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
                        intent.setClass(getContext(),SystemMessageActivity.class);
                    }else if(TextUtils.equals("2",sendId) || TextUtils.equals("7",sendId)){
                        intent.setClass(getContext(),SystemCmtActivity.class);
                    }else if(TextUtils.equals("4",sendId)){
                        intent.setClass(getContext(),SystemCmtActivity.class);
                    }
                    startActivity(intent);
                    return true;
                }
                return false;
            }
        });
    }

    /**
     * 获得当前进程的名字
     * @param context
     * @return 进程号
     */
    public static String getCurProcessName(Context context) {
        int pid = android.os.Process.myPid();
        ActivityManager activityManager = (ActivityManager) context
                .getSystemService(Context.ACTIVITY_SERVICE);
        for (ActivityManager.RunningAppProcessInfo appProcess : activityManager
                .getRunningAppProcesses()) {
            if (appProcess.pid == pid) {
                return appProcess.processName;
            }}
        return null;
    }

    /**
     * 建立与融云服务器的连接
     * @param token
     */
    private void connect(String token) {
        if (getApplicationInfo().packageName.equals(getCurProcessName(getApplicationContext()))) {
            /**
             * IMKit SDK调用第二步,建立与服务器的连接
             */
            RongIM.connect(token, new RongIMClient.ConnectCallback() {
                /**
                 * Token 错误，在线上环境下主要是因为 Token 已经过期，您需要向 App Server 重新请求一个新的 Token
                 */
                @Override
                public void onTokenIncorrect() {

                }

                /**
                 * 连接融云成功
                 * @param userid 当前 token
                 */
                @Override
                public void onSuccess(String userid) {
                    initRongIMBrhevieClick();
                    initSelfMessage();
                }

                /**
                 * 连接融云失败
                 * @param errorCode 错误码，可到官网 查看错误码对应的注释
                 */
                @Override
                public void onError(RongIMClient.ErrorCode errorCode) {
                }
            });
        }
    }

    public static Context getContext(){
        return context;
    }

    /**
     * 获取citylist缓存
     */
    private void initCityListData() {
        if(TextUtils.isEmpty(SPUtils.getStringData(IConsName.CASH_CITY_SELECT,""))){
            OkHttpUtils.sendGetRequest(IConstant.CITY_SELECT,null,new MyRefreshListen(IConstant.PERFECTION_PLACE));
        }
    }

    private class MyRefreshListen implements OkHttpUtils.OnResultListener {

        private int position;

        public MyRefreshListen(int position) {
            this.position = position;
        }

        @Override
        public void onSuccess(String result) {
            switch (position){
                case IConstant.PERFECTION_PLACE:
                    SPUtils.savaStringData(IConsName.CASH_CITY_SELECT,result);
                    break;
            }
        }

        @Override
        public void onFailure(int errCode,String errMsg) {

        }
    }

    public static void initSmallVideo(Context context) {
        // 设置拍摄视频缓存路径
        File dcim = Environment
                .getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM);
        if (DeviceUtils.isZte()) {
            if (dcim.exists()) {
                VCamera.setVideoCachePath(dcim + "/mabeijianxi/");
            } else {
                VCamera.setVideoCachePath(dcim.getPath().replace("/sdcard/",
                        "/sdcard-ext/")
                        + "/mabeijianxi/");
            }
        } else {
            VCamera.setVideoCachePath(dcim + "/mabeijianxi/");
        }
        VCamera.setDebugMode(true);
        VCamera.initialize(context);
    }

    @Override
    protected void attachBaseContext(Context base) {
          super.attachBaseContext(base);
          MultiDex.install(this) ;
    }
}
