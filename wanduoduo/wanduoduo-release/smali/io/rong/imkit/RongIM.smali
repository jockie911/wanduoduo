.class public Lio/rong/imkit/RongIM;
.super Ljava/lang/Object;
.source "RongIM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/RongIM$RequestPermissionsListener;,
        Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;,
        Lio/rong/imkit/RongIM$SentMessageErrorCode;,
        Lio/rong/imkit/RongIM$OnSendMessageListener;,
        Lio/rong/imkit/RongIM$OnSelectMemberListener;,
        Lio/rong/imkit/RongIM$GroupInfoProvider;,
        Lio/rong/imkit/RongIM$GroupUserInfoProvider;,
        Lio/rong/imkit/RongIM$UserInfoProvider;,
        Lio/rong/imkit/RongIM$ConversationListBehaviorListener;,
        Lio/rong/imkit/RongIM$ConversationBehaviorListener;,
        Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;,
        Lio/rong/imkit/RongIM$LocationProvider;,
        Lio/rong/imkit/RongIM$IGroupMemberCallback;,
        Lio/rong/imkit/RongIM$IGroupMembersProvider;,
        Lio/rong/imkit/RongIM$SingletonHolder;
    }
.end annotation


# static fields
.field private static final ON_CANCEL_CALLBACK:I = 0x66

.field private static final ON_ERROR_CALLBACK:I = 0x67

.field private static final ON_PROGRESS_CALLBACK:I = 0x65

.field private static final ON_SUCCESS_CALLBACK:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static mCallTimer:Ljava/util/Timer;

.field private static mConnectionStatusListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

.field private static mContext:Landroid/content/Context;

.field static sConnectionStatusListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

.field static sMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

.field private static uiReady:Z


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mClientWrapper:Lio/rong/imkit/RongIMClientWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lio/rong/imkit/RongIM;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lio/rong/imkit/RongIM;->uiReady:Z

    .line 308
    new-instance v0, Lio/rong/imkit/RongIM$3;

    invoke-direct {v0}, Lio/rong/imkit/RongIM$3;-><init>()V

    sput-object v0, Lio/rong/imkit/RongIM;->mConnectionStatusListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lio/rong/imkit/RongIMClientWrapper;

    invoke-direct {v0}, Lio/rong/imkit/RongIMClientWrapper;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongIM;->mClientWrapper:Lio/rong/imkit/RongIMClientWrapper;

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imkit/RongIM$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lio/rong/imkit/RongIM;-><init>()V

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imkit/RongIM;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/imkit/RongIM;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lio/rong/imkit/RongIM;->uiReady:Z

    return v0
.end method

