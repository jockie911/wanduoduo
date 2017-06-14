.class public Lio/rong/imlib/RongIMClient;
.super Ljava/lang/Object;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/RongIMClient$RecallMessageListener;,
        Lio/rong/imlib/RongIMClient$CustomServiceProfile;,
        Lio/rong/imlib/RongIMClient$ReadReceiptListener;,
        Lio/rong/imlib/RongIMClient$TypingStatusListener;,
        Lio/rong/imlib/RongIMClient$RealTimeLocationListener;,
        Lio/rong/imlib/RongIMClient$GetBlacklistCallback;,
        Lio/rong/imlib/RongIMClient$SearchType;,
        Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;,
        Lio/rong/imlib/RongIMClient$BlacklistStatus;,
        Lio/rong/imlib/RongIMClient$MediaType;,
        Lio/rong/imlib/RongIMClient$DownloadMediaCallback;,
        Lio/rong/imlib/RongIMClient$UploadMediaCallback;,
        Lio/rong/imlib/RongIMClient$SendMediaMessageCallback;,
        Lio/rong/imlib/RongIMClient$SendImageMessageCallback;,
        Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;,
        Lio/rong/imlib/RongIMClient$UploadImageStatusListener;,
        Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;,
        Lio/rong/imlib/RongIMClient$SendMessageCallback;,
        Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;,
        Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;,
        Lio/rong/imlib/RongIMClient$ConnectionStatusListener;,
        Lio/rong/imlib/RongIMClient$OperationCallback;,
        Lio/rong/imlib/RongIMClient$ConnectCallback;,
        Lio/rong/imlib/RongIMClient$SyncCallback;,
        Lio/rong/imlib/RongIMClient$ResultCallback;,
        Lio/rong/imlib/RongIMClient$Callback;,
        Lio/rong/imlib/RongIMClient$ErrorCode;,
        Lio/rong/imlib/RongIMClient$StatusListener;,
        Lio/rong/imlib/RongIMClient$AidlConnection;,
        Lio/rong/imlib/RongIMClient$DisconnectRunnable;,
        Lio/rong/imlib/RongIMClient$ReconnectRunnable;,
        Lio/rong/imlib/RongIMClient$ConnectRunnable;,
        Lio/rong/imlib/RongIMClient$SingletonHolder;
    }
.end annotation


# static fields
.field private static final CONVERSATION_SEPERATOR:Ljava/lang/String; = "#@6RONG_CLOUD9@#"

.field private static final RECONNECT_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "RongIMClient"

.field private static final URL_STATISTIC:Ljava/lang/String; = "https://stats.cn.ronghub.com/active.json"

.field private static mFileServer:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field private static mNaviServer:Ljava/lang/String;

.field private static reconnectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sConnectionListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

.field private static sReadReceiptListener:Lio/rong/imlib/RongIMClient$ReadReceiptListener;

.field private static sRecallMessageListener:Lio/rong/imlib/RongIMClient$RecallMessageListener;

.field private static sReceiveMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

.field private static sStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private customServiceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$CustomServiceProfile;",
            ">;"
        }
    .end annotation
.end field

.field private customServiceListener:Lio/rong/imlib/ICustomServiceListener;

.field private mAidlConnection:Lio/rong/imlib/RongIMClient$AidlConnection;

.field private mAppKey:Ljava/lang/String;

.field private mChatroomCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectChangeReceiver:Lio/rong/imlib/ConnectChangeReceiver;

.field private mConnectRunnable:Lio/rong/imlib/RongIMClient$ConnectRunnable;

.field private mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

.field private mHasConnect:Z

.field private mLibHandler:Lio/rong/imlib/IHandler;

.field private mReadReceiptMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mReconnectCount:I

