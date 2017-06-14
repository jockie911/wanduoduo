.class public Lio/rong/push/core/PushConnectivityManager;
.super Lio/rong/push/common/stateMachine/StateMachine;
.source "PushConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/push/core/PushConnectivityManager$ConnectedState;,
        Lio/rong/push/core/PushConnectivityManager$PingState;,
        Lio/rong/push/core/PushConnectivityManager$ConnectingState;,
        Lio/rong/push/core/PushConnectivityManager$DisconnectedState;,
        Lio/rong/push/core/PushConnectivityManager$Singleton;,
        Lio/rong/push/core/PushConnectivityManager$NetworkType;
    }
.end annotation


# static fields
.field private static final EVENT_CONNECT:I = 0x1

.field private static final EVENT_CONNECTED:I = 0x2

.field private static final EVENT_DISCONNECT:I = 0x3

.field private static final EVENT_DISCONNECTED:I = 0x4

.field private static final EVENT_HEART_BEAT:I = 0x5

.field private static final EVENT_PING_FAILURE:I = 0x6

.field private static final EVENT_PING_SUCCESS:I = 0x7

.field private static final EVENT_REGET_NAVI:I = 0xa

.field private static final EVENT_SEND_REGISTRATION_INFO:I = 0x9

.field private static final EVENT_USER_OPERATION:I = 0x8

.field private static final IP_EXPIRE_TIME:J = 0x6ddd00L

.field private static final TAG:Ljava/lang/String; = "PushConnectivityManager"


# instance fields
.field private ALARM_PING_REQUEST_CODE:I

.field private ALARM_REQUEST_CODE:I

.field private appKey:Ljava/lang/String;

.field private connectedState:Lio/rong/push/core/PushConnectivityManager$ConnectedState;

.field private connectingState:Lio/rong/push/core/PushConnectivityManager$ConnectingState;

.field private deviceId:Ljava/lang/String;

.field private disconnectedState:Lio/rong/push/core/PushConnectivityManager$DisconnectedState;

.field private enabledPushTypes:Ljava/lang/String;

.field private initialized:Z

.field private mContext:Landroid/content/Context;

.field private mNavigationRetryTimes:I

.field private mReconnectTimes:I

.field private networkType:Lio/rong/push/core/PushConnectivityManager$NetworkType;

.field pingState:Lio/rong/push/core/PushConnectivityManager$PingState;

.field private pushClient:Lio/rong/push/core/PushClient;

