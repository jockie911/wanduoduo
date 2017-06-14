.class final Lio/rong/imkit/RongIM$1;
.super Lio/rong/imlib/RongIMClient$ConnectCallback;
.source "RongIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIM;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imkit/RongIM;
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
    .line 253
    iput-object p1, p0, Lio/rong/imkit/RongIM$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ConnectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 270
    iget-object v1, p0, Lio/rong/imkit/RongIM$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lio/rong/imkit/RongIM$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-virtual {v1, p1}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 273
    :cond_0
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, userId:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->isInitialized(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v1

    invoke-static {}, Lio/rong/imkit/RongIM;->access$100()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lio/rong/imkit/RongIM$SingletonHolder;->sRongIM:Lio/rong/imkit/RongIM;

    #getter for: Lio/rong/imkit/RongIM;->mAppKey:Ljava/lang/String;
    invoke-static {v3}, Lio/rong/imkit/RongIM;->access$200(Lio/rong/imkit/RongIM;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/RongUserCacheListener;

    invoke-direct {v4}, Lio/rong/imkit/RongUserCacheListener;-><init>()V

    invoke-virtual {v1, v2, v3, v0, v4}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/rong/imkit/userInfoCache/IRongCacheListener;)V

    .line 276
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lio/rong/imkit/model/Event$ConnectEvent;->obtain(Z)Lio/rong/imkit/model/Event$ConnectEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 253
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongIM$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter "userId"

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.rong.intent.action.SDK_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lio/rong/imkit/RongIM;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-static {}, Lio/rong/imkit/RongIM;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    iget-object v1, p0, Lio/rong/imkit/RongIM$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lio/rong/imkit/RongIM$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-virtual {v1, p1}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onSuccess(Ljava/lang/Object;)V

    .line 263
    :cond_0
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->isInitialized(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v1

    invoke-static {}, Lio/rong/imkit/RongIM;->access$100()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lio/rong/imkit/RongIM$SingletonHolder;->sRongIM:Lio/rong/imkit/RongIM;

    #getter for: Lio/rong/imkit/RongIM;->mAppKey:Ljava/lang/String;
    invoke-static {v3}, Lio/rong/imkit/RongIM;->access$200(Lio/rong/imkit/RongIM;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/RongUserCacheListener;

    invoke-direct {v4}, Lio/rong/imkit/RongUserCacheListener;-><init>()V

    invoke-virtual {v1, v2, v3, p1, v4}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/rong/imkit/userInfoCache/IRongCacheListener;)V

    .line 265
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lio/rong/imkit/model/Event$ConnectEvent;->obtain(Z)Lio/rong/imkit/model/Event$ConnectEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 266
    return-void
.end method

.method public onTokenIncorrect()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lio/rong/imkit/RongIM$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lio/rong/imkit/RongIM$1;->val$callback:Lio/rong/imlib/RongIMClient$ConnectCallback;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$ConnectCallback;->onTokenIncorrect()V

    .line 283
    :cond_0
    return-void
.end method
