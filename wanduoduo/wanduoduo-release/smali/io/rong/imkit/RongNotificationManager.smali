.class public Lio/rong/imkit/RongNotificationManager;
.super Ljava/lang/Object;
.source "RongNotificationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RongNotificationManager"

.field private static sS:Lio/rong/imkit/RongNotificationManager;


# instance fields
.field mContext:Lio/rong/imkit/RongContext;

.field messageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lio/rong/imkit/RongNotificationManager;

    invoke-direct {v0}, Lio/rong/imkit/RongNotificationManager;-><init>()V

    sput-object v0, Lio/rong/imkit/RongNotificationManager;->sS:Lio/rong/imkit/RongNotificationManager;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    return-void
.end method

.method public static getInstance()Lio/rong/imkit/RongNotificationManager;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lio/rong/imkit/RongNotificationManager;->sS:Lio/rong/imkit/RongNotificationManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lio/rong/imkit/RongNotificationManager;

    invoke-direct {v0}, Lio/rong/imkit/RongNotificationManager;-><init>()V

    sput-object v0, Lio/rong/imkit/RongNotificationManager;->sS:Lio/rong/imkit/RongNotificationManager;

    .line 48
    :cond_0
    sget-object v0, Lio/rong/imkit/RongNotificationManager;->sS:Lio/rong/imkit/RongNotificationManager;

    return-object v0
.end method

