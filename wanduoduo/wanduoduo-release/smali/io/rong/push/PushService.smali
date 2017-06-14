.class public Lio/rong/push/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PushService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    const-string v0, "PushService"

    const-string v1, "OnCreate"

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "PushService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 147
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 20
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 26
    const-string v17, "RongPush"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lio/rong/push/PushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 27
    .local v15, sp:Landroid/content/SharedPreferences;
    const-string v17, "appKey"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, appKey:Ljava/lang/String;
    const-string v17, "deviceId"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 29
    .local v6, deviceId:Ljava/lang/String;
    const-string v17, "enabledPushTypes"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 30
    .local v14, pushTypes:Ljava/lang/String;
    const-string v17, "pushDomain"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 31
    .local v12, pushDomain:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 32
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lio/rong/push/core/PushConnectivityManager;->setServerDomain(Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->isInitialized()Z

    move-result v17

    if-nez v17, :cond_1

    .line 36
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6, v4, v14}, Lio/rong/push/core/PushConnectivityManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->connect()V

    .line 40
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_3

    .line 41
    :cond_2
    const/16 v17, 0x1

    .line 135
    :goto_0
    return v17

    .line 43
    :cond_3
    const-string v17, "PushService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onStartCommand, action = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "io.rong.push.intent.action.INIT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->isInitialized()Z

    move-result v17

    if-nez v17, :cond_7

    .line 45
    const-string v17, "deviceId"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 46
    const-string v17, "enabledPushTypes"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 47
    const-string v17, "appKey"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    const-string v17, "pushDomain"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 49
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 50
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lio/rong/push/core/PushConnectivityManager;->setServerDomain(Ljava/lang/String;)V

    .line 53
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 54
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "deviceId"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "appKey"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 56
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "enabledPushTypes"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v6, v4, v14}, Lio/rong/push/core/PushConnectivityManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->connect()V

    .line 135
    :cond_5
    :goto_1
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 61
    :cond_6
    const-string v17, "PushService"

    const-string v18, "appKey or deviceId is null."

    invoke-static/range {v17 .. v18}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "io.rong.push.intent.action.REGISTRATION_INFO"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 64
    const-string v17, "regInfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, info:Ljava/lang/String;
    const-string v17, "\\|"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, infos:[Ljava/lang/String;
    const-string v17, "RongPush"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lio/rong/push/PushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "pushTypeUsed"

    const-string v19, ""

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 67
    .local v13, pushType:Ljava/lang/String;
    const-string v17, "PushService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "received info:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",pushType cached:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/16 v17, 0x0

    aget-object v17, v9, v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 69
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lio/rong/push/core/PushConnectivityManager;->sendRegistrationIDToServer(Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_8
    const-string v17, "PushService"

    const-string v18, "Push type received is different from the one cached. So ignore this event."

    invoke-static/range {v17 .. v18}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 73
    .end local v8           #info:Ljava/lang/String;
    .end local v9           #infos:[Ljava/lang/String;
    .end local v13           #pushType:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "io.rong.push.intent.action.HEART_BEAT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 74
    const-string v17, "PING"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, extra:Ljava/lang/String;
    if-nez v7, :cond_a

    .line 76
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->ping()V

    goto/16 :goto_1

    .line 77
    :cond_a
    const-string v17, "PING"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 78
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->onPingTimeout()V

    goto/16 :goto_1

    .line 80
    .end local v7           #extra:Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    const-string v18, "io.rong.push.intent.action.STOP_PUSH"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 81
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->disconnect()V

    goto/16 :goto_1

    .line 82
    :cond_c
    const-string v17, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 83
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->getNetworkType()Lio/rong/push/core/PushConnectivityManager$NetworkType;

    move-result-object v10

    .line 87
    .local v10, last:Lio/rong/push/core/PushConnectivityManager$NetworkType;
    const-string v17, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lio/rong/push/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 90
    .local v3, ConnManager:Landroid/net/ConnectivityManager;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v17

    if-nez v17, :cond_d

    .line 91
    const/16 v16, 0x0

    .line 95
    .local v16, wifi_state:Landroid/net/NetworkInfo$State;
    :goto_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v17

    if-nez v17, :cond_e

    .line 96
    const/4 v11, 0x0

    .line 100
    .local v11, mobile_state:Landroid/net/NetworkInfo$State;
    :goto_3
    if-eqz v16, :cond_f

    sget-object v17, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 101
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    sget-object v18, Lio/rong/push/core/PushConnectivityManager$NetworkType;->WIFI:Lio/rong/push/core/PushConnectivityManager$NetworkType;

    invoke-virtual/range {v17 .. v18}, Lio/rong/push/core/PushConnectivityManager;->setNetworkType(Lio/rong/push/core/PushConnectivityManager$NetworkType;)V

    .line 108
    :goto_4
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->getNetworkType()Lio/rong/push/core/PushConnectivityManager$NetworkType;

    move-result-object v5

    .line 109
    .local v5, current:Lio/rong/push/core/PushConnectivityManager$NetworkType;
    const-string v17, "PushService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "wifi = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mobile = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", last = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", current = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v17, Lio/rong/push/core/PushConnectivityManager$NetworkType;->ERROR:Lio/rong/push/core/PushConnectivityManager$NetworkType;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lio/rong/push/core/PushConnectivityManager$NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 119
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->disconnect()V

    goto/16 :goto_1

    .line 93
    .end local v5           #current:Lio/rong/push/core/PushConnectivityManager$NetworkType;
    .end local v11           #mobile_state:Landroid/net/NetworkInfo$State;
    .end local v16           #wifi_state:Landroid/net/NetworkInfo$State;
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v16

    .restart local v16       #wifi_state:Landroid/net/NetworkInfo$State;
    goto/16 :goto_2

    .line 98
    :cond_e
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    .restart local v11       #mobile_state:Landroid/net/NetworkInfo$State;
    goto/16 :goto_3

    .line 102
    :cond_f
    if-eqz v11, :cond_10

    sget-object v17, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v17

    if-ne v11, v0, :cond_10

    .line 103
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    sget-object v18, Lio/rong/push/core/PushConnectivityManager$NetworkType;->MOBILE:Lio/rong/push/core/PushConnectivityManager$NetworkType;

    invoke-virtual/range {v17 .. v18}, Lio/rong/push/core/PushConnectivityManager;->setNetworkType(Lio/rong/push/core/PushConnectivityManager$NetworkType;)V

    goto/16 :goto_4

    .line 105
    :cond_10
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    sget-object v18, Lio/rong/push/core/PushConnectivityManager$NetworkType;->ERROR:Lio/rong/push/core/PushConnectivityManager$NetworkType;

    invoke-virtual/range {v17 .. v18}, Lio/rong/push/core/PushConnectivityManager;->setNetworkType(Lio/rong/push/core/PushConnectivityManager$NetworkType;)V

    goto/16 :goto_4

    .line 121
    .restart local v5       #current:Lio/rong/push/core/PushConnectivityManager$NetworkType;
    :cond_11
    sget-object v17, Lio/rong/push/core/PushConnectivityManager$NetworkType;->ERROR:Lio/rong/push/core/PushConnectivityManager$NetworkType;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lio/rong/push/core/PushConnectivityManager$NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 122
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->connect()V

    goto/16 :goto_1

    .line 124
    :cond_12
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->disconnect()V

    .line 125
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->connect()V

    goto/16 :goto_1

    .line 128
    .end local v3           #ConnManager:Landroid/net/ConnectivityManager;
    .end local v5           #current:Lio/rong/push/core/PushConnectivityManager$NetworkType;
    .end local v10           #last:Lio/rong/push/core/PushConnectivityManager$NetworkType;
    .end local v11           #mobile_state:Landroid/net/NetworkInfo$State;
    .end local v16           #wifi_state:Landroid/net/NetworkInfo$State;
    :cond_13
    const-string v17, "android.intent.action.USER_PRESENT"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string v17, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string v17, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    const-string v17, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 132
    :cond_14
    invoke-static {}, Lio/rong/push/core/PushConnectivityManager;->getInstance()Lio/rong/push/core/PushConnectivityManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/push/core/PushConnectivityManager;->connect()V

    goto/16 :goto_1
.end method