.method static synthetic access$400()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lio/rong/imkit/RongIM;->mCallTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$402(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    sput-object p0, Lio/rong/imkit/RongIM;->mCallTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lio/rong/imkit/RongIM;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lio/rong/imkit/RongIM;->filterSentMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    return-void
.end method

.method public static addInputExtensionProvider(Lio/rong/imlib/model/Conversation$ConversationType;[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V
    .locals 1
    .parameter "conversationType"
    .parameter "providers"

    .prologue
    .line 1443
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1444
    if-nez p1, :cond_0

    .line 1445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1447
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/rong/imkit/RongContext;->addInputExtentionProvider(Lio/rong/imlib/model/Conversation$ConversationType;[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V

    .line 1450
    :cond_1
    return-void
.end method

.method public static connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imkit/RongIM;
    .locals 6
    .parameter "token"
    .parameter "callback"

    .prologue
    .line 245
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 246
    sget-object v0, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    const-string v2, "connect should be called in main process."

    invoke-static {v0, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v0, Lio/rong/imkit/RongIM$SingletonHolder;->sRongIM:Lio/rong/imkit/RongIM;

    .line 305
    :goto_0
    return-object v0

    .line 250
    :cond_0
    invoke-static {p0}, Lio/rong/imkit/RongIM;->saveToken(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lio/rong/imkit/RongIM;->initData()V

    .line 253
    new-instance v0, Lio/rong/imkit/RongIM$1;

    invoke-direct {v0, p1}, Lio/rong/imkit/RongIM$1;-><init>(Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    invoke-static {p0, v0}, Lio/rong/imlib/RongIMClient;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imlib/RongIMClient;

    .line 286
    sget-boolean v0, Lio/rong/imkit/RongIM;->uiReady:Z

    if-nez v0, :cond_1

    sget-object v0, Lio/rong/imkit/RongIM;->mCallTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lio/rong/imkit/RongIM;->mCallTimer:Ljava/util/Timer;

    .line 288
    new-instance v1, Lio/rong/imkit/RongIM$2;

    invoke-direct {v1}, Lio/rong/imkit/RongIM$2;-><init>()V

    .line 302
    .local v1, task:Ljava/util/TimerTask;
    sget-object v0, Lio/rong/imkit/RongIM;->mCallTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 305
    .end local v1           #task:Ljava/util/TimerTask;
    :cond_1
    sget-object v0, Lio/rong/imkit/RongIM$SingletonHolder;->sRongIM:Lio/rong/imkit/RongIM;

    goto :goto_0
.end method

.method private filterSendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "messageContent"

    .prologue
    .line 3735
    new-instance v0, Lio/rong/imlib/model/Message;

    invoke-direct {v0}, Lio/rong/imlib/model/Message;-><init>()V

    .line 3736
    .local v0, message:Lio/rong/imlib/model/Message;
    invoke-virtual {v0, p1}, Lio/rong/imlib/model/Message;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 3737
    invoke-virtual {v0, p2}, Lio/rong/imlib/model/Message;->setTargetId(Ljava/lang/String;)V

    .line 3738
    invoke-virtual {v0, p3}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 3740
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3741
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/rong/imkit/RongIM$OnSendMessageListener;->onSend(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 3744
    :cond_0
    return-object v0
.end method

.method private filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;
    .locals 1
    .parameter "message"

    .prologue
    .line 3755
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3756
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/rong/imkit/RongIM$OnSendMessageListener;->onSend(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object p1

    .line 3759
    :cond_0
    return-object p1
.end method

.method private filterSentMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 11
    .parameter "message"
    .parameter "errorCode"

    .prologue
    const/4 v10, 0x1

    .line 3764
    const/4 v8, 0x0

    .line 3765
    .local v8, sentMessageErrorCode:Lio/rong/imkit/RongIM$SentMessageErrorCode;
    const/4 v7, 0x0

    .line 3767
    .local v7, isExecute:Z
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3769
    if-eqz p2, :cond_0

    .line 3770
    invoke-virtual {p2}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v0

    invoke-static {v0}, Lio/rong/imkit/RongIM$SentMessageErrorCode;->setValue(I)Lio/rong/imkit/RongIM$SentMessageErrorCode;

    move-result-object v8

    .line 3773
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getOnSendMessageListener()Lio/rong/imkit/RongIM$OnSendMessageListener;

    move-result-object v0

    invoke-interface {v0, p1, v8}, Lio/rong/imkit/RongIM$OnSendMessageListener;->onSent(Lio/rong/imlib/model/Message;Lio/rong/imkit/RongIM$SentMessageErrorCode;)Z

    move-result v7

    .line 3776
    :cond_1
    if-eqz p2, :cond_c

    if-nez v7, :cond_c

    .line 3778
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->NOT_IN_DISCUSSION:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->NOT_IN_GROUP:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->NOT_IN_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->REJECTED_BY_BLACKLIST:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->FORBIDDEN_IN_GROUP:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->FORBIDDEN_IN_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->KICKED_FROM_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3782
    :cond_2
    const/4 v4, 0x0

    .line 3784
    .local v4, informationMessage:Lio/rong/message/InformationNotificationMessage;
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->NOT_IN_DISCUSSION:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3785
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    sget v1, Lio/rong/imkit/R$string;->rc_info_not_in_discussion:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    .line 3800
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rong"

    new-instance v5, Lio/rong/imkit/RongIM$54;

    invoke-direct {v5, p0}, Lio/rong/imkit/RongIM$54;-><init>(Lio/rong/imkit/RongIM;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lio/rong/imkit/RongIM;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3813
    .end local v4           #informationMessage:Lio/rong/message/InformationNotificationMessage;
    :cond_4
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    .line 3814
    .local v6, content:Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lio/rong/imlib/MessageTag;

    .line 3816
    .local v9, tag:Lio/rong/imlib/MessageTag;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v10, :cond_5

    .line 3817
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;

    invoke-direct {v1, p1, p2}, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;-><init>(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    invoke-virtual {v0, v1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3831
    .end local v6           #content:Lio/rong/imlib/model/MessageContent;
    .end local v9           #tag:Lio/rong/imlib/MessageTag;
    :cond_5
    :goto_1
    return-void

    .line 3786
    .restart local v4       #informationMessage:Lio/rong/message/InformationNotificationMessage;
    :cond_6
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->NOT_IN_GROUP:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3787
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    sget v1, Lio/rong/imkit/R$string;->rc_info_not_in_group:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    goto :goto_0

    .line 3788
    :cond_7
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->NOT_IN_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3789
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    sget v1, Lio/rong/imkit/R$string;->rc_info_not_in_chatroom:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    goto :goto_0

    .line 3790
    :cond_8
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->REJECTED_BY_BLACKLIST:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3791
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    sget v1, Lio/rong/imkit/R$string;->rc_rejected_by_blacklist_prompt:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    goto :goto_0

    .line 3792
    :cond_9
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->FORBIDDEN_IN_GROUP:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3793
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    sget v1, Lio/rong/imkit/R$string;->rc_info_forbidden_to_talk:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    goto/16 :goto_0

    .line 3794
    :cond_a
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->FORBIDDEN_IN_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3795
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    sget v1, Lio/rong/imkit/R$string;->rc_forbidden_in_chatroom:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    goto/16 :goto_0

    .line 3796
    :cond_b
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->KICKED_FROM_CHATROOM:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p2, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3797
    sget-object v0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    sget v1, Lio/rong/imkit/R$string;->rc_kicked_from_chatroom:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/rong/message/InformationNotificationMessage;->obtain(Ljava/lang/String;)Lio/rong/message/InformationNotificationMessage;

    move-result-object v4

    goto/16 :goto_0

    .line 3821
    .end local v4           #informationMessage:Lio/rong/message/InformationNotificationMessage;
    :cond_c
    if-eqz p1, :cond_5

    .line 3822
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    .line 3824
    .restart local v6       #content:Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lio/rong/imlib/MessageTag;

    .line 3826
    .restart local v9       #tag:Lio/rong/imlib/MessageTag;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v10, :cond_5

    .line 3827
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public static getInstance()Lio/rong/imkit/RongIM;
    .locals 1

    .prologue
    .line 534
    sget-object v0, Lio/rong/imkit/RongIM$SingletonHolder;->sRongIM:Lio/rong/imkit/RongIM;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 124
    invoke-static {p0}, Lio/rong/imkit/utils/SystemUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, current:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, mainProcessName:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    sget-object v5, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Init. Current process : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 131
    :cond_0
    sget-object v5, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sput-object p0, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    .line 134
    invoke-static {p0}, Lio/rong/imkit/RongContext;->init(Landroid/content/Context;)V

    .line 135
    sget-object v5, Lio/rong/imkit/RongIM$SingletonHolder;->sRongIM:Lio/rong/imkit/RongIM;

    iget-object v5, v5, Lio/rong/imkit/RongIM;->mAppKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 138
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 139
    sget-object v5, Lio/rong/imkit/RongIM$SingletonHolder;->sRongIM:Lio/rong/imkit/RongIM;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "RONG_CLOUD_APP_KEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lio/rong/imkit/RongIM;->mAppKey:Ljava/lang/String;

    .line 141
    :cond_1
    sget-object v5, Lio/rong/imkit/RongIM$SingletonHolder;->sRongIM:Lio/rong/imkit/RongIM;

    iget-object v5, v5, Lio/rong/imkit/RongIM;->mAppKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "can\'t find RONG_CLOUD_APP_KEY in AndroidManifest.xml."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 146
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 147
    new-instance v5, Ljava/lang/ExceptionInInitializerError;

    const-string v6, "can\'t find packageName!"

    invoke-direct {v5, v6}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    sget-object v5, Lio/rong/imkit/RongIM$SingletonHolder;->sRongIM:Lio/rong/imkit/RongIM;

    iget-object v5, v5, Lio/rong/imkit/RongIM;->mAppKey:Ljava/lang/String;

    invoke-static {p0, v5}, Lio/rong/imlib/RongIMClient;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    new-instance v5, Lio/rong/imkit/widget/provider/TextMessageItemProvider;

    invoke-direct {v5}, Lio/rong/imkit/widget/provider/TextMessageItemProvider;-><init>()V

    invoke-static {v5}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 153
    new-instance v5, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;

    invoke-direct {v5}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;-><init>()V

    invoke-static {v5}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 154
    new-instance v5, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;

    invoke-direct {v5}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;-><init>()V

    invoke-static {v5}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 155
    new-instance v5, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;

    invoke-direct {v5, p0}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;-><init>(Landroid/content/Context;)V

    invoke-static {v5}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 156
    new-instance v5, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;

    invoke-direct {v5}, Lio/rong/imkit/widget/provider/DiscussionNotificationMessageItemProvider;-><init>()V

    invoke-static {v5}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 157
    new-instance v5, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider;

    invoke-direct {v5}, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider;-><init>()V

    invoke-static {v5}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 158
    new-instance v5, Lio/rong/imkit/widget/provider/RichContentMessageItemProvider;

    invoke-direct {v5}, Lio/rong/imkit/widget/provider/RichContentMessageItemProvider;-><init>()V

    invoke-static {v5}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 159
    new-instance v5, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;

    invoke-direct {v5}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;-><init>()V

    invoke-static {v5}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 160
    new-instance v5, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;

    invoke-direct {v5}, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;-><init>()V

    invoke-static {v5}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 161
    new-instance v5, Lio/rong/imkit/widget/provider/HandshakeMessageItemProvider;

    invoke-direct {v5}, Lio/rong/imkit/widget/provider/HandshakeMessageItemProvider;-><init>()V

    invoke-static {v5}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 162
    new-instance v5, Lio/rong/imkit/widget/provider/RecallMessageItemProvider;

    invoke-direct {v5}, Lio/rong/imkit/widget/provider/RecallMessageItemProvider;-><init>()V

    invoke-static {v5}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 163
    new-instance v5, Lio/rong/imkit/widget/provider/UnknownMessageItemProvider;

    invoke-direct {v5}, Lio/rong/imkit/widget/provider/UnknownMessageItemProvider;-><init>()V

    invoke-static {v5}, Lio/rong/imkit/RongIM;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 165
    new-instance v3, Landroid/content/Intent;

    const-string v5, "io.rong.intent.action.SDK_INIT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "appKey"

    .prologue
    .line 177
    invoke-static {p0}, Lio/rong/imkit/utils/SystemUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, current:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, mainProcessName:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    sget-object v2, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init with appKey. Current process : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_0
    sget-object v2, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init with appKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object v2, Lio/rong/imkit/RongIM$SingletonHolder;->sRongIM:Lio/rong/imkit/RongIM;

    iput-object p1, v2, Lio/rong/imkit/RongIM;->mAppKey:Ljava/lang/String;

    .line 186
    invoke-static {p0}, Lio/rong/imkit/RongContext;->init(Landroid/content/Context;)V

    .line 187
    invoke-static {p0}, Lio/rong/imkit/RongIM;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static initData()V
    .locals 4

    .prologue
    .line 333
    new-instance v2, Lio/rong/imkit/RongIM$4;

    invoke-direct {v2}, Lio/rong/imkit/RongIM$4;-><init>()V

    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->setOnReceiveMessageListener(Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;)V

    .line 368
    const/4 v1, 0x0

    .line 370
    .local v1, readRec:Z
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 376
    :goto_0
    if-eqz v1, :cond_0

    .line 377
    new-instance v2, Lio/rong/imkit/RongIM$5;

    invoke-direct {v2}, Lio/rong/imkit/RongIM$5;-><init>()V

    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->setReadReceiptListener(Lio/rong/imlib/RongIMClient$ReadReceiptListener;)V

    .line 421
    :cond_0
    new-instance v2, Lio/rong/imkit/RongIM$6;

    invoke-direct {v2}, Lio/rong/imkit/RongIM$6;-><init>()V

    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->setRecallMessageListener(Lio/rong/imlib/RongIMClient$RecallMessageListener;)V

    .line 428
    sget-object v2, Lio/rong/imkit/RongIM;->mConnectionStatusListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->setConnectionStatusListener(Lio/rong/imlib/RongIMClient$ConnectionStatusListener;)V

    .line 429
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v2, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    const-string v3, "rc_read_receipt not configure in rc_config.xml"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 213
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->registerMessageTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;)V

    .line 217
    :cond_0
    return-void
.end method

.method public static registerMessageType(Ljava/lang/Class;)V
    .locals 2
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

    .prologue
    .line 196
    .local p0, messageContentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    :try_start_0
    invoke-static {p0}, Lio/rong/imlib/RongIMClient;->registerMessageType(Ljava/lang/Class;)V
    :try_end_0
    .catch Lio/rong/imlib/AnnotationNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Lio/rong/imlib/AnnotationNotFoundException;
    invoke-virtual {v0}, Lio/rong/imlib/AnnotationNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static resetInputExtensionProvider(Lio/rong/imlib/model/Conversation$ConversationType;[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V
    .locals 1
    .parameter "conversationType"
    .parameter "providers"

    .prologue
    .line 1427
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1428
    if-nez p1, :cond_0

    .line 1429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1431
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/rong/imkit/RongContext;->resetInputExtensionProvider(Lio/rong/imlib/model/Conversation$ConversationType;[Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V

    .line 1434
    :cond_1
    return-void
.end method

.method private static saveToken(Ljava/lang/String;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 108
    sget-object v2, Lio/rong/imkit/RongIM;->mContext:Landroid/content/Context;

    const-string v3, "rc_token"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "token_value"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    return-void
.end method

.method public static setConnectionStatusListener(Lio/rong/imlib/RongIMClient$ConnectionStatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 450
    invoke-static {p0}, Lio/rong/imlib/RongIMClient;->setConnectionStatusListener(Lio/rong/imlib/RongIMClient$ConnectionStatusListener;)V

    .line 451
    sput-object p0, Lio/rong/imkit/RongIM;->sConnectionStatusListener:Lio/rong/imlib/RongIMClient$ConnectionStatusListener;

    .line 452
    return-void
.end method

.method public static setConversationBehaviorListener(Lio/rong/imkit/RongIM$ConversationBehaviorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 612
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->setConversationBehaviorListener(Lio/rong/imkit/RongIM$ConversationBehaviorListener;)V

    .line 616
    :cond_0
    return-void
.end method

.method public static setConversationListBehaviorListener(Lio/rong/imkit/RongIM$ConversationListBehaviorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 625
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 626
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->setConversationListBehaviorListener(Lio/rong/imkit/RongIM$ConversationListBehaviorListener;)V

    .line 629
    :cond_0
    return-void
.end method

.method public static setGroupInfoProvider(Lio/rong/imkit/RongIM$GroupInfoProvider;Z)V
    .locals 1
    .parameter "groupInfoProvider"
    .parameter "isCacheGroupInfo"

    .prologue
    .line 953
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 954
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/rong/imkit/RongContext;->setGetGroupInfoProvider(Lio/rong/imkit/RongIM$GroupInfoProvider;Z)V

    .line 957
    :cond_0
    return-void
.end method

.method public static setGroupUserInfoProvider(Lio/rong/imkit/RongIM$GroupUserInfoProvider;Z)V
    .locals 1
    .parameter "userInfoProvider"
    .parameter "isCacheUserInfo"

    .prologue
    .line 933
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 934
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/rong/imkit/RongContext;->setGroupUserInfoProvider(Lio/rong/imkit/RongIM$GroupUserInfoProvider;Z)V

    .line 937
    :cond_0
    return-void
.end method

.method public static setLocationProvider(Lio/rong/imkit/RongIM$LocationProvider;)V
    .locals 1
    .parameter "locationProvider"

    .prologue
    .line 517
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->setLocationProvider(Lio/rong/imkit/RongIM$LocationProvider;)V

    .line 519
    :cond_0
    return-void
.end method

.method private setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;
    .locals 3
    .parameter "content"

    .prologue
    .line 3708
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getUserInfoAttachedState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3710
    invoke-virtual {p1}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3711
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    .line 3713
    .local v1, userId:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getCurrentUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    .line 3715
    .local v0, info:Lio/rong/imlib/model/UserInfo;
    if-nez v0, :cond_0

    .line 3716
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    .line 3718
    :cond_0
    if-eqz v0, :cond_1

    .line 3719
    invoke-virtual {p1, v0}, Lio/rong/imlib/model/MessageContent;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 3723
    .end local v0           #info:Lio/rong/imlib/model/UserInfo;
    .end local v1           #userId:Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method public static setOnReceiveMessageListener(Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 440
    sget-object v0, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    const-string v1, "RongIM setOnReceiveMessageListener"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sput-object p0, Lio/rong/imkit/RongIM;->sMessageListener:Lio/rong/imlib/RongIMClient$OnReceiveMessageListener;

    .line 442
    return-void
.end method

.method public static setPrimaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1396
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1397
    if-nez p0, :cond_0

    .line 1398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1400
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->setPrimaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 1403
    :cond_1
    return-void
.end method

.method public static setPublicServiceBehaviorListener(Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 637
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 638
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->setPublicServiceBehaviorListener(Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;)V

    .line 641
    :cond_0
    return-void
.end method

.method public static setSecondaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1411
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1412
    if-nez p0, :cond_0

    .line 1413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1415
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/imkit/RongContext;->setSecondaryInputProvider(Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;)V

    .line 1418
    :cond_1
    return-void
.end method

.method public static setServerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "naviServer"
    .parameter "fileServer"

    .prologue
    .line 3841
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3842
    sget-object v0, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    const-string v1, "setServerInfo naviServer should not be null."

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "naviServer should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3845
    :cond_0
    invoke-static {p0, p1}, Lio/rong/imlib/RongIMClient;->setServerInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 3846
    return-void
.end method

.method public static setUserInfoProvider(Lio/rong/imkit/RongIM$UserInfoProvider;Z)V
    .locals 1
    .parameter "userInfoProvider"
    .parameter "isCacheUserInfo"

    .prologue
    .line 912
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 913
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/rong/imkit/RongContext;->setGetUserInfoProvider(Lio/rong/imkit/RongIM$UserInfoProvider;Z)V

    .line 916
    :cond_0
    return-void
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
    .line 2253
    .local p2, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIM$20;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2269
    return-void
.end method

.method public addToBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "userId"
    .parameter "callback"

    .prologue
    .line 3445
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$48;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIM$48;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->addToBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3462
    return-void
.end method

.method public cancelDownloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 1
    .parameter "message"
    .parameter "callback"

    .prologue
    .line 3955
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->cancelDownloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3956
    return-void
.end method

.method public varargs clearConversations(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 2
    .parameter "callback"
    .parameter "conversationTypes"

    .prologue
    .line 3408
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$47;

    invoke-direct {v1, p0, p2, p1}, Lio/rong/imkit/RongIM$47;-><init>(Lio/rong/imkit/RongIM;[Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/RongIMClient;->clearConversations(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 3422
    return-void
.end method

.method public varargs clearConversations([Lio/rong/imlib/model/Conversation$ConversationType;)Z
    .locals 1
    .parameter "conversationTypes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3433
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->clearConversations([Lio/rong/imlib/model/Conversation$ConversationType;)Z

    move-result v0

    return v0
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
    .line 1957
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIM$15;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1973
    return-void
.end method

.method public clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1941
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lio/rong/imlib/RongIMClient;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    .line 1943
    .local v0, bool:Z
    if-eqz v0, :cond_0

    .line 1944
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$MessagesClearEvent;

    invoke-direct {v2, p1, p2}, Lio/rong/imkit/model/Event$MessagesClearEvent;-><init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1946
    :cond_0
    return v0
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
    .line 2001
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$16;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imkit/RongIM$16;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2015
    return-void
.end method

.method public clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1985
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lio/rong/imlib/RongIMClient;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    .line 1986
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 1987
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$ConversationUnreadEvent;

    invoke-direct {v2, p1, p2}, Lio/rong/imkit/model/Event$ConversationUnreadEvent;-><init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1990
    :cond_0
    return v0
.end method

.method public clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 2180
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2181
    return-void
.end method

.method public clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 1
    .parameter "conversationType"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2146
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    return v0
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
    .line 2228
    .local p2, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$19;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIM$19;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V

    .line 2243
    return-void
.end method

.method public createDiscussionChat(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 734
    .local p2, targetUserIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 735
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 737
    :cond_1
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIM$7;-><init>(Lio/rong/imkit/RongIM;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p2, v1}, Lio/rong/imlib/RongIMClient;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V

    .line 755
    return-void
.end method

.method public createDiscussionChat(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V
    .locals 7
    .parameter "context"
    .parameter
    .parameter "title"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 768
    .local p2, targetUserIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 771
    :cond_1
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v6

    new-instance v0, Lio/rong/imkit/RongIM$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/rong/imkit/RongIM$8;-><init>(Lio/rong/imkit/RongIM;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V

    invoke-virtual {v6, p3, p2, v0}, Lio/rong/imlib/RongIMClient;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$CreateDiscussionCallback;)V

    .line 794
    return-void
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
    .line 1913
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIM$14;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->deleteMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1929
    return-void
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
    .line 1885
    .local p2, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$13;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIM$13;-><init>(Lio/rong/imkit/RongIM;[ILio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->deleteMessages([ILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1901
    return-void
.end method

.method public deleteMessages([I)Z
    .locals 3
    .parameter "messageIds"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1870
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imlib/RongIMClient;->deleteMessages([I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1872
    .local v0, bool:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1873
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$MessageDeleteEvent;

    invoke-direct {v2, p1}, Lio/rong/imkit/model/Event$MessageDeleteEvent;-><init>([I)V

    invoke-virtual {v1, v2}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1875
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 525
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->disconnect()V

    .line 526
    return-void
.end method

.method public disconnect(Z)V
    .locals 1
    .parameter "isReceivePush"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 471
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->disconnect(Z)V

    .line 472
    return-void
.end method

.method public downloadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$MediaType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V
    .locals 6
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "mediaType"
    .parameter "imageUrl"
    .parameter "callback"

    .prologue
    .line 3037
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->downloadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$MediaType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V

    .line 3038
    return-void
.end method

.method public downloadMedia(Ljava/lang/String;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V
    .locals 6
    .parameter "imageUrl"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 3093
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v0

    new-instance v4, Lio/rong/imkit/RongIM$36;

    invoke-direct {v4, p0, p2}, Lio/rong/imkit/RongIM$36;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V

    new-instance v5, Lio/rong/imkit/RongIM$37;

    invoke-direct {v5, p0, p2}, Lio/rong/imkit/RongIM$37;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$DownloadMediaCallback;)V

    move-object v1, p1

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lio/rong/imageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lio/rong/imageloader/core/assist/ImageSize;Lio/rong/imageloader/core/DisplayImageOptions;Lio/rong/imageloader/core/listener/ImageLoadingListener;Lio/rong/imageloader/core/listener/ImageLoadingProgressListener;)V

    .line 3123
    return-void
.end method

.method public downloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;)V
    .locals 2
    .parameter "message"
    .parameter "callback"

    .prologue
    .line 3049
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$35;

    invoke-direct {v1, p0, p2}, Lio/rong/imkit/RongIM$35;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->downloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;)V

    .line 3083
    return-void
.end method

.method public enableNewComingMessageIcon(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1473
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->showNewMessageIcon(Z)V

    .line 1474
    return-void
.end method

.method public enableUnreadMessageIcon(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1482
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->showUnreadMessageIcon(Z)V

    .line 1483
    return-void
.end method

.method public getBlacklist(Lio/rong/imlib/RongIMClient$GetBlacklistCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 3506
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->getBlacklist(Lio/rong/imlib/RongIMClient$GetBlacklistCallback;)V

    .line 3507
    return-void
.end method

.method public getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 3497
    .local p2, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/RongIMClient$BlacklistStatus;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3498
    return-void
.end method

.method public getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;
    .locals 1
    .parameter "type"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1573
    const/4 v0, 0x1

    sput-boolean v0, Lio/rong/imkit/RongIM;->uiReady:Z

    .line 1574
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
    .parameter "type"
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
    .line 1559
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Conversation;>;"
    const/4 v0, 0x1

    sput-boolean v0, Lio/rong/imkit/RongIM;->uiReady:Z

    .line 1560
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1561
    return-void
.end method

.method public getConversationList()Ljava/util/List;
    .locals 1
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
    .line 1523
    const/4 v0, 0x1

    sput-boolean v0, Lio/rong/imkit/RongIM;->uiReady:Z

    .line 1524
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->getConversationList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs getConversationList([Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;
    .locals 1
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
    .line 1547
    const/4 v0, 0x1

    sput-boolean v0, Lio/rong/imkit/RongIM;->uiReady:Z

    .line 1548
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->getConversationList([Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 1510
    .local p1, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Conversation;>;>;"
    const/4 v0, 0x1

    sput-boolean v0, Lio/rong/imkit/RongIM;->uiReady:Z

    .line 1511
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1512
    return-void
.end method

.method public varargs getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 1
    .parameter
    .parameter "types"
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
    .line 1534
    .local p1, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Conversation;>;>;"
    const/4 v0, 0x1

    sput-boolean v0, Lio/rong/imkit/RongIM;->uiReady:Z

    .line 1535
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1536
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
    .line 3133
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$38;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/rong/imkit/RongIM$38;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->getConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3152
    return-void
.end method

.method public getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    .locals 1

    .prologue
    .line 1500
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3304
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaTime()J
    .locals 2

    .prologue
    .line 3314
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->getDeltaTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 2190
    .local p2, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Discussion;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2191
    return-void
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
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
    .line 1801
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
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
    .line 1817
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 6
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
    .line 1844
    .local p5, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1845
    return-void
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
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
    .line 1831
    .local p6, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1832
    return-void
.end method

.method public getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
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
    .line 1774
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 1786
    .local p4, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/RongIMClient;->getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1787
    return-void
.end method

.method public getNotificationQuietHours(Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 3568
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$52;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/RongIM$52;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient;->getNotificationQuietHours(Lio/rong/imlib/RongIMClient$GetNotificationQuietHoursCallback;)V

    .line 3585
    return-void
.end method

.method public getPublicServiceList(Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 3649
    .local p1, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->getPublicServiceList(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3650
    return-void
.end method

.method public getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 3595
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfile;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3596
    return-void
.end method

.method public getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 9
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "dataTime"
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
    .line 1858
    .local p6, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/RongIMClient;->getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1859
    return-void
.end method

.method public getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lio/rong/imkit/RongIM;->mClientWrapper:Lio/rong/imkit/RongIMClientWrapper;

    return-object v0
.end method

.method public getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "conversationType"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2119
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 2157
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/String;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2158
    return-void
.end method

.method public getTotalUnreadCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1703
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->getTotalUnreadCount()I

    move-result v0

    return v0
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
    .line 1680
    .local p1, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$12;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/RongIM$12;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient;->getTotalUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1693
    return-void
.end method

.method public getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 1
    .parameter "conversationType"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1727
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;)I
    .locals 1
    .parameter "conversationTypes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1750
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient;->getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;)I

    move-result v0

    return v0
.end method

.method public varargs getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 1
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
    .line 1738
    .local p1, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getUnreadCount(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1739
    return-void
.end method

.method public getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 1714
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1715
    return-void
.end method

.method public getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 1760
    .local p2, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Integer;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1761
    return-void
.end method

.method public insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;
    .locals 4
    .parameter "type"
    .parameter "targetId"
    .parameter "senderUserId"
    .parameter "content"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2378
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/rong/imlib/MessageTag;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/MessageTag;

    .line 2382
    .local v1, tag:Lio/rong/imlib/MessageTag;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2383
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 2389
    .local v0, message:Lio/rong/imlib/model/Message;
    :goto_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2391
    return-object v0

    .line 2385
    .end local v0           #message:Lio/rong/imlib/model/Message;
    :cond_0
    invoke-static {p2, p1, p4}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 2386
    .restart local v0       #message:Lio/rong/imlib/model/Message;
    sget-object v2, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    const-string v3, "insertMessage Message is missing MessageTag.ISPERSISTED"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
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
    .line 2338
    .local p5, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lio/rong/imlib/MessageTag;

    .line 2340
    .local v6, tag:Lio/rong/imlib/MessageTag;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2342
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v5, Lio/rong/imkit/RongIM$23;

    invoke-direct {v5, p0, p5}, Lio/rong/imkit/RongIM$23;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2364
    :goto_0
    return-void

    .line 2362
    :cond_0
    sget-object v0, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    const-string v1, "insertMessage Message is missing MessageTag.ISPERSISTED"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public joinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "chatroomId"
    .parameter "defMessageCount"
    .parameter "callback"

    .prologue
    .line 3327
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$44;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIM$44;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->joinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3344
    return-void
.end method

.method public joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "chatroomId"
    .parameter "defMessageCount"
    .parameter "callback"

    .prologue
    .line 3356
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$45;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIM$45;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3373
    return-void
.end method

.method public joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "groupId"
    .parameter "groupName"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3249
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$42;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIM$42;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3266
    return-void
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 478
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient;->logout()V

    .line 480
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getMessageCounterLogic()Lio/rong/imkit/notification/MessageCounter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getMessageCounterLogic()Lio/rong/imkit/notification/MessageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/notification/MessageCounter;->clearCache()V

    .line 482
    :cond_0
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->uninit()V

    .line 483
    return-void
.end method

.method public quitChatRoom(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "chatroomId"
    .parameter "callback"

    .prologue
    .line 3382
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$46;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIM$46;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->quitChatRoom(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3399
    return-void
.end method

.method public quitDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter "callback"

    .prologue
    .line 2308
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$22;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIM$22;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->quitDiscussion(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2324
    return-void
.end method

.method public quitGroup(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "groupId"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3279
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$43;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIM$43;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->quitGroup(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3296
    return-void
.end method

.method public recallMessage(Lio/rong/imlib/model/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 3867
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$55;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/RongIM$55;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/model/Message;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->recallMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3879
    return-void
.end method

.method public recordNotificationEvent(Ljava/lang/String;)V
    .locals 0
    .parameter "pushId"

    .prologue
    .line 3696
    invoke-static {p1}, Lio/rong/push/RongPushClient;->recordNotificationEvent(Ljava/lang/String;)V

    .line 3697
    return-void
.end method

.method public refreshDiscussionCache(Lio/rong/imlib/model/Discussion;)V
    .locals 1
    .parameter "discussion"

    .prologue
    .line 966
    if-nez p1, :cond_0

    .line 970
    :goto_0
    return-void

    .line 969
    :cond_0
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->setDiscussionInfo(Lio/rong/imlib/model/Discussion;)V

    goto :goto_0
.end method

.method public refreshGroupInfoCache(Lio/rong/imlib/model/Group;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 1004
    if-nez p1, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 1007
    :cond_0
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->setGroupInfo(Lio/rong/imlib/model/Group;)V

    goto :goto_0
.end method

.method public refreshGroupUserInfoCache(Lio/rong/imkit/model/GroupUserInfo;)V
    .locals 1
    .parameter "groupUserInfo"

    .prologue
    .line 992
    if-nez p1, :cond_0

    .line 996
    :goto_0
    return-void

    .line 995
    :cond_0
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->setGroupUserInfo(Lio/rong/imkit/model/GroupUserInfo;)V

    goto :goto_0
.end method

.method public refreshUserInfoCache(Lio/rong/imlib/model/UserInfo;)V
    .locals 1
    .parameter "userInfo"

    .prologue
    .line 979
    if-nez p1, :cond_0

    .line 983
    :goto_0
    return-void

    .line 982
    :cond_0
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    goto :goto_0
.end method

.method public registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1458
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1459
    if-nez p1, :cond_0

    .line 1460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1462
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->registerConversationTemplate(Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;)V

    .line 1464
    :cond_1
    return-void
.end method

.method public removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
    .parameter "type"
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
    .line 1587
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$10;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imkit/RongIM$10;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1605
    return-void
.end method

.method public removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "targetId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1619
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lio/rong/imlib/RongIMClient;->removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    .line 1621
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 1622
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$ConversationRemoveEvent;

    invoke-direct {v2, p1, p2}, Lio/rong/imkit/model/Event$ConversationRemoveEvent;-><init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1624
    :cond_0
    return v0
.end method

.method public removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "userId"
    .parameter "callback"

    .prologue
    .line 3471
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$49;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIM$49;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3488
    return-void
.end method

.method public removeMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter "userId"
    .parameter "callback"

    .prologue
    .line 2284
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$21;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIM$21;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->removeMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2299
    return-void
.end method

.method public removeNotificationQuietHours(Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 3543
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$51;

    invoke-direct {v1, p0, p1}, Lio/rong/imkit/RongIM$51;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient;->removeNotificationQuietHours(Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3560
    return-void
.end method

.method public saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 2169
    .local p4, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/RongIMClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2170
    return-void
.end method

.method public saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "content"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2133
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public searchPublicService(Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 3606
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->searchPublicService(Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3607
    return-void
.end method

.method public searchPublicServiceByType(Lio/rong/imlib/model/Conversation$PublicServiceType;Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 3618
    .local p4, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/RongIMClient;->searchPublicServiceByType(Lio/rong/imlib/model/Conversation$PublicServiceType;Lio/rong/imlib/RongIMClient$SearchType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3619
    return-void
.end method

.method public sendImageMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V
    .locals 11
    .parameter "type"
    .parameter "targetId"
    .parameter "content"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"

    .prologue
    .line 2820
    invoke-static {p2, p1, p3}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v8

    .line 2822
    .local v8, message:Lio/rong/imlib/model/Message;
    invoke-direct {p0, v8}, Lio/rong/imkit/RongIM;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v10

    .line 2823
    .local v10, temp:Lio/rong/imlib/model/Message;
    if-nez v10, :cond_0

    .line 2879
    :goto_0
    return-void

    .line 2826
    :cond_0
    if-eq v10, v8, :cond_1

    .line 2827
    move-object v8, v10

    .line 2829
    :cond_1
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object p3

    .line 2831
    invoke-direct {p0, p3}, Lio/rong/imkit/RongIM;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    move-result-object p3

    .line 2833
    new-instance v9, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v9}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2834
    .local v9, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;>;"
    new-instance v1, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-direct {v1}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;-><init>()V

    iput-object v1, v9, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2836
    new-instance v7, Lio/rong/imkit/RongIM$32;

    move-object/from16 v0, p6

    invoke-direct {v7, p0, v0, v9}, Lio/rong/imkit/RongIM$32;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback$Result;)V

    .line 2878
    .local v7, sendMessageCallback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/RongIMClient;->sendImageMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V

    goto :goto_0
.end method

.method public sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V
    .locals 4
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"

    .prologue
    .line 2894
    invoke-direct {p0, p1}, Lio/rong/imkit/RongIM;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v2

    .line 2896
    .local v2, temp:Lio/rong/imlib/model/Message;
    if-nez v2, :cond_0

    .line 2948
    :goto_0
    return-void

    .line 2899
    :cond_0
    if-eq v2, p1, :cond_1

    .line 2900
    move-object p1, v2

    .line 2902
    :cond_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/rong/imkit/RongIM;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    .line 2904
    new-instance v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v0}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2905
    .local v0, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;>;"
    new-instance v3, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-direct {v3}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;-><init>()V

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2907
    new-instance v1, Lio/rong/imkit/RongIM$33;

    invoke-direct {v1, p0, p4, v0}, Lio/rong/imkit/RongIM$33;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback$Result;)V

    .line 2947
    .local v1, sendMessageCallback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, v1}, Lio/rong/imlib/RongIMClient;->sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V

    goto :goto_0
.end method

.method public sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;)V
    .locals 4
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"

    .prologue
    .line 2970
    invoke-direct {p0, p1}, Lio/rong/imkit/RongIM;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v2

    .line 2972
    .local v2, temp:Lio/rong/imlib/model/Message;
    if-nez v2, :cond_0

    .line 3023
    :goto_0
    return-void

    .line 2975
    :cond_0
    if-eq v2, p1, :cond_1

    .line 2976
    move-object p1, v2

    .line 2978
    :cond_1
    new-instance v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v0}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2979
    .local v0, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;>;"
    new-instance v3, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-direct {v3}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;-><init>()V

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2981
    new-instance v1, Lio/rong/imkit/RongIM$34;

    invoke-direct {v1, p0, p4, v0}, Lio/rong/imkit/RongIM$34;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;Lio/rong/imlib/RongIMClient$ResultCallback$Result;)V

    .line 3022
    .local v1, sendMessageCallback:Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, v1}, Lio/rong/imlib/RongIMClient;->sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageWithUploadListenerCallback;)V

    goto :goto_0
.end method

.method public sendLocationMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V
    .locals 3
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "sendMessageCallback"

    .prologue
    .line 2764
    invoke-direct {p0, p1}, Lio/rong/imkit/RongIM;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 2765
    .local v0, filterMsg:Lio/rong/imlib/model/Message;
    if-nez v0, :cond_0

    .line 2766
    sget-object v1, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    const-string v2, "sendLocationMessage: \u56e0\u5728 onSend \u4e2d\u6d88\u606f\u88ab\u8fc7\u6ee4\u4e3a null\uff0c\u53d6\u6d88\u53d1\u9001\u3002"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    :goto_0
    return-void

    .line 2769
    :cond_0
    if-eq v0, p1, :cond_1

    .line 2770
    move-object p1, v0

    .line 2772
    :cond_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/rong/imkit/RongIM;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 2773
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/RongIM$31;

    invoke-direct {v2, p0, p4}, Lio/rong/imkit/RongIM$31;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V

    invoke-virtual {v1, p1, p2, p3, v2}, Lio/rong/imlib/RongIMClient;->sendLocationMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V

    goto :goto_0
.end method

.method public sendMediaMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;)V
    .locals 4
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"

    .prologue
    .line 3894
    invoke-direct {p0, p1}, Lio/rong/imkit/RongIM;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v2

    .line 3896
    .local v2, temp:Lio/rong/imlib/model/Message;
    if-nez v2, :cond_0

    .line 3947
    :goto_0
    return-void

    .line 3900
    :cond_0
    if-eq v2, p1, :cond_1

    .line 3901
    move-object p1, v2

    .line 3903
    :cond_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/rong/imkit/RongIM;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    .line 3905
    new-instance v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v0}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 3906
    .local v0, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;>;"
    new-instance v3, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-direct {v3}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;-><init>()V

    iput-object v3, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 3908
    new-instance v1, Lio/rong/imkit/RongIM$56;

    invoke-direct {v1, p0, v0, p4}, Lio/rong/imkit/RongIM$56;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;)V

    .line 3946
    .local v1, sendMessageCallback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, v1}, Lio/rong/imlib/RongIMClient;->sendMediaMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;)V

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;
    .locals 13
    .parameter "type"
    .parameter "targetId"
    .parameter "content"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2410
    new-instance v10, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v10}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2412
    .local v10, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    move-object/from16 v0, p3

    invoke-static {p2, p1, v0}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v9

    .line 2414
    .local v9, messageTemp:Lio/rong/imlib/model/Message;
    invoke-direct {p0, v9}, Lio/rong/imkit/RongIM;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v12

    .line 2415
    .local v12, temp:Lio/rong/imlib/model/Message;
    if-nez v12, :cond_0

    .line 2416
    const/4 v8, 0x0

    .line 2462
    :goto_0
    return-object v8

    .line 2418
    :cond_0
    if-eq v12, v9, :cond_1

    .line 2419
    move-object v9, v12

    .line 2421
    :cond_1
    invoke-virtual {v9}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object p3

    .line 2423
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lio/rong/imkit/RongIM;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    move-result-object p3

    .line 2425
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    new-instance v7, Lio/rong/imkit/RongIM$24;

    move-object/from16 v0, p6

    invoke-direct {v7, p0, v10, v0}, Lio/rong/imkit/RongIM$24;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendMessageCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    move-result-object v8

    .line 2455
    .local v8, message:Lio/rong/imlib/model/Message;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/rong/imlib/MessageTag;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lio/rong/imlib/MessageTag;

    .line 2457
    .local v11, tag:Lio/rong/imlib/MessageTag;
    if-eqz v11, :cond_2

    invoke-interface {v11}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2458
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v8}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2460
    :cond_2
    iput-object v8, v10, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;
    .locals 6
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2646
    new-instance v1, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v1}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2648
    .local v1, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    invoke-direct {p0, p1}, Lio/rong/imkit/RongIM;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v3

    .line 2650
    .local v3, temp:Lio/rong/imlib/model/Message;
    if-nez v3, :cond_0

    .line 2651
    const/4 v0, 0x0

    .line 2695
    :goto_0
    return-object v0

    .line 2653
    :cond_0
    if-eq v3, p1, :cond_1

    .line 2654
    move-object p1, v3

    .line 2656
    :cond_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/rong/imkit/RongIM;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 2658
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v4

    new-instance v5, Lio/rong/imkit/RongIM$29;

    invoke-direct {v5, p0, v1, p4}, Lio/rong/imkit/RongIM$29;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendMessageCallback;)V

    invoke-virtual {v4, p1, p2, p3, v5}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 2688
    .local v0, msg:Lio/rong/imlib/model/Message;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lio/rong/imlib/MessageTag;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/MessageTag;

    .line 2690
    .local v2, tag:Lio/rong/imlib/MessageTag;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2691
    invoke-static {}, Lio/rong/eventbus/EventBus;->getDefault()Lio/rong/eventbus/EventBus;

    move-result-object v4

    invoke-virtual {v4, v0}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2693
    :cond_2
    iput-object v0, v1, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 12
    .parameter "type"
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
    .line 2482
    .local p7, resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    new-instance v10, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v10}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2484
    .local v10, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    invoke-static {p2, p1, p3}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v9

    .line 2486
    .local v9, message:Lio/rong/imlib/model/Message;
    invoke-direct {p0, v9}, Lio/rong/imkit/RongIM;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v11

    .line 2487
    .local v11, temp:Lio/rong/imlib/model/Message;
    if-nez v11, :cond_0

    .line 2550
    :goto_0
    return-void

    .line 2490
    :cond_0
    if-eq v11, v9, :cond_1

    .line 2491
    move-object v9, v11

    .line 2493
    :cond_1
    invoke-virtual {v9}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object p3

    .line 2495
    invoke-direct {p0, p3}, Lio/rong/imkit/RongIM;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    move-result-object p3

    .line 2496
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    new-instance v7, Lio/rong/imkit/RongIM$25;

    move-object/from16 v0, p6

    invoke-direct {v7, p0, v10, v0}, Lio/rong/imkit/RongIM$25;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendMessageCallback;)V

    new-instance v8, Lio/rong/imkit/RongIM$26;

    move-object/from16 v0, p7

    invoke-direct {v8, p0, v10, v0}, Lio/rong/imkit/RongIM$26;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v8}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V
    .locals 3
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"

    .prologue
    .line 2711
    invoke-direct {p0, p1}, Lio/rong/imkit/RongIM;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 2712
    .local v0, filterMsg:Lio/rong/imlib/model/Message;
    if-nez v0, :cond_0

    .line 2713
    sget-object v1, Lio/rong/imkit/RongIM;->TAG:Ljava/lang/String;

    const-string v2, "sendMessage: \u56e0\u5728 onSend \u4e2d\u6d88\u606f\u88ab\u8fc7\u6ee4\u4e3a null\uff0c\u53d6\u6d88\u53d1\u9001\u3002"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    :goto_0
    return-void

    .line 2716
    :cond_0
    if-eq v0, p1, :cond_1

    .line 2717
    move-object p1, v0

    .line 2719
    :cond_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/rong/imkit/RongIM;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 2720
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/RongIM$30;

    invoke-direct {v2, p0, p4}, Lio/rong/imkit/RongIM$30;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V

    invoke-virtual {v1, p1, p2, p3, v2}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V

    goto :goto_0
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 8
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
    .line 2566
    .local p5, resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Message;>;"
    new-instance v6, Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    invoke-direct {v6}, Lio/rong/imlib/RongIMClient$ResultCallback$Result;-><init>()V

    .line 2568
    .local v6, result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;,"Lio/rong/imlib/RongIMClient$ResultCallback$Result<Lio/rong/imlib/model/Message;>;"
    invoke-direct {p0, p1}, Lio/rong/imkit/RongIM;->filterSendMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v7

    .line 2569
    .local v7, temp:Lio/rong/imlib/model/Message;
    if-nez v7, :cond_0

    .line 2629
    :goto_0
    return-void

    .line 2572
    :cond_0
    if-eq v7, p1, :cond_1

    .line 2573
    move-object p1, v7

    .line 2575
    :cond_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/rong/imkit/RongIM;->setMessageAttachedUserInfo(Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 2577
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v4, Lio/rong/imkit/RongIM$27;

    invoke-direct {v4, p0, v6, p4}, Lio/rong/imkit/RongIM$27;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendMessageCallback;)V

    new-instance v5, Lio/rong/imkit/RongIM$28;

    invoke-direct {v5, p0, v6, p5}, Lio/rong/imkit/RongIM$28;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
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
    .line 3163
    .local p4, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v6

    new-instance v0, Lio/rong/imkit/RongIM$39;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imkit/RongIM$39;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    invoke-virtual {v6, p1, p2, p3, v0}, Lio/rong/imlib/RongIMClient;->setConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 3179
    return-void
.end method

.method public setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ZLio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 7
    .parameter "type"
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
    .line 1636
    .local p4, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v6

    new-instance v0, Lio/rong/imkit/RongIM$11;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imkit/RongIM$11;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)V

    invoke-virtual {v6, p1, p2, p3, v0}, Lio/rong/imlib/RongIMClient;->setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ZLio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1652
    return-void
.end method

.method public setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "isTop"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1665
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)Z

    move-result v0

    .line 1667
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 1668
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$ConversationTopEvent;

    invoke-direct {v2, p1, p2, p3}, Lio/rong/imkit/model/Event$ConversationTopEvent;-><init>(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1671
    :cond_0
    return v0
.end method

.method public setCurrentUserInfo(Lio/rong/imlib/model/UserInfo;)V
    .locals 1
    .parameter "userInfo"

    .prologue
    .line 228
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->setCurrentUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 232
    :cond_0
    return-void
.end method

.method public setDiscussionInviteStatus(Ljava/lang/String;Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 3189
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$40;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIM$40;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->setDiscussionInviteStatus(Ljava/lang/String;Lio/rong/imlib/RongIMClient$DiscussionInviteStatus;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3205
    return-void
.end method

.method public setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter "name"
    .parameter "callback"

    .prologue
    .line 2201
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$18;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imkit/RongIM$18;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 2218
    return-void
.end method

.method public setGroupMembersProvider(Lio/rong/imkit/RongIM$IGroupMembersProvider;)V
    .locals 1
    .parameter "groupMembersProvider"

    .prologue
    .line 486
    invoke-static {}, Lio/rong/imkit/mention/RongMentionManager;->getInstance()Lio/rong/imkit/mention/RongMentionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/mention/RongMentionManager;->setGroupMembersProvider(Lio/rong/imkit/RongIM$IGroupMembersProvider;)V

    .line 487
    return-void
.end method

.method public setMaxVoiceDurationg(I)V
    .locals 1
    .parameter "sec"

    .prologue
    .line 1491
    invoke-static {}, Lio/rong/imkit/manager/AudioRecordManager;->getInstance()Lio/rong/imkit/manager/AudioRecordManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/manager/AudioRecordManager;->setMaxVoiceDuration(I)V

    .line 1492
    return-void
.end method

.method public setMessageAttachedUserInfo(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1334
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->setUserInfoAttachedState(Z)V

    .line 1335
    return-void
.end method

.method public setMessageExtra(ILjava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 2038
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->setMessageExtra(ILjava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2039
    return-void
.end method

.method public setMessageExtra(ILjava/lang/String;)Z
    .locals 1
    .parameter "messageId"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2027
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->setMessageExtra(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 1
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
    .line 2062
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2063
    return-void
.end method

.method public setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;)Z
    .locals 1
    .parameter "messageId"
    .parameter "receivedStatus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2051
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;)Z

    move-result v0

    return v0
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
    .line 2091
    .local p3, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$17;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imkit/RongIM$17;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback;ILio/rong/imlib/model/Message$SentStatus;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 2107
    return-void
.end method

.method public setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;)Z
    .locals 3
    .parameter "messageId"
    .parameter "sentStatus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2075
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lio/rong/imlib/RongIMClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;)Z

    move-result v0

    .line 2077
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 2078
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/model/Event$MessageSentStatusEvent;

    invoke-direct {v2, p1, p2}, Lio/rong/imkit/model/Event$MessageSentStatusEvent;-><init>(ILio/rong/imlib/model/Message$SentStatus;)V

    invoke-virtual {v1, v2}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2080
    :cond_0
    return v0
.end method

.method public setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "startTime"
    .parameter "spanMinutes"
    .parameter "callback"

    .prologue
    .line 3517
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$50;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/rong/imkit/RongIM$50;-><init>(Lio/rong/imkit/RongIM;Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/RongIMClient;->setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3535
    return-void
.end method

.method public varargs setOnReceiveUnreadCountChangedListener(Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;[Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 2
    .parameter "listener"
    .parameter "conversationTypes"

    .prologue
    .line 1352
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1353
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 1354
    new-instance v0, Lio/rong/imkit/RongIM$9;

    invoke-static {p2}, Lio/rong/imkit/model/ConversationTypeFilter;->obtain([Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationTypeFilter;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lio/rong/imkit/RongIM$9;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imkit/model/ConversationTypeFilter;Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;)V

    .line 1361
    .local v0, mCounter:Lio/rong/imkit/notification/MessageCounter$Counter;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getMessageCounterLogic()Lio/rong/imkit/notification/MessageCounter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/rong/imkit/notification/MessageCounter;->registerMessageCounter(Lio/rong/imkit/notification/MessageCounter$Counter;)V

    .line 1365
    .end local v0           #mCounter:Lio/rong/imkit/notification/MessageCounter$Counter;
    :cond_0
    return-void
.end method

.method public setPublicServiceMenuClickListener(Lio/rong/imkit/IPublicServiceMenuClickListener;)V
    .locals 1
    .parameter "menuClickListener"

    .prologue
    .line 3855
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3856
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->setPublicServiceMenuClickListener(Lio/rong/imkit/IPublicServiceMenuClickListener;)V

    .line 3859
    :cond_0
    return-void
.end method

.method public varargs setReadReceiptConversationTypeList([Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 1
    .parameter "types"

    .prologue
    .line 3964
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3965
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->setReadReceiptConversationTypeList([Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 3967
    :cond_0
    return-void
.end method

.method public setRequestPermissionListener(Lio/rong/imkit/RongIM$RequestPermissionsListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3684
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->setRequestPermissionListener(Lio/rong/imkit/RongIM$RequestPermissionsListener;)V

    .line 3685
    return-void
.end method

.method public setSendMessageListener(Lio/rong/imkit/RongIM$OnSendMessageListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 1017
    if-nez p1, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1020
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1021
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "RongCloud SDK not init"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imkit/RongContext;->setOnSendMessageListener(Lio/rong/imkit/RongIM$OnSendMessageListener;)V

    .line 1024
    return-void
.end method

.method public startChatRoomChat(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "chatRoomId"
    .parameter "createIfNotExist"

    .prologue
    .line 854
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 855
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 857
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    if-nez v2, :cond_2

    .line 858
    new-instance v2, Ljava/lang/ExceptionInInitializerError;

    const-string v3, "RongCloud SDK not init"

    invoke-direct {v2, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 860
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rong://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "conversation"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "targetId"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 864
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 865
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "createIfNotExist"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 866
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 867
    return-void
.end method

.method public startConversation(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "title"

    .prologue
    .line 712
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 713
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 715
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "targetId"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 719
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 720
    return-void
.end method

.method public startConversationList(Landroid/content/Context;)V
    .locals 3
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 549
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-nez v1, :cond_1

    .line 550
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "RongCloud SDK not init"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "conversationlist"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 555
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 556
    return-void
.end method

.method public startConversationList(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p2, supportedConversation:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 568
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 570
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    if-nez v4, :cond_1

    .line 571
    new-instance v4, Ljava/lang/ExceptionInInitializerError;

    const-string v5, "RongCloud SDK not init"

    invoke-direct {v4, v5}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 573
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rong://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "conversationlist"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 574
    .local v0, builder:Landroid/net/Uri$Builder;
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 575
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 576
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 577
    .local v2, key:Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "true"

    :goto_1
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_2
    const-string v4, "false"

    goto :goto_1

    .line 581
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 582
    return-void
.end method

.method public startCustomerServiceChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/CSCustomServiceInfo;)V
    .locals 4
    .parameter "context"
    .parameter "customerServiceId"
    .parameter "title"
    .parameter "customServiceInfo"

    .prologue
    .line 880
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 881
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 883
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    if-nez v2, :cond_2

    .line 884
    new-instance v2, Ljava/lang/ExceptionInInitializerError;

    const-string v3, "RongCloud SDK not init"

    invoke-direct {v2, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 886
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rong://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "conversation"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "targetId"

    invoke-virtual {v2, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 890
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 891
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "customServiceInfo"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 892
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 893
    return-void
.end method

.method public startDiscussionChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "targetDiscussionId"
    .parameter "title"

    .prologue
    .line 805
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 809
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "targetId"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 813
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 814
    return-void
.end method

.method public startGroupChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "targetGroupId"
    .parameter "title"

    .prologue
    .line 825
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 828
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-nez v1, :cond_2

    .line 829
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "RongCloud SDK not init"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 831
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "targetId"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 835
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 836
    return-void
.end method

.method public startPrivateChat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "targetUserId"
    .parameter "title"

    .prologue
    .line 685
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 686
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 688
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-nez v1, :cond_2

    .line 689
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "RongCloud SDK not init"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "targetId"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 695
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 696
    return-void
.end method

.method public startPublicServiceProfile(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 1376
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1377
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1379
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1380
    new-instance v2, Ljava/lang/ExceptionInInitializerError;

    const-string v3, "RongCloud SDK not init"

    invoke-direct {v2, v3}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1382
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rong://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "publicServiceProfile"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "targetId"

    invoke-virtual {v2, v3, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1385
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1386
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1387
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1388
    return-void
.end method

.method public startSubConversationList(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 4
    .parameter "context"
    .parameter "conversationType"

    .prologue
    .line 592
    if-nez p1, :cond_0

    .line 593
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 595
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    if-nez v1, :cond_1

    .line 596
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "RongCloud SDK not init"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "subconversationlist"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {p2}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 603
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 604
    return-void
.end method

.method public subscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 1
    .parameter "publicServiceType"
    .parameter "publicServiceId"
    .parameter "callback"

    .prologue
    .line 3629
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->subscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3630
    return-void
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
    .line 3218
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$41;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imkit/RongIM$41;-><init>(Lio/rong/imkit/RongIM;Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->syncGroup(Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3235
    return-void
.end method

.method public syncUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 2
    .parameter "userData"
    .parameter "callback"

    .prologue
    .line 3660
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/RongIM$53;

    invoke-direct {v1, p0, p2}, Lio/rong/imkit/RongIM$53;-><init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/RongIMClient;->syncUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3675
    return-void
.end method

.method public unsubscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 1
    .parameter "publicServiceType"
    .parameter "publicServiceId"
    .parameter "callback"

    .prologue
    .line 3640
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/RongIMClient;->unsubscribePublicService(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V

    .line 3641
    return-void
.end method
