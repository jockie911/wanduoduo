.class public Lio/rong/imlib/TypingMessage/TypingMessageManager;
.super Ljava/lang/Object;
.source "TypingMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/TypingMessage/TypingMessageManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static DISAPPEAR_INTERVAL:I = 0x0

.field private static final SEPARATOR:Ljava/lang/String; = ";;;"

.field private static final TAG:Ljava/lang/String; = "TypingMessageManager"


# instance fields
.field private isShowMessageTyping:Z

.field private mHandler:Landroid/os/Handler;

.field private mSendingConversation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTypingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lio/rong/imlib/TypingMessage/TypingStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private sTypingStatusListener:Lio/rong/imlib/RongIMClient$TypingStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x1770

    sput v0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->DISAPPEAR_INTERVAL:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->isShowMessageTyping:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mSendingConversation:Ljava/util/HashMap;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/TypingMessage/TypingMessageManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mSendingConversation:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 19
    sget v0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->DISAPPEAR_INTERVAL:I

    return v0
.end method

.method static synthetic access$300(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Lio/rong/imlib/RongIMClient$TypingStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingStatusListener:Lio/rong/imlib/RongIMClient$TypingStatusListener;

    return-object v0
.end method

.method public static getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lio/rong/imlib/TypingMessage/TypingMessageManager$SingletonHolder;->sInstance:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    return-object v0
.end method

.method private onReceiveOtherMessage(Lio/rong/imlib/model/Message;)V
    .locals 9
    .parameter "message"

    .prologue
    .line 255
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 256
    .local v0, content:Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lio/rong/imlib/MessageTag;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lio/rong/imlib/MessageTag;

    .line 257
    .local v4, tag:Lio/rong/imlib/MessageTag;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 258
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    .line 259
    .local v1, conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, targetId:Ljava/lang/String;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, userId:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";;;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, key:Ljava/lang/String;
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 264
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    .line 266
    .local v3, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lio/rong/imlib/TypingMessage/TypingStatus;>;"
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 267
    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingStatusListener:Lio/rong/imlib/RongIMClient$TypingStatusListener;

    if-eqz v7, :cond_0

    .line 269
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingStatusListener:Lio/rong/imlib/RongIMClient$TypingStatusListener;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v7, v1, v5, v8}, Lio/rong/imlib/RongIMClient$TypingStatusListener;->onTypingStatusChanged(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/Collection;)V

    .line 271
    :cond_0
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 272
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v1           #conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lio/rong/imlib/TypingMessage/TypingStatus;>;"
    .end local v5           #targetId:Ljava/lang/String;
    .end local v6           #userId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private onReceiveTypingMessage(Lio/rong/imlib/model/Message;)V
    .locals 14
    .parameter "message"

    .prologue
    .line 197
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    .line 201
    .local v4, conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, targetId:Ljava/lang/String;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v9

    check-cast v9, Lio/rong/imlib/TypingMessage/TypingStatusMessage;

    .line 203
    .local v9, typingStatusMessage:Lio/rong/imlib/TypingMessage/TypingStatusMessage;
    invoke-virtual {v9}, Lio/rong/imlib/TypingMessage/TypingStatusMessage;->getTypingContentType()Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, typingContentType:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 206
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, userId:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";;;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, key:Ljava/lang/String;
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedHashMap;

    .line 211
    .local v6, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lio/rong/imlib/TypingMessage/TypingStatus;>;"
    invoke-virtual {v6, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    new-instance v8, Lio/rong/imlib/TypingMessage/TypingStatus;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v0

    invoke-direct {v8, v3, v7, v0, v1}, Lio/rong/imlib/TypingMessage/TypingStatus;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 214
    .local v8, typingStatus:Lio/rong/imlib/TypingMessage/TypingStatus;
    invoke-virtual {v6, v3, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingStatusListener:Lio/rong/imlib/RongIMClient$TypingStatusListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingStatusListener:Lio/rong/imlib/RongIMClient$TypingStatusListener;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v4, v5, v1}, Lio/rong/imlib/RongIMClient$TypingStatusListener;->onTypingStatusChanged(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    .line 220
    .end local v6           #map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lio/rong/imlib/TypingMessage/TypingStatus;>;"
    .end local v8           #typingStatus:Lio/rong/imlib/TypingMessage/TypingStatus;
    :cond_2
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 221
    .restart local v6       #map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lio/rong/imlib/TypingMessage/TypingStatus;>;"
    new-instance v8, Lio/rong/imlib/TypingMessage/TypingStatus;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v0

    invoke-direct {v8, v3, v7, v0, v1}, Lio/rong/imlib/TypingMessage/TypingStatus;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 223
    .restart local v8       #typingStatus:Lio/rong/imlib/TypingMessage/TypingStatus;
    invoke-virtual {v6, v3, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingStatusListener:Lio/rong/imlib/RongIMClient$TypingStatusListener;

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingStatusListener:Lio/rong/imlib/RongIMClient$TypingStatusListener;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v4, v5, v1}, Lio/rong/imlib/RongIMClient$TypingStatusListener;->onTypingStatusChanged(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/Collection;)V

    .line 227
    :cond_3
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v10, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/rong/imlib/TypingMessage/TypingMessageManager$2;-><init>(Lio/rong/imlib/TypingMessage/TypingMessageManager;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    sget v1, Lio/rong/imlib/TypingMessage/TypingMessageManager;->DISAPPEAR_INTERVAL:I

    int-to-long v12, v1

    invoke-virtual {v10, v0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getTypingUserListFromConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
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
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";;;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mTypingMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 77
    .local v1, resources:Landroid/content/res/Resources;
    const-string v2, "rc_typing_status"

    const-string v3, "bool"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->isShowMessageTyping:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1           #resources:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "TypingMessageManager"

    const-string v3, "getTypingStatus rc_typing_status not configure in rc_configuration.xml"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public isShowMessageTyping()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->isShowMessageTyping:Z

    return v0
.end method

.method public onReceiveMessage(Lio/rong/imlib/model/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 181
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lio/rong/imlib/TypingMessage/TypingStatusMessage;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->isShowMessageTyping:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-direct {v0, p1}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->onReceiveTypingMessage(Lio/rong/imlib/model/Message;)V

    .line 183
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    .line 185
    :cond_0
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-direct {v0, p1}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->onReceiveOtherMessage(Lio/rong/imlib/model/Message;)V

    .line 186
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendTypingMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "typingContentType"

    .prologue
    const/4 v4, 0x0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";;;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, key:Ljava/lang/String;
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1, v0}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mSendingConversation:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    new-instance v3, Lio/rong/imlib/TypingMessage/TypingStatusMessage;

    invoke-direct {v3, p3, v4}, Lio/rong/imlib/TypingMessage/TypingStatusMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .local v3, typingStatusMessage:Lio/rong/imlib/TypingMessage/TypingStatusMessage;
    iget-object v0, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mSendingConversation:Ljava/util/HashMap;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    new-instance v7, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;

    invoke-direct {v7, p0, v8}, Lio/rong/imlib/TypingMessage/TypingMessageManager$1;-><init>(Lio/rong/imlib/TypingMessage/TypingMessageManager;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0

    .line 139
    .end local v3           #typingStatusMessage:Lio/rong/imlib/TypingMessage/TypingStatusMessage;
    :cond_1
    const-string v0, "TypingMessageManager"

    const-string v1, "sendTypingStatus typing message in this conversation is sending"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTypingEnd(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";;;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, key:Ljava/lang/String;
    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1, v1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mSendingConversation:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->mSendingConversation:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setTypingMessageStatusListener(Lio/rong/imlib/RongIMClient$TypingStatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 169
    iput-object p1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager;->sTypingStatusListener:Lio/rong/imlib/RongIMClient$TypingStatusListener;

    .line 170
    return-void
.end method