.field private serverDomain:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    const-string v0, "PushConnectivityManager"

    invoke-direct {p0, v0}, Lio/rong/push/common/stateMachine/StateMachine;-><init>(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lio/rong/push/core/PushConnectivityManager$NetworkType;->NONE:Lio/rong/push/core/PushConnectivityManager$NetworkType;

    iput-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->networkType:Lio/rong/push/core/PushConnectivityManager$NetworkType;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/push/core/PushConnectivityManager;->initialized:Z

    .line 62
    const/16 v0, 0x65

    iput v0, p0, Lio/rong/push/core/PushConnectivityManager;->ALARM_REQUEST_CODE:I

    .line 63
    const/16 v0, 0x66

    iput v0, p0, Lio/rong/push/core/PushConnectivityManager;->ALARM_PING_REQUEST_CODE:I

    .line 64
    iput v2, p0, Lio/rong/push/core/PushConnectivityManager;->mNavigationRetryTimes:I

    .line 65
    iput v2, p0, Lio/rong/push/core/PushConnectivityManager;->mReconnectTimes:I

    .line 214
    new-instance v0, Lio/rong/push/core/PushConnectivityManager$DisconnectedState;

    invoke-direct {v0, p0, v1}, Lio/rong/push/core/PushConnectivityManager$DisconnectedState;-><init>(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/core/PushConnectivityManager$1;)V

    iput-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->disconnectedState:Lio/rong/push/core/PushConnectivityManager$DisconnectedState;

    .line 319
    new-instance v0, Lio/rong/push/core/PushConnectivityManager$ConnectingState;

    invoke-direct {v0, p0, v1}, Lio/rong/push/core/PushConnectivityManager$ConnectingState;-><init>(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/core/PushConnectivityManager$1;)V

    iput-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->connectingState:Lio/rong/push/core/PushConnectivityManager$ConnectingState;

    .line 353
    new-instance v0, Lio/rong/push/core/PushConnectivityManager$PingState;

    invoke-direct {v0, p0, v1}, Lio/rong/push/core/PushConnectivityManager$PingState;-><init>(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/core/PushConnectivityManager$1;)V

    iput-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->pingState:Lio/rong/push/core/PushConnectivityManager$PingState;

    .line 409
    new-instance v0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;

    invoke-direct {v0, p0, v1}, Lio/rong/push/core/PushConnectivityManager$ConnectedState;-><init>(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/core/PushConnectivityManager$1;)V

    iput-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->connectedState:Lio/rong/push/core/PushConnectivityManager$ConnectedState;

    .line 81
    return-void
.end method

.method static synthetic access$100(Lio/rong/push/core/PushConnectivityManager;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Lio/rong/push/core/PushConnectivityManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lio/rong/push/core/PushConnectivityManager;->mReconnectTimes:I

    return v0
.end method

.method static synthetic access$1010(Lio/rong/push/core/PushConnectivityManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lio/rong/push/core/PushConnectivityManager;->mReconnectTimes:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/rong/push/core/PushConnectivityManager;->mReconnectTimes:I

    return v0
.end method

.method static synthetic access$1200(Lio/rong/push/core/PushConnectivityManager;)Lio/rong/push/core/PushConnectivityManager$ConnectedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->connectedState:Lio/rong/push/core/PushConnectivityManager$ConnectedState;

    return-object v0
.end method

.method static synthetic access$1300(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lio/rong/push/core/PushConnectivityManager;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lio/rong/push/core/PushConnectivityManager;)Lio/rong/push/core/PushConnectivityManager$DisconnectedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->disconnectedState:Lio/rong/push/core/PushConnectivityManager$DisconnectedState;

    return-object v0
.end method

.method static synthetic access$1600(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$1900(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$200(Lio/rong/push/core/PushConnectivityManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lio/rong/push/core/PushConnectivityManager;->internalConnect()V

    return-void
.end method

.method static synthetic access$2000(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lio/rong/push/core/PushConnectivityManager;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2600(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$2700(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$300(Lio/rong/push/core/PushConnectivityManager;)Lio/rong/push/core/PushConnectivityManager$ConnectingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->connectingState:Lio/rong/push/core/PushConnectivityManager$ConnectingState;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V

    return-void
.end method

.method static synthetic access$500(Lio/rong/push/core/PushConnectivityManager;)Lio/rong/push/core/PushClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->pushClient:Lio/rong/push/core/PushClient;

    return-object v0
.end method

.method static synthetic access$600(Lio/rong/push/core/PushConnectivityManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->enabledPushTypes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lio/rong/push/core/PushConnectivityManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lio/rong/push/core/PushConnectivityManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lio/rong/push/core/PushConnectivityManager;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lio/rong/push/core/PushConnectivityManager$Singleton;->sInstance:Lio/rong/push/core/PushConnectivityManager;

    return-object v0
.end method

.method private getNavigationAddress()Ljava/lang/String;
    .locals 10

    .prologue
    .line 470
    iget-object v7, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    const-string v8, "RongPush"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 471
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v7, "navigation_ip_value"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, ip:Ljava/lang/String;
    const-string v7, "deviceId"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, deviceId:Ljava/lang/String;
    const-string v7, "navigation_time"

    const-wide/16 v8, -0x1

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 474
    .local v4, lastTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 476
    .local v0, currentTime:J
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-wide/32 v8, 0x6ddd00

    add-long/2addr v8, v4

    cmp-long v7, v0, v8

    if-lez v7, :cond_1

    .line 477
    :cond_0
    invoke-direct {p0, v2}, Lio/rong/push/core/PushConnectivityManager;->getNavigationAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 480
    :cond_1
    return-object v3
.end method

.method private getNavigationAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .parameter "deviceId"

    .prologue
    .line 484
    const/4 v6, 0x0

    .line 485
    .local v6, conn:Ljava/net/HttpURLConnection;
    const/4 v13, 0x0

    .line 486
    .local v13, responseStream:Ljava/io/BufferedInputStream;
    const-string v4, ""

    .line 489
    .local v4, address:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/push/core/PushConnectivityManager;->serverDomain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 490
    new-instance v16, Ljava/net/URL;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lio/rong/push/core/PushConnectivityManager;->serverDomain:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/navipush.json"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 494
    .local v16, url:Ljava/net/URL;
    :goto_0
    const-string v18, "PushConnectivityManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "navigation url : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 496
    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 497
    const/16 v18, 0x7530

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 498
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 499
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 501
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 502
    const-string v18, "POST"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 504
    .local v8, os:Ljava/io/OutputStream;
    new-instance v17, Ljava/io/BufferedWriter;

    new-instance v18, Ljava/io/OutputStreamWriter;

    const-string v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 505
    .local v17, writer:Ljava/io/BufferedWriter;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "deviceId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 506
    .local v9, param:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedWriter;->flush()V

    .line 508
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedWriter;->close()V

    .line 509
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 511
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 513
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 514
    .local v10, responseCode:I
    const/16 v18, 0x64

    move/from16 v0, v18

    if-lt v10, v0, :cond_8

    const/16 v18, 0x12c

    move/from16 v0, v18

    if-gt v10, v0, :cond_8

    .line 515
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 516
    .end local v13           #responseStream:Ljava/io/BufferedInputStream;
    .local v14, responseStream:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    const/16 v18, 0x100

    move/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 518
    .local v11, responseData:Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    .local v5, c:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_4

    .line 519
    invoke-virtual {v11, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 535
    .end local v5           #c:I
    .end local v11           #responseData:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v7

    move-object v13, v14

    .line 536
    .end local v8           #os:Ljava/io/OutputStream;
    .end local v9           #param:Ljava/lang/String;
    .end local v10           #responseCode:I
    .end local v14           #responseStream:Ljava/io/BufferedInputStream;
    .end local v16           #url:Ljava/net/URL;
    .end local v17           #writer:Ljava/io/BufferedWriter;
    .local v7, e:Ljava/lang/Exception;
    .restart local v13       #responseStream:Ljava/io/BufferedInputStream;
    :goto_2
    :try_start_2
    const-string v18, "PushConnectivityManager"

    const-string v19, "Exception when get navigation address.Retry again."

    invoke-static/range {v18 .. v19}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lio/rong/push/core/PushConnectivityManager;->mNavigationRetryTimes:I

    move/from16 v18, v0

    if-lez v18, :cond_0

    .line 539
    invoke-virtual/range {p0 .. p0}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0xa

    const-wide/16 v20, 0x7d0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 540
    move-object/from16 v0, p0

    iget v0, v0, Lio/rong/push/core/PushConnectivityManager;->mNavigationRetryTimes:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lio/rong/push/core/PushConnectivityManager;->mNavigationRetryTimes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 543
    :cond_0
    if-eqz v13, :cond_1

    .line 545
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 549
    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 550
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 554
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-object v4

    .line 492
    :cond_3
    :try_start_4
    new-instance v16, Ljava/net/URL;

    const-string v18, "http://nav.cn.ronghub.com/navipush.json"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .restart local v16       #url:Ljava/net/URL;
    goto/16 :goto_0

    .line 522
    .end local v13           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v5       #c:I
    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v9       #param:Ljava/lang/String;
    .restart local v10       #responseCode:I
    .restart local v11       #responseData:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #responseStream:Ljava/io/BufferedInputStream;
    .restart local v17       #writer:Ljava/io/BufferedWriter;
    :cond_4
    :try_start_5
    new-instance v12, Lorg/json/JSONObject;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 523
    .local v12, responseDict:Lorg/json/JSONObject;
    const-string v18, "code"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "200"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    .line 524
    .local v15, success:Z
    if-eqz v15, :cond_5

    .line 525
    const-string v18, "server"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 526
    const-string v18, "PushConnectivityManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getNavigationAddress.address:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v4, v1, v2}, Lio/rong/push/core/PushConnectivityManager;->saveNavigationInfo(Ljava/lang/String;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    move-object v13, v14

    .line 543
    .end local v5           #c:I
    .end local v11           #responseData:Ljava/io/ByteArrayOutputStream;
    .end local v12           #responseDict:Lorg/json/JSONObject;
    .end local v14           #responseStream:Ljava/io/BufferedInputStream;
    .end local v15           #success:Z
    .restart local v13       #responseStream:Ljava/io/BufferedInputStream;
    :cond_6
    :goto_5
    if-eqz v13, :cond_7

    .line 545
    :try_start_6
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 549
    :cond_7
    :goto_6
    if-eqz v6, :cond_2

    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 550
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 530
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Lio/rong/push/core/PushConnectivityManager;->mNavigationRetryTimes:I

    move/from16 v18, v0

    if-lez v18, :cond_6

    .line 531
    invoke-virtual/range {p0 .. p0}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0xa

    const-wide/16 v20, 0x7d0

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 532
    move-object/from16 v0, p0

    iget v0, v0, Lio/rong/push/core/PushConnectivityManager;->mNavigationRetryTimes:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lio/rong/push/core/PushConnectivityManager;->mNavigationRetryTimes:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 535
    .end local v8           #os:Ljava/io/OutputStream;
    .end local v9           #param:Ljava/lang/String;
    .end local v10           #responseCode:I
    .end local v16           #url:Ljava/net/URL;
    .end local v17           #writer:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v7

    goto/16 :goto_2

    .line 543
    :catchall_0
    move-exception v18

    :goto_7
    if-eqz v13, :cond_9

    .line 545
    :try_start_8
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 549
    :cond_9
    :goto_8
    if-eqz v6, :cond_a

    instance-of v0, v6, Ljava/net/HttpURLConnection;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 550
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v18

    .line 546
    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v9       #param:Ljava/lang/String;
    .restart local v10       #responseCode:I
    .restart local v16       #url:Ljava/net/URL;
    .restart local v17       #writer:Ljava/io/BufferedWriter;
    :catch_2
    move-exception v18

    goto :goto_6

    .end local v8           #os:Ljava/io/OutputStream;
    .end local v9           #param:Ljava/lang/String;
    .end local v10           #responseCode:I
    .end local v16           #url:Ljava/net/URL;
    .end local v17           #writer:Ljava/io/BufferedWriter;
    .restart local v7       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v18

    goto/16 :goto_3

    .end local v7           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v19

    goto :goto_8

    .line 543
    .end local v13           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v8       #os:Ljava/io/OutputStream;
    .restart local v9       #param:Ljava/lang/String;
    .restart local v10       #responseCode:I
    .restart local v14       #responseStream:Ljava/io/BufferedInputStream;
    .restart local v16       #url:Ljava/net/URL;
    .restart local v17       #writer:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v18

    move-object v13, v14

    .end local v14           #responseStream:Ljava/io/BufferedInputStream;
    .restart local v13       #responseStream:Ljava/io/BufferedInputStream;
    goto :goto_7
.end method

.method private internalConnect()V
    .locals 7

    .prologue
    .line 248
    invoke-direct {p0}, Lio/rong/push/core/PushConnectivityManager;->getNavigationAddress()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, str:[Ljava/lang/String;
    iget-object v2, p0, Lio/rong/push/core/PushConnectivityManager;->pushClient:Lio/rong/push/core/PushClient;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lio/rong/push/core/PushConnectivityManager;->deviceId:Ljava/lang/String;

    new-instance v6, Lio/rong/push/core/PushConnectivityManager$2;

    invoke-direct {v6, p0}, Lio/rong/push/core/PushConnectivityManager$2;-><init>(Lio/rong/push/core/PushConnectivityManager;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/rong/push/core/PushClient;->connect(Ljava/lang/String;ILjava/lang/String;Lio/rong/push/core/PushClient$ConnectStatusCallback;)V

    .line 317
    .end local v1           #str:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private saveNavigationInfo(Ljava/lang/String;J)V
    .locals 6
    .parameter "ip"
    .parameter "time"

    .prologue
    .line 558
    iget-object v2, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    const-string v3, "RongPush"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 559
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 560
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "navigation_ip_value"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 561
    const-string v2, "navigation_time"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 562
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 563
    return-void
.end method


# virtual methods
.method public cancelHeartbeat()V
    .locals 6

    .prologue
    .line 632
    const-string v3, "PushConnectivityManager"

    const-string v4, "cancelHeartbeat"

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 634
    const-string v3, "PushConnectivityManager"

    const-string v4, "cancelHeartbeat. does not init."

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_0
    return-void

    .line 637
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    const-class v4, Lio/rong/push/PushReceiver;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 638
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "io.rong.push.intent.action.HEART_BEAT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lio/rong/push/core/PushConnectivityManager;->ALARM_REQUEST_CODE:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 641
    .local v2, mPendingIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 642
    .local v1, mAlarmMng:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 644
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->stopPingTimer()V

    goto :goto_0
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const-string v0, "PushConnectivityManager"

    const-string v1, "connect does not init."

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string v0, "PushConnectivityManager"

    const-string v1, "disconnect does not init."

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->cancelHeartbeat()V

    .line 203
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getNetworkType()Lio/rong/push/core/PushConnectivityManager$NetworkType;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->networkType:Lio/rong/push/core/PushConnectivityManager$NetworkType;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "deviceId"
    .parameter "appKey"
    .parameter "pushTypes"

    .prologue
    .line 88
    const-string v0, "PushConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init, initialized = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lio/rong/push/core/PushConnectivityManager;->initialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deviceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",enabledPushTypes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/push/core/PushConnectivityManager;->initialized:Z

    .line 91
    iput-object p4, p0, Lio/rong/push/core/PushConnectivityManager;->enabledPushTypes:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lio/rong/push/core/PushConnectivityManager;->appKey:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lio/rong/push/core/PushConnectivityManager;->deviceId:Ljava/lang/String;

    .line 95
    new-instance v0, Lio/rong/push/core/PushClient;

    invoke-static {p1}, Lio/rong/imlib/common/DeviceUtils;->getPhoneInformation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/rong/push/core/PushConnectivityManager$1;

    invoke-direct {v2, p0, p1}, Lio/rong/push/core/PushConnectivityManager$1;-><init>(Lio/rong/push/core/PushConnectivityManager;Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lio/rong/push/core/PushClient;-><init>(Ljava/lang/String;Lio/rong/push/core/PushClient$ClientListener;)V

    iput-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->pushClient:Lio/rong/push/core/PushClient;

    .line 148
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->disconnectedState:Lio/rong/push/core/PushConnectivityManager$DisconnectedState;

    invoke-virtual {p0, v0}, Lio/rong/push/core/PushConnectivityManager;->addState(Lio/rong/push/common/stateMachine/State;)V

    .line 149
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->connectingState:Lio/rong/push/core/PushConnectivityManager$ConnectingState;

    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager;->disconnectedState:Lio/rong/push/core/PushConnectivityManager$DisconnectedState;

    invoke-virtual {p0, v0, v1}, Lio/rong/push/core/PushConnectivityManager;->addState(Lio/rong/push/common/stateMachine/State;Lio/rong/push/common/stateMachine/State;)V

    .line 150
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->connectedState:Lio/rong/push/core/PushConnectivityManager$ConnectedState;

    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager;->disconnectedState:Lio/rong/push/core/PushConnectivityManager$DisconnectedState;

    invoke-virtual {p0, v0, v1}, Lio/rong/push/core/PushConnectivityManager;->addState(Lio/rong/push/common/stateMachine/State;Lio/rong/push/common/stateMachine/State;)V

    .line 151
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->pingState:Lio/rong/push/core/PushConnectivityManager$PingState;

    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager;->disconnectedState:Lio/rong/push/core/PushConnectivityManager$DisconnectedState;

    invoke-virtual {p0, v0, v1}, Lio/rong/push/core/PushConnectivityManager;->addState(Lio/rong/push/common/stateMachine/State;Lio/rong/push/common/stateMachine/State;)V

    .line 152
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager;->disconnectedState:Lio/rong/push/core/PushConnectivityManager$DisconnectedState;

    invoke-virtual {p0, v0}, Lio/rong/push/core/PushConnectivityManager;->setInitialState(Lio/rong/push/common/stateMachine/State;)V

    .line 154
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->start()V

    .line 155
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lio/rong/push/core/PushConnectivityManager;->initialized:Z

    return v0
.end method

.method public onPingTimeout()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const-string v0, "PushConnectivityManager"

    const-string v1, "onPingTimeout: does not init."

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public ping()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    const-string v0, "PushConnectivityManager"

    const-string v1, "ping: does not init."

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public sendRegistrationIDToServer(Ljava/lang/String;)V
    .locals 3
    .parameter "regInfo"

    .prologue
    .line 187
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    const-string v1, "PushConnectivityManager"

    const-string v2, "sendRegistrationIDToServer: does not init."

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 191
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 192
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 193
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 194
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setNetworkType(Lio/rong/push/core/PushConnectivityManager$NetworkType;)V
    .locals 0
    .parameter "networkType"

    .prologue
    .line 207
    iput-object p1, p0, Lio/rong/push/core/PushConnectivityManager;->networkType:Lio/rong/push/core/PushConnectivityManager$NetworkType;

    .line 208
    return-void
.end method

.method public setNextHeartbeat()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const-wide/32 v8, 0x3a980

    const/4 v6, 0x2

    .line 609
    const-string v3, "PushConnectivityManager"

    const-string v4, "startHeartbeat"

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 612
    const-string v3, "PushConnectivityManager"

    const-string v4, "setNextHeartbeat. does not init."

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :goto_0
    return-void

    .line 615
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    const-class v4, Lio/rong/push/PushReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 616
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "io.rong.push.intent.action.HEART_BEAT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lio/rong/push/core/PushConnectivityManager;->ALARM_REQUEST_CODE:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 618
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 619
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 621
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 622
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v8

    invoke-virtual {v0, v6, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 624
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v8

    invoke-virtual {v0, v6, v4, v5, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setServerDomain(Ljava/lang/String;)V
    .locals 3
    .parameter "domain"

    .prologue
    .line 158
    const-string v0, "PushConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setServerDomain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lio/rong/push/core/PushConnectivityManager;->serverDomain:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public startPingTimer()V
    .locals 8

    .prologue
    .line 569
    const-string v3, "PushConnectivityManager"

    const-string v4, "startPingTimer, 10s"

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    const-string v3, "PushConnectivityManager"

    const-string v4, "startPingTimer. does not init."

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :goto_0
    return-void

    .line 576
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    const-class v4, Lio/rong/push/PushReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "io.rong.push.intent.action.HEART_BEAT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string v3, "PING"

    const-string v4, "PING"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lio/rong/push/core/PushConnectivityManager;->ALARM_PING_REQUEST_CODE:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 580
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 581
    .local v0, alarmMng:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 582
    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public stopPingTimer()V
    .locals 6

    .prologue
    .line 589
    const-string v3, "PushConnectivityManager"

    const-string v4, "stopPingTimer"

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lio/rong/push/core/PushConnectivityManager;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 592
    const-string v3, "PushConnectivityManager"

    const-string v4, "stopPingTimer. does not init."

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :goto_0
    return-void

    .line 596
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    const-class v4, Lio/rong/push/PushReceiver;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "io.rong.push.intent.action.HEART_BEAT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string v3, "PING"

    const-string v4, "PING"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lio/rong/push/core/PushConnectivityManager;->ALARM_PING_REQUEST_CODE:I

    const/4 v5, 0x1

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 600
    .local v2, mPendingIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 601
    .local v1, mAlarmMng:Landroid/app/AlarmManager;
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method