.method private isMentionedMessage(Lio/rong/imlib/model/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 361
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v0

    .line 362
    .local v0, mentionedInfo:Lio/rong/imlib/model/MentionedInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/rong/imlib/model/MentionedInfo;->getType()Lio/rong/imlib/model/MentionedInfo$MentionedType;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/MentionedInfo$MentionedType;->ALL:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/MentionedInfo$MentionedType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/rong/imlib/model/MentionedInfo;->getType()Lio/rong/imlib/model/MentionedInfo$MentionedType;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/MentionedInfo$MentionedType;->PART:Lio/rong/imlib/model/MentionedInfo$MentionedType;

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/MentionedInfo$MentionedType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/rong/imlib/model/MentionedInfo;->getMentionedUserIdList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/rong/imlib/model/MentionedInfo;->getMentionedUserIdList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    :cond_0
    const/4 v1, 0x1

    .line 368
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init(Lio/rong/imkit/RongContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    iput-object p1, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    .line 38
    iget-object v0, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 39
    invoke-virtual {p1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Discussion;)V
    .locals 8
    .parameter "discussion"

    .prologue
    .line 311
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {v6, v7}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, key:Ljava/lang/String;
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 313
    const-string v5, ""

    .line 314
    .local v5, userName:Ljava/lang/String;
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Message;

    .line 315
    .local v2, message:Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v0

    .line 318
    .local v0, content:Landroid/text/Spannable;
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    .line 321
    .local v4, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v4, :cond_1

    .line 322
    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 336
    .end local v0           #content:Landroid/text/Spannable;
    .end local v2           #message:Lio/rong/imlib/model/Message;
    .end local v4           #userInfo:Lio/rong/imlib/model/UserInfo;
    .end local v5           #userName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 327
    .restart local v0       #content:Landroid/text/Spannable;
    .restart local v2       #message:Lio/rong/imlib/model/Message;
    .restart local v4       #userInfo:Lio/rong/imlib/model/UserInfo;
    .restart local v5       #userName:Ljava/lang/String;
    :cond_1
    new-instance v3, Lio/rong/push/notification/PushNotificationMessage;

    invoke-direct {v3}, Lio/rong/push/notification/PushNotificationMessage;-><init>()V

    .line 328
    .local v3, pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/push/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v6

    invoke-static {v6}, Lio/rong/push/RongPushClient$ConversationType;->setValue(I)Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/push/notification/PushNotificationMessage;->setConversationType(Lio/rong/push/RongPushClient$ConversationType;)V

    .line 330
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/push/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/push/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/push/notification/PushNotificationMessage;->setObjectName(Ljava/lang/String;)V

    .line 333
    const-string v6, "false"

    invoke-virtual {v3, v6}, Lio/rong/push/notification/PushNotificationMessage;->setPushFlag(Ljava/lang/String;)V

    .line 334
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-static {v6, v3}, Lio/rong/push/RongPushClient;->sendNotification(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Group;)V
    .locals 8
    .parameter "groupInfo"

    .prologue
    .line 279
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {v6, v7}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, key:Ljava/lang/String;
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 282
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Message;

    .line 283
    .local v2, message:Lio/rong/imlib/model/Message;
    const-string v5, ""

    .line 284
    .local v5, userName:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v0

    .line 287
    .local v0, content:Landroid/text/Spannable;
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v6

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    .line 290
    .local v4, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v4, :cond_1

    .line 291
    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 292
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    .end local v0           #content:Landroid/text/Spannable;
    .end local v2           #message:Lio/rong/imlib/model/Message;
    .end local v4           #userInfo:Lio/rong/imlib/model/UserInfo;
    .end local v5           #userName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 296
    .restart local v0       #content:Landroid/text/Spannable;
    .restart local v2       #message:Lio/rong/imlib/model/Message;
    .restart local v4       #userInfo:Lio/rong/imlib/model/UserInfo;
    .restart local v5       #userName:Ljava/lang/String;
    :cond_1
    new-instance v3, Lio/rong/push/notification/PushNotificationMessage;

    invoke-direct {v3}, Lio/rong/push/notification/PushNotificationMessage;-><init>()V

    .line 297
    .local v3, pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/push/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v6

    invoke-static {v6}, Lio/rong/push/RongPushClient$ConversationType;->setValue(I)Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/push/notification/PushNotificationMessage;->setConversationType(Lio/rong/push/RongPushClient$ConversationType;)V

    .line 299
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/push/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/push/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/push/notification/PushNotificationMessage;->setObjectName(Ljava/lang/String;)V

    .line 302
    const-string v6, "false"

    invoke-virtual {v3, v6}, Lio/rong/push/notification/PushNotificationMessage;->setPushFlag(Ljava/lang/String;)V

    .line 303
    iget-object v6, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-static {v6, v3}, Lio/rong/push/RongPushClient;->sendNotification(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 341
    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    iget-object v4, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Message;

    .line 345
    .local v2, message:Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v4

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v0

    .line 348
    .local v0, content:Landroid/text/Spannable;
    new-instance v3, Lio/rong/push/notification/PushNotificationMessage;

    invoke-direct {v3}, Lio/rong/push/notification/PushNotificationMessage;-><init>()V

    .line 349
    .local v3, pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/push/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v4

    invoke-static {v4}, Lio/rong/push/RongPushClient$ConversationType;->setValue(I)Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/push/notification/PushNotificationMessage;->setConversationType(Lio/rong/push/RongPushClient$ConversationType;)V

    .line 351
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/push/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/push/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/push/notification/PushNotificationMessage;->setObjectName(Ljava/lang/String;)V

    .line 354
    const-string v4, "false"

    invoke-virtual {v3, v4}, Lio/rong/push/notification/PushNotificationMessage;->setPushFlag(Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-static {v4, v3}, Lio/rong/push/RongPushClient;->sendNotification(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)V

    .line 356
    iget-object v4, p0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .end local v0           #content:Landroid/text/Spannable;
    .end local v2           #message:Lio/rong/imlib/model/Message;
    .end local v3           #pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/UserInfo;)V
    .locals 17
    .parameter "userInfo"

    .prologue
    .line 210
    const/4 v14, 0x6

    new-array v13, v14, [Lio/rong/imlib/model/Conversation$ConversationType;

    const/4 v14, 0x0

    sget-object v15, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v15, v13, v14

    const/4 v14, 0x3

    sget-object v15, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v15, v13, v14

    const/4 v14, 0x4

    sget-object v15, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v15, v13, v14

    const/4 v14, 0x5

    sget-object v15, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v15, v13, v14

    .line 216
    .local v13, types:[Lio/rong/imlib/model/Conversation$ConversationType;
    move-object v1, v13

    .local v1, arr$:[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v12, v1, v5

    .line 217
    .local v12, type:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v12}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 220
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/rong/imlib/model/Message;

    .line 221
    .local v8, message:Lio/rong/imlib/model/Message;
    const-string v11, ""

    .line 222
    .local v11, targetName:Ljava/lang/String;
    const-string v9, ""

    .line 223
    .local v9, notificationContent:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v14

    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v2

    .line 226
    .local v2, content:Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v12, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 229
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v14

    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getGroupInfo(Ljava/lang/String;)Lio/rong/imlib/model/Group;

    move-result-object v4

    .line 230
    .local v4, groupInfo:Lio/rong/imlib/model/Group;
    if-eqz v4, :cond_0

    .line 231
    invoke-virtual {v4}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v11

    .line 234
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lio/rong/imkit/RongNotificationManager;->isMentionedMessage(Lio/rong/imlib/model/Message;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 235
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MentionedInfo;->getMentionedContent()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 236
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    sget v16, Lio/rong/imkit/R$string;->rc_message_content_mentioned:I

    invoke-virtual/range {v15 .. v16}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 261
    .end local v4           #groupInfo:Lio/rong/imlib/model/Group;
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 274
    .end local v2           #content:Landroid/text/Spannable;
    .end local v6           #key:Ljava/lang/String;
    .end local v8           #message:Lio/rong/imlib/model/Message;
    .end local v9           #notificationContent:Ljava/lang/String;
    .end local v11           #targetName:Ljava/lang/String;
    .end local v12           #type:Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_1
    return-void

    .line 238
    .restart local v2       #content:Landroid/text/Spannable;
    .restart local v4       #groupInfo:Lio/rong/imlib/model/Group;
    .restart local v6       #key:Ljava/lang/String;
    .restart local v8       #message:Lio/rong/imlib/model/Message;
    .restart local v9       #notificationContent:Ljava/lang/String;
    .restart local v11       #targetName:Ljava/lang/String;
    .restart local v12       #type:Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_2
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MentionedInfo;->getMentionedContent()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 241
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 243
    .end local v4           #groupInfo:Lio/rong/imlib/model/Group;
    :cond_4
    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v12, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 244
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v14

    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getDiscussionInfo(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;

    move-result-object v3

    .line 245
    .local v3, discussion:Lio/rong/imlib/model/Discussion;
    if-eqz v3, :cond_5

    .line 246
    invoke-virtual {v3}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v11

    .line 248
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lio/rong/imkit/RongNotificationManager;->isMentionedMessage(Lio/rong/imlib/model/Message;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 249
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MentionedInfo;->getMentionedContent()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 250
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    sget v16, Lio/rong/imkit/R$string;->rc_message_content_mentioned:I

    invoke-virtual/range {v15 .. v16}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 252
    :cond_6
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MentionedInfo;->getMentionedContent()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 255
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 258
    .end local v3           #discussion:Lio/rong/imlib/model/Discussion;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 259
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 264
    :cond_9
    new-instance v10, Lio/rong/push/notification/PushNotificationMessage;

    invoke-direct {v10}, Lio/rong/push/notification/PushNotificationMessage;-><init>()V

    .line 265
    .local v10, pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    invoke-virtual {v10, v9}, Lio/rong/push/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v14

    invoke-static {v14}, Lio/rong/push/RongPushClient$ConversationType;->setValue(I)Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v14

    invoke-virtual {v10, v14}, Lio/rong/push/notification/PushNotificationMessage;->setConversationType(Lio/rong/push/RongPushClient$ConversationType;)V

    .line 267
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lio/rong/push/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v10, v11}, Lio/rong/push/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lio/rong/push/notification/PushNotificationMessage;->setObjectName(Ljava/lang/String;)V

    .line 270
    const-string v14, "false"

    invoke-virtual {v10, v14}, Lio/rong/push/notification/PushNotificationMessage;->setPushFlag(Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-static {v14, v10}, Lio/rong/push/RongPushClient;->sendNotification(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)V

    .line 216
    .end local v2           #content:Landroid/text/Spannable;
    .end local v8           #message:Lio/rong/imlib/model/Message;
    .end local v9           #notificationContent:Ljava/lang/String;
    .end local v10           #pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    .end local v11           #targetName:Ljava/lang/String;
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method public onReceiveMessageFromApp(Lio/rong/imlib/model/Message;)V
    .locals 17
    .parameter "message"

    .prologue
    .line 52
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    .line 53
    .local v11, type:Lio/rong/imlib/model/Conversation$ConversationType;
    const/4 v10, 0x0

    .line 54
    .local v10, targetName:Ljava/lang/String;
    const-string v13, ""

    .line 57
    .local v13, userName:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v6

    .line 58
    .local v6, provider:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    if-nez v6, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v6, v14}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v1

    .line 62
    .local v1, content:Landroid/text/Spannable;
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v15

    invoke-static {v14, v15}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v9

    .line 63
    .local v9, targetKey:Lio/rong/imkit/model/ConversationKey;
    if-nez v9, :cond_2

    .line 64
    const-string v14, "RongNotificationManager"

    const-string v15, "onReceiveMessageFromApp targetKey is null"

    invoke-static {v14, v15}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    const-string v14, "RongNotificationManager"

    const-string v15, "onReceiveMessageFromApp start"

    invoke-static {v14, v15}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-nez v1, :cond_3

    .line 69
    const-string v14, "RongNotificationManager"

    const-string v15, "onReceiveMessageFromApp Content is null. Return directly."

    invoke-static {v14, v15}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_3
    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v11, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v11, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v11, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v11, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 75
    :cond_4
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v12

    .line 76
    .local v12, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v12, :cond_5

    .line 77
    invoke-virtual {v12}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v10

    .line 78
    :cond_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 79
    new-instance v7, Lio/rong/push/notification/PushNotificationMessage;

    invoke-direct {v7}, Lio/rong/push/notification/PushNotificationMessage;-><init>()V

    .line 80
    .local v7, pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v14

    invoke-static {v14}, Lio/rong/push/RongPushClient$ConversationType;->setValue(I)Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setConversationType(Lio/rong/push/RongPushClient$ConversationType;)V

    .line 82
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v7, v10}, Lio/rong/push/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setSenderId(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v7, v10}, Lio/rong/push/notification/PushNotificationMessage;->setSenderName(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setObjectName(Ljava/lang/String;)V

    .line 87
    const-string v14, "false"

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setPushFlag(Ljava/lang/String;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-static {v14, v7}, Lio/rong/push/RongPushClient;->sendNotification(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)V

    goto/16 :goto_0

    .line 90
    .end local v7           #pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    :cond_6
    if-eqz v9, :cond_0

    .line 91
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 94
    .end local v12           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_7
    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v11, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 95
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getGroupInfo(Ljava/lang/String;)Lio/rong/imlib/model/Group;

    move-result-object v3

    .line 96
    .local v3, groupInfo:Lio/rong/imlib/model/Group;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v12

    .line 97
    .restart local v12       #userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v3, :cond_8

    .line 98
    invoke-virtual {v3}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v10

    .line 100
    :cond_8
    if-eqz v12, :cond_9

    .line 101
    invoke-virtual {v12}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v13

    .line 103
    :cond_9
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 105
    invoke-direct/range {p0 .. p1}, Lio/rong/imkit/RongNotificationManager;->isMentionedMessage(Lio/rong/imlib/model/Message;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 106
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MentionedInfo;->getMentionedContent()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 107
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    sget v16, Lio/rong/imkit/R$string;->rc_message_content_mentioned:I

    invoke-virtual/range {v15 .. v16}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, notificationContent:Ljava/lang/String;
    :goto_1
    new-instance v7, Lio/rong/push/notification/PushNotificationMessage;

    invoke-direct {v7}, Lio/rong/push/notification/PushNotificationMessage;-><init>()V

    .line 115
    .restart local v7       #pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    invoke-virtual {v7, v5}, Lio/rong/push/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v14

    invoke-static {v14}, Lio/rong/push/RongPushClient$ConversationType;->setValue(I)Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setConversationType(Lio/rong/push/RongPushClient$ConversationType;)V

    .line 117
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v7, v10}, Lio/rong/push/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setObjectName(Ljava/lang/String;)V

    .line 120
    const-string v14, "false"

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setPushFlag(Ljava/lang/String;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-static {v14, v7}, Lio/rong/push/RongPushClient;->sendNotification(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)V

    goto/16 :goto_0

    .line 109
    .end local v5           #notificationContent:Ljava/lang/String;
    .end local v7           #pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MentionedInfo;->getMentionedContent()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #notificationContent:Ljava/lang/String;
    goto :goto_1

    .line 112
    .end local v5           #notificationContent:Ljava/lang/String;
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #notificationContent:Ljava/lang/String;
    goto :goto_1

    .line 123
    .end local v5           #notificationContent:Ljava/lang/String;
    :cond_c
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 124
    if-eqz v9, :cond_d

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_d
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 129
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v8

    .line 130
    .local v8, senderKey:Lio/rong/imkit/model/ConversationKey;
    if-eqz v8, :cond_e

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 133
    :cond_e
    const-string v14, "RongNotificationManager"

    const-string v15, "onReceiveMessageFromApp senderKey is null"

    invoke-static {v14, v15}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    .end local v3           #groupInfo:Lio/rong/imlib/model/Group;
    .end local v8           #senderKey:Lio/rong/imkit/model/ConversationKey;
    .end local v12           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_f
    sget-object v14, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v11, v14}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 138
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getDiscussionInfo(Ljava/lang/String;)Lio/rong/imlib/model/Discussion;

    move-result-object v2

    .line 139
    .local v2, discussionInfo:Lio/rong/imlib/model/Discussion;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v12

    .line 141
    .restart local v12       #userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v2, :cond_10

    .line 142
    invoke-virtual {v2}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v10

    .line 144
    :cond_10
    if-eqz v12, :cond_11

    .line 145
    invoke-virtual {v12}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v13

    .line 147
    :cond_11
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_14

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_14

    .line 149
    invoke-direct/range {p0 .. p1}, Lio/rong/imkit/RongNotificationManager;->isMentionedMessage(Lio/rong/imlib/model/Message;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 150
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MentionedInfo;->getMentionedContent()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 151
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    sget v16, Lio/rong/imkit/R$string;->rc_message_content_mentioned:I

    invoke-virtual/range {v15 .. v16}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .restart local v5       #notificationContent:Ljava/lang/String;
    :goto_2
    new-instance v7, Lio/rong/push/notification/PushNotificationMessage;

    invoke-direct {v7}, Lio/rong/push/notification/PushNotificationMessage;-><init>()V

    .line 159
    .restart local v7       #pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    invoke-virtual {v7, v5}, Lio/rong/push/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v14

    invoke-static {v14}, Lio/rong/push/RongPushClient$ConversationType;->setValue(I)Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setConversationType(Lio/rong/push/RongPushClient$ConversationType;)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v7, v10}, Lio/rong/push/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setObjectName(Ljava/lang/String;)V

    .line 164
    const-string v14, "false"

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setPushFlag(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-static {v14, v7}, Lio/rong/push/RongPushClient;->sendNotification(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)V

    goto/16 :goto_0

    .line 153
    .end local v5           #notificationContent:Ljava/lang/String;
    .end local v7           #pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/MentionedInfo;->getMentionedContent()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #notificationContent:Ljava/lang/String;
    goto :goto_2

    .line 156
    .end local v5           #notificationContent:Ljava/lang/String;
    :cond_13
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #notificationContent:Ljava/lang/String;
    goto :goto_2

    .line 167
    .end local v5           #notificationContent:Ljava/lang/String;
    :cond_14
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 168
    if-eqz v9, :cond_15

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_15
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 173
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v8

    .line 174
    .restart local v8       #senderKey:Lio/rong/imkit/model/ConversationKey;
    if-eqz v8, :cond_16

    .line 175
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 177
    :cond_16
    const-string v14, "RongNotificationManager"

    const-string v15, "onReceiveMessageFromApp senderKey is null"

    invoke-static {v14, v15}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 181
    .end local v2           #discussionInfo:Lio/rong/imlib/model/Discussion;
    .end local v8           #senderKey:Lio/rong/imkit/model/ConversationKey;
    .end local v12           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_17
    invoke-virtual {v11}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v15}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    invoke-virtual {v11}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lio/rong/imlib/model/Conversation$PublicServiceType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$PublicServiceType;

    invoke-virtual {v15}, Lio/rong/imlib/model/Conversation$PublicServiceType;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 183
    :cond_18
    if-eqz v9, :cond_19

    .line 184
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v14

    invoke-virtual {v9}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lio/rong/imkit/RongContext;->getPublicServiceInfoFromCache(Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v4

    .line 185
    .local v4, info:Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v4, :cond_19

    .line 186
    invoke-virtual {v4}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v10

    .line 189
    .end local v4           #info:Lio/rong/imlib/model/PublicServiceProfile;
    :cond_19
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1a

    .line 190
    new-instance v7, Lio/rong/push/notification/PushNotificationMessage;

    invoke-direct {v7}, Lio/rong/push/notification/PushNotificationMessage;-><init>()V

    .line 191
    .restart local v7       #pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setPushContent(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v14

    invoke-static {v14}, Lio/rong/push/RongPushClient$ConversationType;->setValue(I)Lio/rong/push/RongPushClient$ConversationType;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setConversationType(Lio/rong/push/RongPushClient$ConversationType;)V

    .line 193
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setTargetId(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v7, v10}, Lio/rong/push/notification/PushNotificationMessage;->setTargetUserName(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setObjectName(Ljava/lang/String;)V

    .line 196
    const-string v14, "false"

    invoke-virtual {v7, v14}, Lio/rong/push/notification/PushNotificationMessage;->setPushFlag(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->mContext:Lio/rong/imkit/RongContext;

    invoke-static {v14, v7}, Lio/rong/push/RongPushClient;->sendNotification(Landroid/content/Context;Lio/rong/push/notification/PushNotificationMessage;)V

    goto/16 :goto_0

    .line 199
    .end local v7           #pushMsg:Lio/rong/push/notification/PushNotificationMessage;
    :cond_1a
    if-eqz v9, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lio/rong/imkit/RongNotificationManager;->messageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Lio/rong/imkit/model/ConversationKey;->getKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