.field private mReconnectInterval:[I

.field private mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

.field private final mRegCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

.field private mToken:Ljava/lang/String;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    .line 132
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->CONNECTED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->BIZ_ERROR_RECONNECT_SUCCESS:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_DISCONN_KICK:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->KICKED_OFFLINE_BY_OTHER_CLIENT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_USER_OR_PASSWD_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->TOKEN_INCORRECT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_SERVER_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->SERVER_INVALID:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_PROTO_VERSION_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_ID_REJECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_NOT_AUTHRORIZED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_REDIRECTED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_PACKAGE_NAME_INVALID:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_APP_BLOCKED_OR_DELETED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_USER_BLOCKED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_DISCONN_EXCEPTION:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_QUERY_ACK_NO_DATA:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_MSG_DATA_INCOMPLETE:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->BIZ_ERROR_CLIENT_NOT_INIT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->BIZ_ERROR_DATABASE_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->BIZ_ERROR_INVALID_PARAMETER:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->BIZ_ERROR_NO_CHANNEL:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->BIZ_ERROR_CONNECTING:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_NET_CHANNEL_INVALID:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_NET_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_MSG_RESP_TIMEOUT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_HTTP_SEND_FAIL:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_HTTP_REQ_TIMEOUT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_HTTP_RECV_FAIL:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_NAVI_RESOURCE_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_NODE_NOT_FOUND:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_DOMAIN_NOT_RESOLVE:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_SOCKET_NOT_CREATED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_SOCKET_DISCONNECTED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_PONG_RECV_FAIL:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_ACK_TIMEOUT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_OVERFREQUENCY:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    .line 180
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_NET_CHANNEL_INVALID:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_NET_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_MSG_RESP_TIMEOUT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_SOCKET_NOT_CREATED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_SOCKET_DISCONNECTED:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_SERVER_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_MSG_SEND_FAIL:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    .line 122
    const/4 v1, 0x0

    iput v1, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    .line 123
    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mReconnectInterval:[I

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mReadReceiptMap:Ljava/util/Map;

    .line 7382
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    .line 190
    const-string v1, "RongIMClient"

    const-string v2, "RongIMClient"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mRegCache:Ljava/util/List;

    .line 193
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mChatroomCache:Ljava/util/Set;

    .line 194
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IPC_WORK"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, workThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 196
    new-instance v1, Lio/rong/imlib/RongIMClient$StatusListener;

    invoke-direct {v1, p0}, Lio/rong/imlib/RongIMClient$StatusListener;-><init>(Lio/rong/imlib/RongIMClient;)V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

    .line 197
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    .line 198
    new-instance v1, Lio/rong/imlib/ConnectChangeReceiver;

    invoke-direct {v1}, Lio/rong/imlib/ConnectChangeReceiver;-><init>()V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mConnectChangeReceiver:Lio/rong/imlib/ConnectChangeReceiver;

    .line 199
    new-instance v1, Lio/rong/imlib/RongIMClient$AidlConnection;

    invoke-direct {v1, p0}, Lio/rong/imlib/RongIMClient$AidlConnection;-><init>(Lio/rong/imlib/RongIMClient;)V

    iput-object v1, p0, Lio/rong/imlib/RongIMClient;->mAidlConnection:Lio/rong/imlib/RongIMClient$AidlConnection;

    .line 200
    return-void

    .line 123
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lio/rong/imlib/RongIMClient$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lio/rong/imlib/RongIMClient;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/rong/imlib/RongIMClient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lio/rong/imlib/RongIMClient;->mNaviServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lio/rong/imlib/RongIMClient;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    return p1
.end method

.method static synthetic access$108(Lio/rong/imlib/RongIMClient;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    return v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lio/rong/imlib/RongIMClient;->mFileServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lio/rong/imlib/RongIMClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lio/rong/imlib/RongIMClient;->initMessageReceiver()V

    return-void
.end method

.method static synthetic access$1300(Lio/rong/imlib/RongIMClient;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mRegCache:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ConnectChangeReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectChangeReceiver:Lio/rong/imlib/ConnectChangeReceiver;

    return-object v0
.end method

.method static synthetic access$1500(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ConnectRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectRunnable:Lio/rong/imlib/RongIMClient$ConnectRunnable;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lio/rong/imlib/RongIMClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lio/rong/imlib/RongIMClient;->initBindService()V

    return-void
.end method

.method static synthetic access$1800(Lio/rong/imlib/RongIMClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lio/rong/imlib/RongIMClient;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lio/rong/imlib/RongIMClient;->sStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2100(Lio/rong/imlib/RongIMClient;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lio/rong/imlib/RongIMClient;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2200()Ljava/util/List;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lio/rong/imlib/RongIMClient;->reconnectList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lio/rong/imlib/RongIMClient;->uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V

    return-void
.end method

.method static synthetic access$2400()Lio/rong/imlib/RongIMClient$ConnectionStatusListener;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lio/rong/imlib/RongIMClient;->sConnectionListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    return-object v0
.end method

.method static synthetic access$2500(Lio/rong/imlib/RongIMClient;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mChatroomCache:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2600(Lio/rong/imlib/RongIMClient;Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    return-void
.end method

.method static synthetic access$2700(Lio/rong/imlib/RongIMClient;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectInterval:[I

    return-object v0
.end method

.method static synthetic access$2800(Lio/rong/imlib/RongIMClient;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mReadReceiptMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2900()Lio/rong/imlib/RongIMClient$ReadReceiptListener;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lio/rong/imlib/RongIMClient;->sReadReceiptListener:Lio/rong/imlib/RongIMClient$ReadReceiptListener;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    return-object v0
.end method

.method static synthetic access$3000()Lio/rong/imlib/RongIMClient$RecallMessageListener;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lio/rong/imlib/RongIMClient;->sRecallMessageListener:Lio/rong/imlib/RongIMClient$RecallMessageListener;

    return-object v0
.end method

.method static synthetic access$302(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ReconnectRunnable;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    return-object p1
.end method

.method static synthetic access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;

    return-object v0
.end method

.method static synthetic access$3102(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/ICustomServiceListener;)Lio/rong/imlib/ICustomServiceListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;

    return-object p1
.end method

.method static synthetic access$3300(Lio/rong/imlib/RongIMClient;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3400()Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lio/rong/imlib/RongIMClient;->sReceiveMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    return-object v0
.end method

.method static synthetic access$402(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/IHandler;)Lio/rong/imlib/IHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    return-object p1
.end method

.method static synthetic access$500(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$StatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

    return-object v0
.end method

.method static synthetic access$600(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    return-object v0
.end method

.method static synthetic access$602(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$DisconnectRunnable;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    return-object p1
.end method

.method static synthetic access$700(Lio/rong/imlib/RongIMClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    return-object v0
.end method

.method static synthetic access$802(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    return-object p1
.end method

.method static synthetic access$900(Lio/rong/imlib/RongIMClient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lio/rong/imlib/RongIMClient;->mHasConnect:Z

    return v0
.end method

.method static synthetic access$902(Lio/rong/imlib/RongIMClient;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lio/rong/imlib/RongIMClient;->mHasConnect:Z

    return p1
.end method

.method public static connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imlib/RongIMClient;
    .locals 4
    .parameter "token"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 486
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 487
    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p1}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onTokenIncorrect()V

    .line 489
    :cond_0
    const-string v1, "RongIMClient"

    const-string v2, "connect token is incorrect!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    .line 608
    :goto_0
    return-object v1

    .line 493
    :cond_1
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTING:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne v1, v2, :cond_3

    .line 494
    const-string v1, "RongIMClient"

    const-string v2, "connect Client is connecting!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-eqz p1, :cond_2

    .line 496
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_OVERFREQUENCY:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p1, v1}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 497
    :cond_2
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    goto :goto_0

    .line 500
    :cond_3
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    if-eqz v1, :cond_4

    .line 501
    sget-object v1, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    sget-object v2, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iput-object v3, v1, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 505
    :cond_4
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iput-object p0, v1, Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;

    .line 507
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_5

    .line 508
    const-string v1, "RongIMClient"

    const-string v2, "connect mLibHandler is null, connect waiting for bind service"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    new-instance v2, Lio/rong/imlib/RongIMClient$ConnectRunnable;

    invoke-direct {v2, p0, p1}, Lio/rong/imlib/RongIMClient$ConnectRunnable;-><init>(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    iput-object v2, v1, Lio/rong/imlib/RongIMClient;->mConnectRunnable:Lio/rong/imlib/RongIMClient$ConnectRunnable;

    .line 608
    :goto_1
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    goto :goto_0

    .line 511
    :cond_5
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iput-object v3, v1, Lio/rong/imlib/RongIMClient;->mConnectRunnable:Lio/rong/imlib/RongIMClient$ConnectRunnable;

    .line 512
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTING:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 514
    :try_start_0
    const-string v1, "RongIMClient"

    const-string v2, "connect service binded, connect"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    new-instance v2, Lio/rong/imlib/RongIMClient$1;

    invoke-direct {v2, p1}, Lio/rong/imlib/RongIMClient$1;-><init>(Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    invoke-interface {v1, p0, v2}, Lio/rong/imlib/IHandler;->connect(Ljava/lang/String;Lio/rong/imlib/IStringCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RongIMClient"

    const-string v2, "connect RemoteException"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getInstance()Lio/rong/imlib/RongIMClient;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 389
    if-nez p0, :cond_0

    .line 390
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Context\u5f02\u5e38"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 392
    :cond_0
    invoke-static {p0}, Lio/rong/common/SystemUtils;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, currentProcess:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, mainProcess:Ljava/lang/String;
    const-string v5, "RongIMClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 396
    :cond_1
    const-string v5, "RongIMClient"

    const-string v6, "SDK should init in main process."

    invoke-static {v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_0
    return-void

    .line 400
    :cond_2
    sget-object v5, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v5, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    .line 401
    sget-object v5, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v5, v5, Lio/rong/imlib/RongIMClient;->mAppKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 403
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 404
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    .line 405
    sget-object v5, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "RONG_CLOUD_APP_KEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lio/rong/imlib/RongIMClient;->mAppKey:Ljava/lang/String;

    .line 407
    :cond_3
    sget-object v5, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v5, v5, Lio/rong/imlib/RongIMClient;->mAppKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 408
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "can\'t find RONG_CLOUD_APP_KEY in AndroidManifest.xml."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 412
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 413
    new-instance v5, Ljava/lang/ExceptionInInitializerError;

    const-string v6, "can\'t find packageName!"

    invoke-direct {v5, v6}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 417
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    sget-object v5, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    sget-object v6, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v6, v6, Lio/rong/imlib/RongIMClient;->mAppKey:Ljava/lang/String;

    invoke-static {p0, v6}, Lio/rong/imlib/common/DeviceUtils;->getDeviceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lio/rong/imlib/RongIMClient;->mDeviceId:Ljava/lang/String;

    .line 418
    const-string v5, "Statistics"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 419
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "appKey"

    sget-object v7, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v7, v7, Lio/rong/imlib/RongIMClient;->mAppKey:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 422
    :try_start_1
    const-class v5, Lio/rong/message/TextMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 423
    const-class v5, Lio/rong/message/VoiceMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 424
    const-class v5, Lio/rong/message/ImageMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 425
    const-class v5, Lio/rong/message/LocationMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 426
    const-class v5, Lio/rong/message/CommandNotificationMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 427
    const-class v5, Lio/rong/message/ContactNotificationMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 428
    const-class v5, Lio/rong/message/RichContentMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 429
    const-class v5, Lio/rong/message/PublicServiceMultiRichContentMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 430
    const-class v5, Lio/rong/message/PublicServiceRichContentMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 431
    const-class v5, Lio/rong/message/PublicServiceCommandMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 432
    const-class v5, Lio/rong/message/ProfileNotificationMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 433
    const-class v5, Lio/rong/message/HandshakeMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 434
    const-class v5, Lio/rong/message/InformationNotificationMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 435
    const-class v5, Lio/rong/message/DiscussionNotificationMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 436
    const-class v5, Lio/rong/message/SuspendMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 437
    const-class v5, Lio/rong/message/ReadReceiptMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 438
    const-class v5, Lio/rong/message/CommandMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 439
    const-class v5, Lio/rong/imlib/TypingMessage/TypingStatusMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 440
    const-class v5, Lio/rong/message/CSHandShakeMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 441
    const-class v5, Lio/rong/message/CSHandShakeResponseMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 442
    const-class v5, Lio/rong/message/CSChangeModeMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 443
    const-class v5, Lio/rong/message/CSChangeModeResponseMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 444
    const-class v5, Lio/rong/message/CSSuspendMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 445
    const-class v5, Lio/rong/message/CSTerminateMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 446
    const-class v5, Lio/rong/message/CSEvaluateMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 447
    const-class v5, Lio/rong/message/CSUpdateMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 448
    const-class v5, Lio/rong/message/RecallCommandMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V

    .line 449
    const-class v5, Lio/rong/message/RecallNotificationMessage;

    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V
    :try_end_1
    .catch Lio/rong/imlib/AnnotationNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 454
    :goto_1
    sget-object v5, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    invoke-direct {v5}, Lio/rong/imlib/RongIMClient;->initBindService()V

    .line 455
    sget-object v5, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    sget-object v6, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v6, v6, Lio/rong/imlib/RongIMClient;->mAppKey:Ljava/lang/String;

    invoke-direct {v5, p0, v6}, Lio/rong/imlib/RongIMClient;->initStatistics(Landroid/content/Context;Ljava/lang/String;)V

    .line 456
    sget-object v5, Lio/rong/imlib/RongIMClient;->mNaviServer:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 457
    sget-object v5, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v5, v5, Lio/rong/imlib/RongIMClient;->mAppKey:Ljava/lang/String;

    sget-object v6, Lio/rong/imlib/RongIMClient;->mNaviServer:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lio/rong/push/RongPushClient;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_2
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->init(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 450
    :catch_1
    move-exception v2

    .line 451
    .local v2, e:Lio/rong/imlib/AnnotationNotFoundException;
    invoke-virtual {v2}, Lio/rong/imlib/AnnotationNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 459
    .end local v2           #e:Lio/rong/imlib/AnnotationNotFoundException;
    :cond_5
    sget-object v5, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v5, v5, Lio/rong/imlib/RongIMClient;->mAppKey:Ljava/lang/String;

    invoke-static {p0, v5}, Lio/rong/push/RongPushClient;->init(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appKey"

    .prologue
    .line 472
    sget-object v0, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iput-object p1, v0, Lio/rong/imlib/RongIMClient;->mAppKey:Ljava/lang/String;

    .line 473
    invoke-static {p0}, Lio/rong/imlib/RongIMClient;->init(Landroid/content/Context;)V

    .line 474
    return-void
.end method

.method private initBindService()V
    .locals 5

    .prologue
    .line 216
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    const-class v3, Lio/rong/imlib/ipc/RongService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "appKey"

    iget-object v3, p0, Lio/rong/imlib/RongIMClient;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v2, "deviceId"

    iget-object v3, p0, Lio/rong/imlib/RongIMClient;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient;->mAidlConnection:Lio/rong/imlib/RongIMClient$AidlConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "RongIMClient"

    const-string v3, "initBindService SecurityException"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private initMessageReceiver()V
    .locals 3

    .prologue
    .line 5494
    const-string v1, "RongIMClient"

    const-string v2, "initMessageReceiver"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5496
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    new-instance v2, Lio/rong/imlib/RongIMClient$98;

    invoke-direct {v2, p0}, Lio/rong/imlib/RongIMClient$98;-><init>(Lio/rong/imlib/RongIMClient;)V

    invoke-interface {v1, v2}, Lio/rong/imlib/IHandler;->setOnReceiveMessageListener(Lio/rong/imlib/OnReceiveMessageListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5837
    :goto_0
    return-void

    .line 5834
    :catch_0
    move-exception v0

    .line 5835
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private initStatistics(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "appKey"

    .prologue
    .line 372
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/statistics/Statistics;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 375
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v0, certificates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "rongcloud"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-static {v0}, Lio/rong/imlib/statistics/Statistics;->enablePublicKeyPinning(Ljava/util/List;)Lio/rong/imlib/statistics/Statistics;

    .line 378
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    const-string v2, "https://stats.cn.ronghub.com/active.json"

    iget-object v3, p0, Lio/rong/imlib/RongIMClient;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, p2, v3}, Lio/rong/imlib/statistics/Statistics;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imlib/statistics/Statistics;

    .line 379
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/imlib/statistics/Statistics;->setLoggingEnabled(Z)Lio/rong/imlib/statistics/Statistics;

    .line 380
    invoke-static {}, Lio/rong/imlib/statistics/Statistics;->sharedInstance()Lio/rong/imlib/statistics/Statistics;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/statistics/Statistics;->onStart()V

    goto :goto_0
.end method

.method private reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "chatroomId"
    .parameter "defMessageCount"
    .parameter "callback"

    .prologue
    .line 4444
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4445
    const-string v0, "RongIMClient"

    const-string v1, "id is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    if-eqz p3, :cond_0

    .line 4447
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4483
    :cond_0
    :goto_0
    return-void

    .line 4451
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$77;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$77;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static registerMessageType(Ljava/lang/Class;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imlib/AnnotationNotFoundException;
        }
    .end annotation

    .prologue
    .line 731
    .local p0, messageContentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    if-nez p0, :cond_0

    .line 732
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MessageContent \u4e3a\u7a7a\uff01"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 734
    :cond_0
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v2, v1, Lio/rong/imlib/RongIMClient;->mRegCache:Ljava/util/List;

    monitor-enter v2

    .line 735
    :try_start_0
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mRegCache:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 736
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mRegCache:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    const-string v1, "RongIMClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerMessageType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-eqz v1, :cond_2

    .line 742
    :try_start_1
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/rong/imlib/IHandler;->registerMessageType(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 748
    :cond_2
    :goto_0
    return-void

    .line 738
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "RongIMClient"

    const-string v2, "registerMessageType RemoteException"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 3308
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3309
    return-void
.end method

.method private sendChangeModelMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "kefuId"
    .parameter "groupId"

    .prologue
    const/4 v4, 0x0

    .line 7455
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/rong/imlib/RongIMClient$CustomServiceProfile;

    .line 7456
    .local v8, profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    iget-object v0, v8, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->sid:Ljava/lang/String;

    iget-object v1, v8, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->uid:Ljava/lang/String;

    iget-object v2, v8, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->pid:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lio/rong/message/CSChangeModeMessage;->obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/message/CSChangeModeMessage;

    move-result-object v3

    .line 7457
    .local v3, changeModeMessage:Lio/rong/message/CSChangeModeMessage;
    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    new-instance v6, Lio/rong/imlib/RongIMClient$103;

    invoke-direct {v6, p0, p1}, Lio/rong/imlib/RongIMClient$103;-><init>(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 7469
    return-void
.end method

.method public static setConnectionStatusListener(Lio/rong/imlib/RongIMClient$ConnectionStatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 711
    sput-object p0, Lio/rong/imlib/RongIMClient;->sConnectionListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    .line 712
    return-void
.end method

.method public static setOnReceiveMessageListener(Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 721
    sput-object p0, Lio/rong/imlib/RongIMClient;->sReceiveMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    .line 722
    return-void
.end method

.method public static setReadReceiptListener(Lio/rong/imlib/RongIMClient$ReadReceiptListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 7378
    sput-object p0, Lio/rong/imlib/RongIMClient;->sReadReceiptListener:Lio/rong/imlib/RongIMClient$ReadReceiptListener;

    .line 7379
    return-void
.end method

.method public static setRecallMessageListener(Lio/rong/imlib/RongIMClient$RecallMessageListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 7718
    sput-object p0, Lio/rong/imlib/RongIMClient;->sRecallMessageListener:Lio/rong/imlib/RongIMClient$RecallMessageListener;

    .line 7719
    return-void
.end method

.method public static setServerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "naviServer"
    .parameter "fileServer"

    .prologue
    .line 7601
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7602
    const-string v0, "RongIMClient"

    const-string v1, "setServerInfo naviServer should not be null."

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "naviServer should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7605
    :cond_0
    sput-object p0, Lio/rong/imlib/RongIMClient;->mNaviServer:Ljava/lang/String;

    .line 7606
    sput-object p1, Lio/rong/imlib/RongIMClient;->mFileServer:Ljava/lang/String;

    .line 7607
    return-void
.end method

.method public static setTypingStatusListener(Lio/rong/imlib/RongIMClient$TypingStatusListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 7344
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->setTypingMessageStatusListener(Lio/rong/imlib/RongIMClient$TypingStatusListener;)V

    .line 7345
    return-void
.end method

.method private uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V
    .locals 5
    .parameter "message"
    .parameter "callback"

    .prologue
    .line 3689
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3692
    :cond_0
    const-string v2, "RongIMClient"

    const-string v3, "conversation type or targetId or message content can\'t be null!"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    if-eqz p2, :cond_1

    .line 3694
    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, p1, v2}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3764
    :cond_1
    :goto_0
    return-void

    .line 3699
    :cond_2
    const/4 v1, 0x0

    .line 3700
    .local v1, localPath:Landroid/net/Uri;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lio/rong/message/ImageMessage;

    if-eqz v2, :cond_3

    .line 3701
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    check-cast v2, Lio/rong/message/ImageMessage;

    invoke-virtual {v2}, Lio/rong/message/ImageMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v1

    .line 3704
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3705
    :cond_4
    const-string v2, "RongIMClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadMedia Uri :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \u5fc5\u987b\u4e3afile://\u683c\u5f0f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3706
    if-eqz p2, :cond_1

    .line 3707
    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, p1, v2}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 3711
    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3713
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3714
    const-string v2, "RongIMClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadMedia Uri \u6587\u4ef6\u4e0d\u5b58\u5728\u3002"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    if-eqz p2, :cond_1

    .line 3716
    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, p1, v2}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 3720
    :cond_6
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imlib/RongIMClient$64;

    invoke-direct {v3, p0, p2, p1}, Lio/rong/imlib/RongIMClient$64;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$UploadMediaCallback;Lio/rong/imlib/model/Message;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/RongIMClient$OperationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2770
    .local p2, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2771
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "discussionId or userIdList is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    if-eqz p3, :cond_1

    .line 2773
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2811
    :cond_1
    :goto_0
    return-void

    .line 2777
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$49;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$49;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public addRealTimeLocationListener(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$RealTimeLocationListener;)V
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "listener"

    .prologue
    .line 7151
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 7152
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "addRealTimeLocationListener Type or id is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7228
    :goto_0
    return-void

    .line 7155
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$101;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imlib/RongIMClient$101;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$RealTimeLocationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "userId"
    .parameter "callback"

    .prologue
    .line 4678
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4679
    const-string v0, "RongIMClient"

    const-string v1, "userId  is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4680
    if-eqz p2, :cond_0

    .line 4681
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4719
    :cond_0
    :goto_0
    return-void

    .line 4685
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$82;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$82;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public cancelDownloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "message"
    .parameter "callback"

    .prologue
    .line 3931
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lio/rong/message/MediaMessageContent;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/MediaMessageContent;

    invoke-virtual {v0}, Lio/rong/message/MediaMessageContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3935
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "cancelDownloadMediaMessage \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    if-eqz p2, :cond_1

    .line 3937
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3972
    :cond_1
    :goto_0
    return-void

    .line 3941
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$67;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$67;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Lio/rong/imlib/model/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public varargs clearConversations(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 2
    .parameter "callback"
    .parameter "conversationTypes"

    .prologue
    .line 4591
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    .line 4592
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "conversationTypes is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4593
    if-eqz p1, :cond_1

    .line 4594
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p1, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4627
    :cond_1
    :goto_0
    return-void

    .line 4598
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$80;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$80;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public varargs clearConversations([Lio/rong/imlib/model/Conversation$ConversationType;)Z
    .locals 4
    .parameter "conversationTypes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4638
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4639
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 4640
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 4642
    new-instance v3, Lio/rong/imlib/RongIMClient$81;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$81;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3, p1}, Lio/rong/imlib/RongIMClient;->clearConversations(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 4662
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4666
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 4663
    :catch_0
    move-exception v0

    .line 4664
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1972
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1973
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2001
    :goto_0
    return-void

    .line 1978
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$31;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$31;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1930
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1932
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1933
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1935
    new-instance v3, Lio/rong/imlib/RongIMClient$30;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$30;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1956
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1961
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 1957
    :catch_0
    move-exception v0

    .line 1958
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JLio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 9
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "timestamp"
    .parameter "callback"

    .prologue
    .line 5286
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$95;

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lio/rong/imlib/RongIMClient$95;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5309
    return-void
.end method

.method public clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2055
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 2056
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2087
    :goto_0
    return-void

    .line 2061
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$33;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$33;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2015
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2017
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2018
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2020
    new-instance v3, Lio/rong/imlib/RongIMClient$32;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$32;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2039
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2044
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearNotifications()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5893
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/rong/push/RongPushClient;->clearAllNotifications(Landroid/content/Context;)V

    .line 5894
    return-void
.end method

.method public clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2561
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    new-instance v0, Lio/rong/imlib/model/Conversation;

    invoke-direct {v0}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 2562
    .local v0, conversation:Lio/rong/imlib/model/Conversation;
    invoke-virtual {v0, p1}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 2563
    invoke-virtual {v0, p2}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 2565
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 2566
    :cond_0
    const-string v1, "RongIMClient"

    const-string v2, "the value of targetId or ConversationType is error!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    if-eqz p3, :cond_1

    .line 2568
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2593
    :cond_1
    :goto_0
    return-void

    .line 2572
    :cond_2
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imlib/RongIMClient$45;

    invoke-direct {v2, p0, p3, v0}, Lio/rong/imlib/RongIMClient$45;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2519
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2521
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2522
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2524
    new-instance v3, Lio/rong/imlib/RongIMClient$44;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$44;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2545
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2550
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 2546
    :catch_0
    move-exception v0

    .line 2547
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V
    .locals 2
    .parameter "name"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2709
    .local p2, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2710
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "name or userIdList is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    if-eqz p3, :cond_1

    .line 2712
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2760
    :cond_1
    :goto_0
    return-void

    .line 2716
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$48;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$48;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public deleteMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1892
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1893
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1917
    :goto_0
    return-void

    .line 1898
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$29;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$29;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public deleteMessages([ILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "messageIds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1855
    .local p2, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1856
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "the messageIds is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1880
    :goto_0
    return-void

    .line 1861
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$28;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$28;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public deleteMessages([I)Z
    .locals 4
    .parameter "messageIds"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1816
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1818
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1819
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1821
    new-instance v3, Lio/rong/imlib/RongIMClient$27;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$27;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, v3}, Lio/rong/imlib/RongIMClient;->deleteMessages([ILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1840
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1845
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 1841
    :catch_0
    move-exception v0

    .line 1842
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/rong/imlib/RongIMClient;->disconnect(Z)V

    .line 656
    return-void
.end method

.method public disconnect(Z)V
    .locals 4
    .parameter "isReceivePush"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 667
    const-string v0, "RongIMClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect isReceivePush = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mConnectionStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v0, :cond_1

    .line 669
    const-string v0, "RongIMClient"

    const-string v1, "disconnect IPC service unbind!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mChatroomCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 674
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    if-eqz v0, :cond_2

    .line 675
    sget-object v0, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    iput-object v3, p0, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 678
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imlib/RongIMClient;->mReconnectCount:I

    .line 680
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTING:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne v0, v1, :cond_4

    .line 683
    :cond_3
    new-instance v0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    invoke-direct {v0, p0, p1}, Lio/rong/imlib/RongIMClient$DisconnectRunnable;-><init>(Lio/rong/imlib/RongIMClient;Z)V

    iput-object v0, p0, Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    .line 685
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-ne v0, v1, :cond_0

    .line 686
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 690
    :cond_4
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-eq v0, v1, :cond_0

    .line 691
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 692
    iput-object v3, p0, Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public downloadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$MediaType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V
    .locals 7
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "mediaType"
    .parameter "imageUrl"
    .parameter "callback"

    .prologue
    .line 3777
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3778
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "downloadMedia \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    if-eqz p5, :cond_1

    .line 3780
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p5, v0}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3830
    :cond_1
    :goto_0
    return-void

    .line 3784
    :cond_2
    new-instance v3, Lio/rong/imlib/model/Conversation;

    invoke-direct {v3}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 3785
    .local v3, conversation:Lio/rong/imlib/model/Conversation;
    invoke-virtual {v3, p2}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 3786
    invoke-virtual {v3, p1}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 3788
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$65;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$65;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;Lio/rong/imlib/model/Conversation;Lio/rong/imlib/RongIMClient$MediaType;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public downloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;)V
    .locals 2
    .parameter "message"
    .parameter "callback"

    .prologue
    .line 3839
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lio/rong/message/MediaMessageContent;

    if-nez v0, :cond_2

    .line 3844
    :cond_0
    if-eqz p2, :cond_1

    .line 3845
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-interface {p2, p1, v0}, Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3922
    :cond_1
    :goto_0
    return-void

    .line 3850
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$66;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$66;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;Lio/rong/imlib/model/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public evaluateCustomService(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "kefuId"
    .parameter "source"
    .parameter "suggest"
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x0

    .line 7549
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7550
    const-string v0, "RongIMClient"

    const-string v1, "evaluateCustomService kefuId should not be null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7567
    .end local p4
    :goto_0
    return-void

    .line 7553
    .restart local p4
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7554
    const-string v0, "RongIMClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluateCustomService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not started yet!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7557
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imlib/RongIMClient$CustomServiceProfile;

    .line 7558
    .local v9, profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    new-instance v8, Lio/rong/message/CSEvaluateMessage$Builder;

    invoke-direct {v8}, Lio/rong/message/CSEvaluateMessage$Builder;-><init>()V

    .line 7559
    .local v8, csBuilder:Lio/rong/message/CSEvaluateMessage$Builder;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p4, v9, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->sid:Ljava/lang/String;

    .end local p4
    :cond_2
    invoke-virtual {v8, p4}, Lio/rong/message/CSEvaluateMessage$Builder;->sid(Ljava/lang/String;)Lio/rong/message/CSEvaluateMessage$Builder;

    move-result-object v0

    iget-object v1, v9, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/rong/message/CSEvaluateMessage$Builder;->pid(Ljava/lang/String;)Lio/rong/message/CSEvaluateMessage$Builder;

    move-result-object v0

    iget-object v1, v9, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/rong/message/CSEvaluateMessage$Builder;->uid(Ljava/lang/String;)Lio/rong/message/CSEvaluateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/rong/message/CSEvaluateMessage$Builder;->source(I)Lio/rong/message/CSEvaluateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lio/rong/message/CSEvaluateMessage$Builder;->suggest(Ljava/lang/String;)Lio/rong/message/CSEvaluateMessage$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/rong/message/CSEvaluateMessage$Builder;->type(I)Lio/rong/message/CSEvaluateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/message/CSEvaluateMessage$Builder;->build()Lio/rong/message/CSEvaluateMessage;

    move-result-object v3

    .line 7566
    .local v3, csEvaluateMessage:Lio/rong/message/CSEvaluateMessage;
    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public evaluateCustomService(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 10
    .parameter "kefuId"
    .parameter "isRobotResolved"
    .parameter "knowledgeId"

    .prologue
    const/4 v4, 0x0

    .line 7519
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7520
    const-string v0, "RongIMClient"

    const-string v1, "evaluateCustomService kefuId should not be null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7536
    .end local p3
    :goto_0
    return-void

    .line 7523
    .restart local p3
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7524
    const-string v0, "RongIMClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluateCustomService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not started yet!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7527
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imlib/RongIMClient$CustomServiceProfile;

    .line 7528
    .local v9, profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    new-instance v8, Lio/rong/message/CSEvaluateMessage$Builder;

    invoke-direct {v8}, Lio/rong/message/CSEvaluateMessage$Builder;-><init>()V

    .line 7529
    .local v8, csBuilder:Lio/rong/message/CSEvaluateMessage$Builder;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p3, v9, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->sid:Ljava/lang/String;

    .end local p3
    :cond_2
    invoke-virtual {v8, p3}, Lio/rong/message/CSEvaluateMessage$Builder;->sid(Ljava/lang/String;)Lio/rong/message/CSEvaluateMessage$Builder;

    move-result-object v0

    iget-object v1, v9, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/rong/message/CSEvaluateMessage$Builder;->pid(Ljava/lang/String;)Lio/rong/message/CSEvaluateMessage$Builder;

    move-result-object v0

    iget-object v1, v9, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/rong/message/CSEvaluateMessage$Builder;->uid(Ljava/lang/String;)Lio/rong/message/CSEvaluateMessage$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/rong/message/CSEvaluateMessage$Builder;->type(I)Lio/rong/message/CSEvaluateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/rong/message/CSEvaluateMessage$Builder;->isRobotResolved(Z)Lio/rong/message/CSEvaluateMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/message/CSEvaluateMessage$Builder;->build()Lio/rong/message/CSEvaluateMessage;

    move-result-object v3

    .line 7535
    .local v3, csEvaluateMessage:Lio/rong/message/CSEvaluateMessage;
    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public getBlacklist(Lio/rong/imlib/RongIMClient$GetBlacklistCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4822
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$85;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$85;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$GetBlacklistCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4858
    return-void
.end method

.method public getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "userId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/RongIMClient$BlacklistStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4776
    .local p2, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/RongIMClient$BlacklistStatus;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4777
    const-string v0, "RongIMClient"

    const-string v1, "userId  is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4778
    if-eqz p2, :cond_0

    .line 4779
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4814
    :cond_0
    :goto_0
    return-void

    .line 4783
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$84;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$84;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getChatRoomInfo(Ljava/lang/String;ILio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .parameter "chatRoomId"
    .parameter "defMemberCount"
    .parameter "order"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/ChatRoomInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4342
    .local p4, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/ChatRoomInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4343
    const-string v0, "RongIMClient"

    const-string v1, "id is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4344
    if-eqz p4, :cond_0

    .line 4345
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4385
    :cond_0
    :goto_0
    return-void

    .line 4349
    :cond_1
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$75;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$75;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;ILio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 983
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 985
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 986
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Conversation;>;"
    new-instance v3, Lio/rong/imlib/RongIMClient$8;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$8;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1001
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Lio/rong/imlib/model/Conversation;

    return-object v3

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 904
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Conversation;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 905
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "getConversation. the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 932
    :goto_0
    return-void

    .line 910
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$6;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$6;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getConversationList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 788
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 790
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 791
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/util/List<Lio/rong/imlib/model/Conversation;>;>;"
    new-instance v3, Lio/rong/imlib/RongIMClient$3;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$3;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Lio/rong/imlib/RongIMClient;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 806
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    return-object v3

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs getConversationList([Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;
    .locals 4
    .parameter "types"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 869
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 870
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 872
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/util/List<Lio/rong/imlib/model/Conversation;>;>;"
    new-instance v3, Lio/rong/imlib/RongIMClient$5;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$5;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3, p1}, Lio/rong/imlib/RongIMClient;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 887
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    return-object v3

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p1, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Conversation;>;>;"
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$2;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 776
    return-void
.end method

.method public varargs getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 2
    .parameter
    .parameter "conversationTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;>;[",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Conversation;>;>;"
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$4;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$4;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 854
    return-void
.end method

.method public getConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3982
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3983
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "Parameter is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    if-eqz p3, :cond_1

    .line 3985
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4021
    :cond_1
    :goto_0
    return-void

    .line 3989
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$68;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$68;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4286
    :try_start_0
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-eqz v1, :cond_0

    .line 4287
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-interface {v2}, Lio/rong/imlib/IHandler;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4293
    :cond_0
    :goto_0
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;

    return-object v1

    .line 4289
    :catch_0
    move-exception v0

    .line 4290
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeltaTime()J
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4303
    iget-object v3, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v3, :cond_0

    .line 4304
    const-string v3, "RongIMClient"

    const-string v6, "getDeltaTime IPC \u8fdb\u7a0b\u9519\u8bef\u3002"

    invoke-static {v3, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4329
    :goto_0
    return-wide v4

    .line 4307
    :cond_0
    new-array v1, v7, [J

    aput-wide v4, v1, v6

    .line 4308
    .local v1, deltaTime:[J
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4310
    .local v0, countDownLatch:Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v4, Lio/rong/imlib/RongIMClient$74;

    invoke-direct {v4, p0, v1, v0}, Lio/rong/imlib/RongIMClient$74;-><init>(Lio/rong/imlib/RongIMClient;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4324
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4329
    :goto_1
    aget-wide v4, v1, v6

    goto :goto_0

    .line 4325
    :catch_0
    move-exception v2

    .line 4326
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Discussion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2602
    .local p2, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Discussion;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2603
    const-string v0, "RongIMClient"

    const-string v1, "the discussionId can\'t be empty!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    if-eqz p2, :cond_0

    .line 2605
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2646
    :cond_0
    :goto_0
    return-void

    .line 2609
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$46;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$46;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)Ljava/util/List;
    .locals 9
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "oldestMessageId"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1525
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1527
    .local v7, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v8}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1529
    .local v8, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    new-instance v5, Lio/rong/imlib/RongIMClient$21;

    invoke-direct {v5, p0, v8, v7}, Lio/rong/imlib/RongIMClient$21;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1544
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1549
    :goto_0
    iget-object v0, v8, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 1545
    :catch_0
    move-exception v6

    .line 1546
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 10
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "objectName"
    .parameter "oldestMessageId"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1568
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1570
    .local v8, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v9, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v9}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1572
    .local v9, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    new-instance v6, Lio/rong/imlib/RongIMClient$22;

    invoke-direct {v6, p0, v9, v8}, Lio/rong/imlib/RongIMClient$22;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1587
    :try_start_0
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    :goto_0
    iget-object v0, v9, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 1588
    :catch_0
    move-exception v7

    .line 1589
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 8
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "oldestMessageId"
    .parameter "count"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "II",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1769
    .local p5, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1770
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p5, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1803
    :goto_0
    return-void

    .line 1775
    :cond_1
    iget-object v7, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$26;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lio/rong/imlib/RongIMClient$26;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongCommonDefine$GetMessageDirection;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 11
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "objectName"
    .parameter "baseMessageId"
    .parameter "count"
    .parameter "direction"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lio/rong/imlib/RongCommonDefine$GetMessageDirection;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1659
    .local p7, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 1660
    :cond_0
    const-string v1, "RongIMClient"

    const-string v2, "the parameter of targetId or ConversationType is error!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1691
    :goto_0
    return-void

    .line 1664
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p5, :cond_2

    if-nez p6, :cond_3

    .line 1665
    :cond_2
    const-string v1, "RongIMClient"

    const-string v2, "the parameter of objectName, count or direction is error!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 1669
    :cond_3
    iget-object v10, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$24;

    move-object v2, p0

    move-object/from16 v3, p7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lio/rong/imlib/RongIMClient$24;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V

    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 9
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "objectName"
    .parameter "oldestMessageId"
    .parameter "count"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1607
    .local p6, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1608
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p6, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1642
    :goto_0
    return-void

    .line 1613
    :cond_1
    iget-object v8, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$23;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lio/rong/imlib/RongIMClient$23;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1438
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1440
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1442
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    new-instance v3, Lio/rong/imlib/RongIMClient$19;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$19;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, p3, v3}, Lio/rong/imlib/RongIMClient;->getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1457
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    return-object v3

    .line 1458
    :catch_0
    move-exception v0

    .line 1459
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "count"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "I",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1474
    .local p4, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1475
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1508
    :goto_0
    return-void

    .line 1480
    :cond_1
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$20;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$20;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getMessage(ILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "messageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2926
    .local p2, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    if-gtz p1, :cond_1

    .line 2927
    const-string v0, "RongIMClient"

    const-string v1, "Illegal argument of messageId."

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    if-eqz p2, :cond_0

    .line 2929
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2955
    :cond_0
    :goto_0
    return-void

    .line 2933
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$52;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$52;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getMessageByUid(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "uid"
    .parameter "callback"

    .prologue
    .line 5846
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5847
    const-string v0, "RongIMClient"

    const-string v1, "getMessageByUid mLibHandler is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5870
    :goto_0
    return-void

    .line 5851
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$99;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$99;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getNotificationQuietHours(Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 5337
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$96;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$96;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5369
    return-void
.end method

.method public getPublicServiceList(Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfileList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5118
    .local p1, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$91;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$91;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5149
    return-void
.end method

.method public getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "publicServiceType"
    .parameter "publicServiceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$PublicServiceType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5069
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfile;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5070
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "Parameter  is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5071
    if-eqz p3, :cond_1

    .line 5072
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5109
    :cond_1
    :goto_0
    return-void

    .line 5076
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$90;

    invoke-direct {v1, p0, p3, p2, p1}, Lio/rong/imlib/RongIMClient$90;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$PublicServiceType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 6987
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_0

    .line 6988
    const-string v2, "RongIMClient"

    const-string v3, "getRealTimeLocation IPC \u8fdb\u7a0b\u5c1a\u672a\u8fd0\u884c\u3002"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6989
    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NOT_INIT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 7003
    :goto_0
    return-object v2

    .line 6992
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 6993
    :cond_1
    const-string v2, "RongIMClient"

    const-string v3, "getRealTimeLocation Type or id is null!"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6994
    const/4 v2, 0x0

    goto :goto_0

    .line 6997
    :cond_2
    const/4 v0, -0x1

    .line 6999
    .local v0, code:I
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lio/rong/imlib/IHandler;->setupRealTimeLocation(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 7003
    :goto_1
    invoke-static {v0}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->valueOf(I)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    move-result-object v2

    goto :goto_0

    .line 7000
    :catch_0
    move-exception v1

    .line 7001
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRealTimeLocationCurrentState(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 7123
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_0

    .line 7124
    const-string v2, "RongIMClient"

    const-string v3, "getRealTimeLocationCurrentState IPC \u8fdb\u7a0b\u5c1a\u672a\u8fd0\u884c\u3002"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7125
    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_IDLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 7140
    :goto_0
    return-object v2

    .line 7128
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 7129
    :cond_1
    const-string v2, "RongIMClient"

    const-string v3, "getRealTimeLocationCurrentState Type or id is null!"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7130
    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_IDLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    goto :goto_0

    .line 7133
    :cond_2
    const/4 v1, 0x0

    .line 7135
    .local v1, state:I
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lio/rong/imlib/IHandler;->getRealTimeLocationCurrentState(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 7140
    :goto_1
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->valueOf(I)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v2

    goto :goto_0

    .line 7136
    :catch_0
    move-exception v0

    .line 7137
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRealTimeLocationParticipants(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 7095
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_0

    .line 7096
    const-string v2, "RongIMClient"

    const-string v3, "getRealTimeLocationParticipants IPC \u8fdb\u7a0b\u5c1a\u672a\u8fd0\u884c\u3002"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7111
    :goto_0
    return-object v1

    .line 7100
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 7101
    :cond_1
    const-string v2, "RongIMClient"

    const-string v3, "getRealTimeLocationParticipants Type or id is null!"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7105
    :cond_2
    const/4 v1, 0x0

    .line 7107
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lio/rong/imlib/IHandler;->getRealTimeLocationParticipants(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 7108
    :catch_0
    move-exception v0

    .line 7109
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 9
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "dateTime"
    .parameter "count"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "JI",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1706
    .local p6, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1707
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p6, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1754
    :goto_0
    return-void

    .line 1712
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$25;

    move-object v2, p0

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lio/rong/imlib/RongIMClient$25;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getSendTimeByMessageId(I)J
    .locals 5
    .parameter "messageId"

    .prologue
    const-wide/16 v2, 0x0

    .line 5319
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_0

    .line 5320
    const-string v1, "RongIMClient"

    const-string v4, "getSendTimeByMessageId mLibHandler is null!"

    invoke-static {v1, v4}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5327
    :goto_0
    return-wide v2

    .line 5324
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-interface {v1, p1}, Lio/rong/imlib/IHandler;->getSendTimeByMessageId(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 5325
    :catch_0
    move-exception v0

    .line 5326
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2349
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2351
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2353
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/String;>;"
    new-instance v3, Lio/rong/imlib/RongIMClient$40;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$40;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2368
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2373
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 2369
    :catch_0
    move-exception v0

    .line 2370
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2385
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/String;>;"
    new-instance v0, Lio/rong/imlib/model/Conversation;

    invoke-direct {v0}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 2386
    .local v0, conversation:Lio/rong/imlib/model/Conversation;
    invoke-virtual {v0, p1}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 2387
    invoke-virtual {v0, p2}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 2389
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 2390
    :cond_0
    const-string v1, "RongIMClient"

    const-string v2, "the value of targetId or ConversationType is error!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    if-eqz p3, :cond_1

    .line 2392
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2417
    :cond_1
    :goto_0
    return-void

    .line 2396
    :cond_2
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imlib/RongIMClient$41;

    invoke-direct {v2, p0, p3, v0}, Lio/rong/imlib/RongIMClient$41;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getTotalUnreadCount()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1222
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1223
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1224
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1226
    new-instance v3, Lio/rong/imlib/RongIMClient$14;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$14;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3}, Lio/rong/imlib/RongIMClient;->getTotalUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1246
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTotalUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1183
    .local p1, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$13;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$13;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1213
    return-void
.end method

.method public getTypingUserListFromConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter "conversationType"
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lio/rong/imlib/TypingMessage/TypingStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7305
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getTypingUserListFromConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1301
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1302
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1303
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1305
    new-instance v3, Lio/rong/imlib/RongIMClient$16;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$16;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1323
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;)I
    .locals 4
    .parameter "conversationTypes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1395
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1396
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1397
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1399
    new-instance v3, Lio/rong/imlib/RongIMClient$18;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$18;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v3, p1}, Lio/rong/imlib/RongIMClient;->getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1418
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 2
    .parameter
    .parameter "conversationTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1337
    .local p1, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 1338
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "conversationTypes is null. Return directly!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p1, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1375
    :goto_0
    return-void

    .line 1343
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$17;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$17;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1262
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1263
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "getConversation. the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1290
    :goto_0
    return-void

    .line 1268
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$15;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$15;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 0
    .parameter "conversationTypes"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1384
    .local p2, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p2, p1}, Lio/rong/imlib/RongIMClient;->getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1385
    return-void
.end method

.method public getUnreadMentionedMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 7667
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 7668
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7669
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 7697
    :goto_0
    return-void

    .line 7673
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$106;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$106;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;
    .locals 9
    .parameter "type"
    .parameter "targetId"
    .parameter "senderUserId"
    .parameter "content"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3017
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3019
    .local v7, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v8}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 3021
    .local v8, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    new-instance v5, Lio/rong/imlib/RongIMClient$54;

    invoke-direct {v5, p0, v8, v7}, Lio/rong/imlib/RongIMClient$54;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3035
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3040
    :goto_0
    iget-object v0, v8, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Message;

    return-object v0

    .line 3036
    :catch_0
    move-exception v6

    .line 3037
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 8
    .parameter "type"
    .parameter "targetId"
    .parameter "senderUserId"
    .parameter "content"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/MessageContent;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2967
    .local p5, resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2968
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "insertMessage::ConversationType or targetId is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    if-eqz p5, :cond_1

    .line 2970
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p5, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3003
    :cond_1
    :goto_0
    return-void

    .line 2974
    :cond_2
    iget-object v7, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$53;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lio/rong/imlib/RongIMClient$53;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public joinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "chatroomId"
    .parameter "defMessageCount"
    .parameter "callback"

    .prologue
    .line 4395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4396
    const-string v0, "RongIMClient"

    const-string v1, "id is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4397
    if-eqz p3, :cond_0

    .line 4398
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4434
    :cond_0
    :goto_0
    return-void

    .line 4401
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mChatroomCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4402
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$76;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$76;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "chatroomId"
    .parameter "defMessageCount"
    .parameter "callback"

    .prologue
    .line 4493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4494
    const-string v0, "RongIMClient"

    const-string v1, "id is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4495
    if-eqz p3, :cond_0

    .line 4496
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4533
    :cond_0
    :goto_0
    return-void

    .line 4500
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mChatroomCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4501
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$78;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$78;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "groupId"
    .parameter "groupName"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4186
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "groupId or groupName is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    if-eqz p3, :cond_1

    .line 4188
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4223
    :cond_1
    :goto_0
    return-void

    .line 4192
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$72;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$72;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public joinRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 7041
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_0

    .line 7042
    const-string v2, "RongIMClient"

    const-string v3, "joinRealTimeLocation IPC \u8fdb\u7a0b\u5c1a\u672a\u8fd0\u884c\u3002"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7043
    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NOT_INIT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 7057
    :goto_0
    return-object v2

    .line 7046
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 7047
    :cond_1
    const-string v2, "RongIMClient"

    const-string v3, "joinRealTimeLocation Type or id is null!"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7048
    const/4 v2, 0x0

    goto :goto_0

    .line 7051
    :cond_2
    const/4 v0, -0x1

    .line 7053
    .local v0, code:I
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lio/rong/imlib/IHandler;->joinRealTimeLocation(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 7057
    :goto_1
    invoke-static {v0}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->valueOf(I)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    move-result-object v2

    goto :goto_0

    .line 7054
    :catch_0
    move-exception v1

    .line 7055
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/rong/imlib/RongIMClient;->disconnect(Z)V

    .line 703
    return-void
.end method

.method public quitChatRoom(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "chatroomId"
    .parameter "callback"

    .prologue
    .line 4542
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4543
    const-string v0, "RongIMClient"

    const-string v1, "id is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4544
    if-eqz p2, :cond_0

    .line 4545
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4582
    :cond_0
    :goto_0
    return-void

    .line 4549
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mChatroomCache:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4550
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$79;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$79;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public quitDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter "callback"

    .prologue
    .line 2875
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2876
    const-string v0, "RongIMClient"

    const-string v1, "discussionId is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    if-eqz p2, :cond_0

    .line 2878
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2917
    :cond_0
    :goto_0
    return-void

    .line 2882
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$51;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$51;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public quitGroup(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "groupId"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4239
    const-string v0, "RongIMClient"

    const-string v1, "groupId  is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    if-eqz p2, :cond_0

    .line 4241
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4277
    :cond_0
    :goto_0
    return-void

    .line 4245
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$73;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$73;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public quitRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 7067
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 7068
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "quitRealTimeLocation Type or id is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7085
    :goto_0
    return-void

    .line 7071
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v0, :cond_2

    .line 7072
    const-string v0, "RongIMClient"

    const-string v1, "quitRealTimeLocation IPC \u8fdb\u7a0b\u5c1a\u672a\u8fd0\u884c\u3002"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7075
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$100;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$100;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public recallMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .parameter "message"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/message/RecallNotificationMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/message/RecallNotificationMessage;>;"
    const/4 v4, 0x0

    .line 7617
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v0, :cond_1

    .line 7618
    const-string v0, "RongIMClient"

    const-string v1, "recallMessage IPC \u8fdb\u7a0b\u5c1a\u672a\u8fd0\u884c\u3002"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7619
    if-eqz p2, :cond_0

    .line 7620
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 7657
    :cond_0
    :goto_0
    return-void

    .line 7625
    :cond_1
    new-instance v3, Lio/rong/message/RecallCommandMessage;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getUId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lio/rong/message/RecallCommandMessage;-><init>(Ljava/lang/String;)V

    .line 7626
    .local v3, recallCommandMessage:Lio/rong/message/RecallCommandMessage;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lio/rong/imlib/RongIMClient$105;

    invoke-direct {v6, p0, p1, p2}, Lio/rong/imlib/RongIMClient$105;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V

    goto :goto_0
.end method

.method public reconnect(Lio/rong/imlib/RongIMClient$ConnectCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    .line 621
    const-string v2, "RongIMClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reconnect mConnectionStatus :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 623
    if-eqz p1, :cond_0

    .line 624
    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_USER_OR_PASSWD_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p1, v2}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 629
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 631
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    sget-object v2, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    if-eqz v2, :cond_2

    .line 632
    sget-object v2, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    sget-object v3, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v3, v3, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 633
    sget-object v2, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    const/4 v3, 0x0

    iput-object v3, v2, Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 636
    :cond_2
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    sget-object v3, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    if-eq v2, v3, :cond_3

    .line 637
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;

    invoke-static {v2, p1}, Lio/rong/imlib/RongIMClient;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imlib/RongIMClient;

    goto :goto_0

    .line 641
    :cond_3
    if-nez v1, :cond_4

    .line 642
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;

    sget-object v3, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 644
    :cond_4
    if-eqz p1, :cond_0

    .line 645
    sget-object v2, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public recordNotificationEvent(Ljava/lang/String;)V
    .locals 0
    .parameter "pushId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5883
    invoke-static {p1}, Lio/rong/push/RongPushClient;->recordNotificationEvent(Ljava/lang/String;)V

    .line 5884
    return-void
.end method

.method public removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1018
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1019
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "getConversation. the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1047
    :goto_0
    return-void

    .line 1024
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$9;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$9;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1059
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1061
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1062
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1064
    new-instance v3, Lio/rong/imlib/RongIMClient$10;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$10;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1085
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "userId"
    .parameter "callback"

    .prologue
    .line 4728
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4729
    const-string v0, "RongIMClient"

    const-string v1, "userId  is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    if-eqz p2, :cond_0

    .line 4731
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4767
    :cond_0
    :goto_0
    return-void

    .line 4735
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$83;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$83;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter "userId"
    .parameter "callback"

    .prologue
    .line 2824
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2825
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "discussionId or userId is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    if-eqz p3, :cond_1

    .line 2827
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2866
    :cond_1
    :goto_0
    return-void

    .line 2831
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$50;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$50;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeNotificationQuietHours(Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 5211
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$93;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$93;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5241
    return-void
.end method

.method public saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "content"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2474
    .local p4, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    new-instance v0, Lio/rong/imlib/model/Conversation;

    invoke-direct {v0}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 2475
    .local v0, conversation:Lio/rong/imlib/model/Conversation;
    invoke-virtual {v0, p1}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 2476
    invoke-virtual {v0, p2}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 2478
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 2479
    :cond_0
    const-string v1, "RongIMClient"

    const-string v2, "the value of targetId or ConversationType is error!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    if-eqz p4, :cond_1

    .line 2481
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2506
    :cond_1
    :goto_0
    return-void

    .line 2485
    :cond_2
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imlib/RongIMClient$43;

    invoke-direct {v2, p0, p4, v0, p3}, Lio/rong/imlib/RongIMClient$43;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "content"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2431
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2433
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2434
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2436
    new-instance v3, Lio/rong/imlib/RongIMClient$42;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$42;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, p3, v3}, Lio/rong/imlib/RongIMClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2457
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2462
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 2458
    :catch_0
    move-exception v0

    .line 2459
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public searchPublicService(Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "searchType"
    .parameter "keywords"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/RongIMClient$SearchType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfileList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4868
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    if-nez p1, :cond_1

    .line 4869
    const-string v0, "RongIMClient"

    const-string v1, "searchType  is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4870
    if-eqz p3, :cond_0

    .line 4871
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4908
    :cond_0
    :goto_0
    return-void

    .line 4875
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$86;

    invoke-direct {v1, p0, p3, p2, p1}, Lio/rong/imlib/RongIMClient$86;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SearchType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public searchPublicServiceByType(Lio/rong/imlib/model/Conversation$PublicServiceType;Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .parameter "publicServiceType"
    .parameter "searchType"
    .parameter "keywords"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$PublicServiceType;",
            "Lio/rong/imlib/RongIMClient$SearchType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfileList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4919
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 4920
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "searchType  is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4921
    if-eqz p4, :cond_1

    .line 4922
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4966
    :cond_1
    :goto_0
    return-void

    .line 4926
    :cond_2
    new-array v4, v2, [I

    aput v1, v4, v1

    .line 4927
    .local v4, businessType:[I
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    if-ne p1, v0, :cond_4

    .line 4928
    const/4 v0, 0x2

    aput v0, v4, v1

    .line 4933
    :cond_3
    :goto_1
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$87;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$87;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;[ILio/rong/imlib/RongIMClient$SearchType;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4929
    :cond_4
    sget-object v0, Lio/rong/imlib/model/Conversation$PublicServiceType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    if-ne p1, v0, :cond_3

    .line 4930
    aput v2, v4, v1

    goto :goto_1
.end method

.method public selectCustomServiceGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "kefuId"
    .parameter "groupId"

    .prologue
    .line 7444
    invoke-direct {p0, p1, p2}, Lio/rong/imlib/RongIMClient;->sendChangeModelMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 7445
    return-void
.end method

.method public sendImageMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V
    .locals 3
    .parameter "type"
    .parameter "targetId"
    .parameter "content"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"

    .prologue
    .line 3520
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_2

    .line 3521
    :cond_0
    const-string v1, "RongIMClient"

    const-string v2, "Illegal parameter!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    if-eqz p6, :cond_1

    .line 3523
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p6, v1}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3529
    :cond_1
    :goto_0
    return-void

    .line 3527
    :cond_2
    invoke-static {p2, p1, p3}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 3528
    .local v0, message:Lio/rong/imlib/model/Message;
    invoke-virtual {p0, v0, p4, p5, p6}, Lio/rong/imlib/RongIMClient;->sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V

    goto :goto_0
.end method

.method public sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V
    .locals 8
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 3542
    if-nez p1, :cond_1

    .line 3543
    const-string v0, "RongIMClient"

    const-string v1, "sendImageMessage message is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    if-eqz p4, :cond_0

    .line 3545
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3621
    :cond_0
    :goto_0
    return-void

    .line 3549
    :cond_1
    new-instance v6, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v6}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 3550
    .local v6, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    iput-object p1, v6, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 3552
    new-instance v7, Lio/rong/imlib/RongIMClient$61;

    invoke-direct {v7, p0, p4, p2, p3}, Lio/rong/imlib/RongIMClient$61;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 3590
    .local v7, uploadMediaCallback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;
    new-instance v5, Lio/rong/imlib/RongIMClient$62;

    invoke-direct {v5, p0, v6, p4, v7}, Lio/rong/imlib/RongIMClient$62;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V

    .line 3614
    .local v5, insertCallback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v0

    if-gtz v0, :cond_2

    .line 3615
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0

    .line 3617
    :cond_2
    sget-object v0, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {p1, v0}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 3618
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v0

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {p0, v0, v1, v3}, Lio/rong/imlib/RongIMClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3619
    invoke-direct {p0, p1, v7}, Lio/rong/imlib/RongIMClient;->uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V

    goto :goto_0
.end method

.method public sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;)V
    .locals 7
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"

    .prologue
    const/4 v6, 0x0

    .line 3643
    if-nez p1, :cond_1

    .line 3644
    const-string v1, "RongIMClient"

    const-string v2, "message is null!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    if-eqz p4, :cond_0

    .line 3646
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v6, v1}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3679
    :cond_0
    :goto_0
    return-void

    .line 3649
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v1, :cond_2

    .line 3650
    const-string v1, "RongIMClient"

    const-string v2, "sendImageMessage IPC \u8fdb\u7a0b\u5c1a\u672a\u8fd0\u884c\uff01"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    if-eqz p4, :cond_0

    .line 3652
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, p1, v1}, Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 3655
    :cond_2
    new-instance v0, Lio/rong/imlib/RongIMClient$63;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$63;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/Message;)V

    .line 3678
    .local v0, insertCallback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    move-object v1, p0

    move-object v4, v6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public sendLocationMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V
    .locals 7
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "sendMessageCallback"

    .prologue
    .line 3056
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lio/rong/message/LocationMessage;

    if-nez v0, :cond_2

    .line 3061
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "sendLocationMessage : conversation type or targetId or content can\'t be null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    if-eqz p4, :cond_1

    .line 3063
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-interface {p4, p1, v0}, Lio/rong/imlib/IRongCallback$ISendMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3129
    :cond_1
    :goto_0
    return-void

    .line 3068
    :cond_2
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->isShowMessageTyping()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3069
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->setTypingEnd(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    .line 3072
    :cond_3
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$55;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$55;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/IRongCallback$ISendMessageCallback;Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendMediaMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;)V
    .locals 10
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"

    .prologue
    .line 7733
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7737
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "conversation type or targetId or message content can\'t be null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7738
    if-eqz p4, :cond_1

    .line 7739
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-interface {p4, p1, v0}, Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 7831
    :cond_1
    :goto_0
    return-void

    .line 7743
    :cond_2
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v8

    check-cast v8, Lio/rong/message/MediaMessageContent;

    .line 7744
    .local v8, mediaMessageContent:Lio/rong/message/MediaMessageContent;
    invoke-virtual {v8}, Lio/rong/message/MediaMessageContent;->getLocalPath()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    .line 7745
    const-string v0, "RongIMClient"

    const-string v1, "Media file does not exist!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7746
    if-eqz p4, :cond_1

    .line 7747
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-interface {p4, p1, v0}, Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 7751
    :cond_3
    invoke-virtual {v8}, Lio/rong/message/MediaMessageContent;->getLocalPath()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 7752
    .local v7, localPath:Ljava/lang/String;
    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 7753
    .local v6, abPath:Ljava/lang/String;
    const-string v0, "file"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7754
    :cond_4
    const-string v0, "RongIMClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7755
    if-eqz p4, :cond_1

    .line 7756
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-interface {p4, p1, v0}, Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 7761
    :cond_5
    iget-object v9, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$107;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$107;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendMediaMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMediaMessageCallbackWithUploader;)V
    .locals 14
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"

    .prologue
    .line 7850
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 7854
    :cond_0
    const-string v1, "RongIMClient"

    const-string v2, "conversation type or targetId or message content can\'t be null!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7855
    if-eqz p4, :cond_1

    .line 7856
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    move-object/from16 v0, p4

    invoke-interface {v0, p1, v1}, Lio/rong/imlib/IRongCallback$ISendMediaMessageCallbackWithUploader;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 7893
    :cond_1
    :goto_0
    return-void

    .line 7860
    :cond_2
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    check-cast v10, Lio/rong/message/MediaMessageContent;

    .line 7861
    .local v10, mediaMessageContent:Lio/rong/message/MediaMessageContent;
    invoke-virtual {v10}, Lio/rong/message/MediaMessageContent;->getLocalPath()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    .line 7862
    const-string v1, "RongIMClient"

    const-string v2, "Media file does not exist!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7863
    if-eqz p4, :cond_1

    .line 7864
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    move-object/from16 v0, p4

    invoke-interface {v0, p1, v1}, Lio/rong/imlib/IRongCallback$ISendMediaMessageCallbackWithUploader;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 7868
    :cond_3
    invoke-virtual {v10}, Lio/rong/message/MediaMessageContent;->getLocalPath()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 7869
    .local v9, localPath:Ljava/lang/String;
    const/4 v1, 0x7

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 7870
    .local v8, abPath:Ljava/lang/String;
    const-string v1, "file"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 7871
    :cond_4
    const-string v1, "RongIMClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7872
    if-eqz p4, :cond_1

    .line 7873
    sget-object v1, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    move-object/from16 v0, p4

    invoke-interface {v0, p1, v1}, Lio/rong/imlib/IRongCallback$ISendMediaMessageCallbackWithUploader;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 7878
    :cond_5
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v13

    new-instance v1, Lio/rong/imlib/RongIMClient$108;

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/rong/imlib/RongIMClient$108;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/IRongCallback$ISendMediaMessageCallbackWithUploader;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/Message;)V

    move-object v2, p0

    move-object v3, v7

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;
    .locals 11
    .parameter "type"
    .parameter "targetId"
    .parameter "content"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3148
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3149
    .local v9, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v10, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v10}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 3151
    .local v10, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    new-instance v7, Lio/rong/imlib/RongIMClient$56;

    invoke-direct {v7, p0, v10, v9}, Lio/rong/imlib/RongIMClient$56;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3165
    :try_start_0
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3170
    :goto_0
    iget-object v0, v10, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Message;

    return-object v0

    .line 3166
    :catch_0
    move-exception v8

    .line 3167
    .local v8, e:Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;
    .locals 9
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3481
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3483
    .local v7, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v8}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 3485
    .local v8, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    new-instance v5, Lio/rong/imlib/RongIMClient$60;

    invoke-direct {v5, p0, v8, v7}, Lio/rong/imlib/RongIMClient$60;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3499
    :try_start_0
    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3503
    :goto_0
    iget-object v0, v8, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Message;

    return-object v0

    .line 3500
    :catch_0
    move-exception v6

    .line 3501
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V
    .locals 1
    .parameter "type"
    .parameter "targetId"
    .parameter "content"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"

    .prologue
    .line 3303
    invoke-static {p2, p1, p3}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 3304
    .local v0, message:Lio/rong/imlib/model/Message;
    invoke-virtual {p0, v0, p4, p5, p6}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V

    .line 3305
    return-void
.end method

.method public sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 6
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "content"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/MessageContent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$SendMessageCallback;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3188
    .local p7, resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    invoke-static {p2, p1, p3}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v1

    .local v1, message:Lio/rong/imlib/model/Message;
    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 3189
    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3190
    return-void
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V
    .locals 9
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"

    .prologue
    .line 3323
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3324
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "sendMessage : conversation type or targetId or content can\'t be null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    if-eqz p4, :cond_1

    .line 3326
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-interface {p4, p1, v0}, Lio/rong/imlib/IRongCallback$ISendMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3403
    :cond_1
    :goto_0
    return-void

    .line 3330
    :cond_2
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lio/rong/imlib/MessageTag;

    .line 3331
    .local v7, msgTag:Lio/rong/imlib/MessageTag;
    if-nez v7, :cond_3

    .line 3332
    const-string v0, "RongIMClient"

    const-string v1, "sendMessage \u81ea\u5b9a\u4e49\u6d88\u606f\u6ca1\u6709\u52a0\u6ce8\u89e3\u4fe1\u606f\u3002"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    if-eqz p4, :cond_1

    .line 3334
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-interface {p4, p1, v0}, Lio/rong/imlib/IRongCallback$ISendMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 3339
    :cond_3
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->isShowMessageTyping()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3340
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    .line 3341
    .local v6, content:Lio/rong/imlib/model/MessageContent;
    instance-of v0, v6, Lio/rong/imlib/TypingMessage/TypingStatusMessage;

    if-nez v0, :cond_4

    instance-of v0, v6, Lio/rong/message/ReadReceiptMessage;

    if-nez v0, :cond_4

    .line 3342
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->setTypingEnd(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    .line 3346
    .end local v6           #content:Lio/rong/imlib/model/MessageContent;
    :cond_4
    iget-object v8, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$58;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$58;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/IRongCallback$ISendMessageCallback;Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 10
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$SendMessageCallback;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3205
    .local p5, resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3206
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "sendMessage : conversation type or targetId or content can\'t be null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    if-eqz p4, :cond_1

    .line 3208
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3286
    :cond_1
    :goto_0
    return-void

    .line 3211
    :cond_2
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lio/rong/imlib/MessageTag;

    .line 3212
    .local v8, msgTag:Lio/rong/imlib/MessageTag;
    if-nez v8, :cond_3

    .line 3213
    const-string v0, "RongIMClient"

    const-string v1, "sendMessage \u81ea\u5b9a\u4e49\u6d88\u606f\u6ca1\u6709\u52a0\u6ce8\u89e3\u4fe1\u606f\u3002"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    if-eqz p4, :cond_1

    .line 3215
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 3219
    :cond_3
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->isShowMessageTyping()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3220
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    .line 3221
    .local v7, content:Lio/rong/imlib/model/MessageContent;
    instance-of v0, v7, Lio/rong/imlib/TypingMessage/TypingStatusMessage;

    if-nez v0, :cond_4

    instance-of v0, v7, Lio/rong/message/ReadReceiptMessage;

    if-nez v0, :cond_4

    .line 3222
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->setTypingEnd(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    .line 3226
    .end local v7           #content:Lio/rong/imlib/model/MessageContent;
    :cond_4
    iget-object v9, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$57;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/rong/imlib/RongIMClient$57;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendReadReceiptMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;J)V
    .locals 9
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "timestamp"

    .prologue
    const/4 v4, 0x0

    .line 7356
    new-instance v3, Lio/rong/message/ReadReceiptMessage;

    invoke-direct {v3, p3, p4}, Lio/rong/message/ReadReceiptMessage;-><init>(J)V

    .local v3, readRecMsg:Lio/rong/message/ReadReceiptMessage;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 7357
    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 7358
    return-void
.end method

.method public sendStatusMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 3
    .parameter "message"
    .parameter "callback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "Lio/rong/imlib/RongIMClient$SendMessageCallback;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3418
    .local p3, resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/rong/imlib/MessageTag;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/MessageTag;

    .line 3419
    .local v0, msgTag:Lio/rong/imlib/MessageTag;
    if-nez v0, :cond_0

    .line 3420
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "\u81ea\u5b9a\u4e49\u6d88\u606f\u6ca1\u6709\u52a0\u6ce8\u89e3\u4fe1\u606f\u3002"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3422
    :cond_0
    invoke-interface {v0}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    .line 3423
    const-string v1, "RongIMClient"

    const-string v2, "sendStatusMessage MessageTag should be STATUS."

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    :goto_0
    return-void

    .line 3427
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imlib/RongIMClient$59;

    invoke-direct {v2, p0, p2, p1, p3}, Lio/rong/imlib/RongIMClient$59;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendTypingStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "typingContentType"

    .prologue
    .line 7319
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sendTypingMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V

    .line 7320
    return-void
.end method

.method public setConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "notificationStatus"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4032
    .local p4, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 4033
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "Parameter is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    if-eqz p4, :cond_1

    .line 4035
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4070
    :cond_1
    :goto_0
    return-void

    .line 4039
    :cond_2
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$69;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$69;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ZLio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .parameter "conversationType"
    .parameter "id"
    .parameter "isTop"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Z",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1102
    .local p4, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1103
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "getConversation. the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p4, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1133
    :goto_0
    return-void

    .line 1108
    :cond_1
    iget-object v6, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$11;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/RongIMClient$11;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "isTop"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1145
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1146
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 1147
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1149
    new-instance v3, Lio/rong/imlib/RongIMClient$12;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$12;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, p3, v3}, Lio/rong/imlib/RongIMClient;->setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ZLio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1169
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDiscussionInviteStatus(Ljava/lang/String;Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 4080
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    .line 4081
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "Parameter is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4082
    if-eqz p3, :cond_1

    .line 4083
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4122
    :cond_1
    :goto_0
    return-void

    .line 4087
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$70;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$70;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter "name"
    .parameter "callback"

    .prologue
    .line 2656
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2657
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "discussionId or name is null"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    if-eqz p3, :cond_1

    .line 2659
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2699
    :cond_1
    :goto_0
    return-void

    .line 2663
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$47;

    invoke-direct {v1, p0, p3, p2, p1}, Lio/rong/imlib/RongIMClient$47;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setMessageExtra(ILjava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "messageId"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2142
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 2143
    const-string v0, "RongIMClient"

    const-string v1, "messageId is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2170
    :goto_0
    return-void

    .line 2148
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$35;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$35;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setMessageExtra(ILjava/lang/String;)Z
    .locals 4
    .parameter "messageId"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2100
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2102
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2103
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2105
    new-instance v3, Lio/rong/imlib/RongIMClient$34;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$34;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->setMessageExtra(ILjava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2126
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2131
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 2127
    :catch_0
    move-exception v0

    .line 2128
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "messageId"
    .parameter "receivedStatus"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/rong/imlib/model/Message$ReceivedStatus;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2225
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_1

    .line 2226
    const-string v0, "RongIMClient"

    const-string v1, "Error.The messageId can\'t be 0!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    if-eqz p3, :cond_0

    .line 2228
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2253
    :cond_0
    :goto_0
    return-void

    .line 2232
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$37;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$37;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;ILio/rong/imlib/model/Message$ReceivedStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;)Z
    .locals 4
    .parameter "messageId"
    .parameter "receivedStatus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2183
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2185
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2186
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2188
    new-instance v3, Lio/rong/imlib/RongIMClient$36;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$36;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2209
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2214
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 2210
    :catch_0
    move-exception v0

    .line 2211
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "messageId"
    .parameter "sentStatus"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/rong/imlib/model/Message$SentStatus;",
            "Lio/rong/imlib/RongIMClient$ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2308
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_1

    .line 2309
    const-string v0, "RongIMClient"

    const-string v1, "Error.The messageId can\'t be 0!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    if-eqz p3, :cond_0

    .line 2311
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2336
    :cond_0
    :goto_0
    return-void

    .line 2315
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$39;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$39;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;ILio/rong/imlib/model/Message$SentStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;)Z
    .locals 4
    .parameter "messageId"
    .parameter "sentStatus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2266
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2268
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v2}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2269
    .local v2, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2271
    new-instance v3, Lio/rong/imlib/RongIMClient$38;

    invoke-direct {v3, p0, v2, v1}, Lio/rong/imlib/RongIMClient$38;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, p1, p2, v3}, Lio/rong/imlib/RongIMClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2292
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2297
    :goto_0
    iget-object v3, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 2293
    :catch_0
    move-exception v0

    .line 2294
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 4
    .parameter "startTime"
    .parameter "spanMinutes"
    .parameter "callback"

    .prologue
    .line 5160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-lez p2, :cond_0

    const/16 v2, 0x5a0

    if-lt p2, v2, :cond_2

    .line 5161
    :cond_0
    const-string v2, "RongIMClient"

    const-string v3, "startTime, spanMinutes \u6216 spanMinutes \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    if-eqz p3, :cond_1

    .line 5163
    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5203
    :cond_1
    :goto_0
    return-void

    .line 5167
    :cond_2
    const-string v2, "^(([0-1][0-9])|2[0-3]):[0-5][0-9]:([0-5][0-9])$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 5168
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 5170
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    .line 5171
    const-string v2, "RongIMClient"

    const-string v3, "startTime \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5172
    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 5176
    :cond_3
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lio/rong/imlib/RongIMClient$92;

    invoke-direct {v3, p0, p3, p1, p2}, Lio/rong/imlib/RongIMClient$92;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startCustomService(Ljava/lang/String;Lio/rong/imlib/ICustomServiceListener;Lio/rong/imlib/model/CSCustomServiceInfo;)V
    .locals 9
    .parameter "kefuId"
    .parameter "listener"
    .parameter "customServiceInfo"

    .prologue
    const/4 v4, 0x0

    .line 7405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7406
    const-string v0, "RongIMClient"

    const-string v1, "startCustomService kefuId should not be null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7435
    :goto_0
    return-void

    .line 7409
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7410
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7411
    iput-object v4, p0, Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;

    .line 7413
    :cond_1
    if-nez p3, :cond_2

    .line 7414
    new-instance v8, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;

    invoke-direct {v8}, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;-><init>()V

    .line 7415
    .local v8, csBuilder:Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    invoke-virtual {v8}, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->build()Lio/rong/imlib/model/CSCustomServiceInfo;

    move-result-object p3

    .line 7417
    .end local v8           #csBuilder:Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    :cond_2
    new-instance v3, Lio/rong/message/CSHandShakeMessage;

    invoke-direct {v3}, Lio/rong/message/CSHandShakeMessage;-><init>()V

    .line 7418
    .local v3, csHandShakeMessage:Lio/rong/message/CSHandShakeMessage;
    invoke-virtual {v3, p3}, Lio/rong/message/CSHandShakeMessage;->setCustomInfo(Lio/rong/imlib/model/CSCustomServiceInfo;)V

    .line 7419
    iput-object p2, p0, Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;

    .line 7420
    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    new-instance v6, Lio/rong/imlib/RongIMClient$102;

    invoke-direct {v6, p0}, Lio/rong/imlib/RongIMClient$102;-><init>(Lio/rong/imlib/RongIMClient;)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public startRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 7014
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-nez v2, :cond_0

    .line 7015
    const-string v2, "RongIMClient"

    const-string v3, "startRealTimeLocation IPC \u8fdb\u7a0b\u5c1a\u672a\u8fd0\u884c\u3002"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7016
    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NOT_INIT:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    .line 7030
    :goto_0
    return-object v2

    .line 7019
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 7020
    :cond_1
    const-string v2, "RongIMClient"

    const-string v3, "startRealTimeLocation Type or id is null!"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7021
    const/4 v2, 0x0

    goto :goto_0

    .line 7024
    :cond_2
    const/4 v0, -0x1

    .line 7026
    .local v0, code:I
    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-interface {v2, v3, p2}, Lio/rong/imlib/IHandler;->startRealTimeLocation(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 7030
    :goto_1
    invoke-static {v0}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->valueOf(I)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    move-result-object v2

    goto :goto_0

    .line 7027
    :catch_0
    move-exception v1

    .line 7028
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public stopCustomService(Ljava/lang/String;)V
    .locals 9
    .parameter "kefuId"

    .prologue
    const/4 v4, 0x0

    .line 7575
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7576
    const-string v0, "RongIMClient"

    const-string v1, "stopCustomService kefuId should not be null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7588
    :goto_0
    return-void

    .line 7579
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7580
    const-string v0, "RongIMClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCustomService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not started yet!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7583
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/rong/imlib/RongIMClient$CustomServiceProfile;

    .line 7584
    .local v8, profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    iget-object v0, v8, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->sid:Ljava/lang/String;

    iget-object v1, v8, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->uid:Ljava/lang/String;

    iget-object v2, v8, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->pid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/rong/message/CSSuspendMessage;->obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/message/CSSuspendMessage;

    move-result-object v3

    .line 7585
    .local v3, csSuspendMessage:Lio/rong/message/CSSuspendMessage;
    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 7586
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7587
    iput-object v4, p0, Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;

    goto :goto_0
.end method

.method public subscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "publicServiceType"
    .parameter "publicServiceId"
    .parameter "callback"

    .prologue
    .line 4976
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4977
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "Parameter  is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4978
    if-eqz p3, :cond_1

    .line 4979
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5012
    :cond_1
    :goto_0
    return-void

    .line 4983
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$88;

    invoke-direct {v1, p0, p3, p2, p1}, Lio/rong/imlib/RongIMClient$88;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$PublicServiceType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public switchToHumanMode(Ljava/lang/String;)V
    .locals 4
    .parameter "kefuId"

    .prologue
    .line 7482
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7483
    const-string v1, "RongIMClient"

    const-string v2, "switchToHumanMode kefuId should not be null!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7503
    :goto_0
    return-void

    .line 7486
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7487
    const-string v1, "RongIMClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToHumanMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not started yet!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7490
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->customServiceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;

    .line 7491
    .local v0, profile:Lio/rong/imlib/RongIMClient$CustomServiceProfile;
    iget-object v1, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->groupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lio/rong/imlib/RongIMClient$CustomServiceProfile;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 7492
    sget-object v1, Lio/rong/imlib/RongIMClient;->mHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imlib/RongIMClient$104;

    invoke-direct {v2, p0, v0}, Lio/rong/imlib/RongIMClient$104;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$CustomServiceProfile;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7501
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lio/rong/imlib/RongIMClient;->sendChangeModelMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncGroup(Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Group;",
            ">;",
            "Lio/rong/imlib/RongIMClient$OperationCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4133
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 4134
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "groups is null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    if-eqz p2, :cond_1

    .line 4136
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4171
    :cond_1
    :goto_0
    return-void

    .line 4140
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$71;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$71;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public syncUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "userData"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5379
    if-nez p1, :cond_0

    .line 5380
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5413
    :goto_0
    return-void

    .line 5383
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$97;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imlib/RongIMClient$97;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Lio/rong/imlib/model/UserData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public unsubscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "publicServiceType"
    .parameter "publicServiceId"
    .parameter "callback"

    .prologue
    .line 5022
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5023
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "Parameter  is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5024
    if-eqz p3, :cond_1

    .line 5025
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p3, v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5059
    :cond_1
    :goto_0
    return-void

    .line 5029
    :cond_2
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$89;

    invoke-direct {v1, p0, p3, p2, p1}, Lio/rong/imlib/RongIMClient$89;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$PublicServiceType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public updateConversationInfo(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 8
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "title"
    .parameter "portrait"
    .parameter "callback"

    .prologue
    .line 944
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 945
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "getConversation. the parameter of targetId or ConversationType is error!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p5, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 972
    :goto_0
    return-void

    .line 950
    :cond_1
    iget-object v7, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/RongIMClient$7;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/rong/imlib/RongIMClient$7;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public updateMessageReceiptStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JLio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 9
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "timestamp"
    .parameter "callback"

    .prologue
    .line 5252
    iget-object v0, p0, Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/RongIMClient$94;

    move-object v2, p0

    move-object v3, p5

    move-object v4, p2

    move-object v5, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lio/rong/imlib/RongIMClient$94;-><init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5275
    return-void
.end method

.method public updateRealTimeLocationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;DD)V
    .locals 9
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 7240
    const-string v1, "RongIMClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRealTimeLocationStatus latitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7241
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 7242
    :cond_0
    const-string v1, "RongIMClient"

    const-string v2, "updateRealTimeLocationStatus Type or id is null!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7253
    :cond_1
    :goto_0
    return-void

    .line 7246
    :cond_2
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    if-eqz v1, :cond_1

    .line 7248
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lio/rong/imlib/IHandler;->updateRealTimeLocationStatus(ILjava/lang/String;DD)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7249
    :catch_0
    move-exception v0

    .line 7250
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
