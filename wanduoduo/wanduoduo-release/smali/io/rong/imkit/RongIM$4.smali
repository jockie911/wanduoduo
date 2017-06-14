.class final Lio/rong/imkit/RongIM$4;
.super Ljava/lang/Object;
.source "RongIM.java"

# interfaces
.implements Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIM;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Lio/rong/imlib/model/Message;I)Z
    .locals 5
    .parameter "message"
    .parameter "left"

    .prologue
    const/4 v2, 0x1

    .line 336
    const/4 v0, 0x0

    .line 338
    .local v0, isProcess:Z
    sget-object v3, Lio/rong/imkit/RongIM;->sMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    if-eqz v3, :cond_0

    .line 339
    sget-object v3, Lio/rong/imkit/RongIM;->sMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    invoke-interface {v3, p1, p2}, Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;->onReceived(Lio/rong/imlib/model/Message;I)Z

    move-result v0

    .line 341
    :cond_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lio/rong/imlib/MessageTag;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/MessageTag;

    .line 343
    .local v1, msgTag:Lio/rong/imlib/MessageTag;
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    invoke-interface {v1}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 344
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;

    invoke-direct {v4, p1, p2}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;-><init>(Lio/rong/imlib/model/Message;I)V

    invoke-virtual {v3, v4}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 348
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/imkit/utils/CommonUtils;->refreshUserInfoIfNeed(Lio/rong/imkit/RongContext;Lio/rong/imlib/model/UserInfo;)V

    .line 352
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 363
    :cond_3
    :goto_0
    return v2

    .line 356
    :cond_4
    invoke-static {}, Lio/rong/imkit/notification/MessageNotificationManager;->getInstance()Lio/rong/imkit/notification/MessageNotificationManager;

    move-result-object v2

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lio/rong/imkit/notification/MessageNotificationManager;->notifyIfNeed(Landroid/content/Context;Lio/rong/imlib/model/Message;I)V

    .line 363
    :cond_5
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 359
    :cond_6
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v2

    if-lez v2, :cond_5

    .line 360
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;

    invoke-direct {v3, p1, p2}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;-><init>(Lio/rong/imlib/model/Message;I)V

    invoke-virtual {v2, v3}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1
.end method
