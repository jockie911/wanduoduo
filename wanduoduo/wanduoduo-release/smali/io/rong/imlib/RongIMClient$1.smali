.class final Lio/rong/imlib/RongIMClient$1;
.super Lio/rong/imlib/IStringCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$ConnectCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-direct {p0}, Lio/rong/imlib/IStringCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 4
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 518
    const-string v1, "RongIMClient"

    const-string v2, "connect callback onComplete"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$500(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$StatusListener;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 522
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #setter for: Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;
    invoke-static {v1, p1}, Lio/rong/imlib/RongIMClient;->access$1802(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)Ljava/lang/String;

    .line 523
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #setter for: Lio/rong/imlib/RongIMClient;->mReconnectCount:I
    invoke-static {v1, v3}, Lio/rong/imlib/RongIMClient;->access$102(Lio/rong/imlib/RongIMClient;I)I

    .line 524
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    const/4 v2, 0x1

    #setter for: Lio/rong/imlib/RongIMClient;->mHasConnect:Z
    invoke-static {v1, v2}, Lio/rong/imlib/RongIMClient;->access$902(Lio/rong/imlib/RongIMClient;Z)Z

    .line 526
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Statistics"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 527
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 529
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$300(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 530
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;
    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->access$300(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 531
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    const/4 v2, 0x0

    #setter for: Lio/rong/imlib/RongIMClient;->mReconnectRunnable:Lio/rong/imlib/RongIMClient$ReconnectRunnable;
    invoke-static {v1, v2}, Lio/rong/imlib/RongIMClient;->access$302(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ReconnectRunnable;)Lio/rong/imlib/RongIMClient$ReconnectRunnable;

    .line 534
    :cond_0
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$600(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 535
    sget-object v1, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$1900(Lio/rong/imlib/RongIMClient;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;
    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->access$600(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    if-eqz v1, :cond_2

    .line 539
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-virtual {v1, p1}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onCallback(Ljava/lang/Object;)V

    .line 579
    :cond_2
    return-void
.end method

.method public onFailure(I)V
    .locals 4
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 583
    const-string v0, "RongIMClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect callback : onFailure = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    sget-object v0, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;
    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->access$500(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$StatusListener;

    move-result-object v1

    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$2000()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v1, v0}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 587
    sget-object v0, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;
    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->access$600(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    sget-object v0, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #setter for: Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;
    invoke-static {v0, v3}, Lio/rong/imlib/RongIMClient;->access$602(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$DisconnectRunnable;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    .line 591
    :cond_0
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->RC_CONN_USER_OR_PASSWD_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 592
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onTokenIncorrect()V

    .line 595
    :cond_1
    sget-object v0, Lio/rong/imlib/RongIMClient$SingletonHolder;->sInstance:Lio/rong/imlib/RongIMClient;

    #setter for: Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;
    invoke-static {v0, v3}, Lio/rong/imlib/RongIMClient;->access$702(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)Ljava/lang/String;

    .line 601
    :cond_2
    :goto_0
    return-void

    .line 597
    :cond_3
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
