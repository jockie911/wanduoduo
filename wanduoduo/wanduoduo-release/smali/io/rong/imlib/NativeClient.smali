.class public final Lio/rong/imlib/NativeClient;
.super Ljava/lang/Object;
.source "NativeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/NativeClient$RealTimeLocationListener;,
        Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;,
        Lio/rong/imlib/NativeClient$OnReceiveMessageListener;,
        Lio/rong/imlib/NativeClient$GetNotificationQuietHoursCallback;,
        Lio/rong/imlib/NativeClient$IDownloadMediaMessageCallback;,
        Lio/rong/imlib/NativeClient$ISendMediaMessageCallback;,
        Lio/rong/imlib/NativeClient$IResultProgressCallback;,
        Lio/rong/imlib/NativeClient$IResultSendMessageCallback;,
        Lio/rong/imlib/NativeClient$ISendMessageCallback;,
        Lio/rong/imlib/NativeClient$IResultCallback;,
        Lio/rong/imlib/NativeClient$OperationCallback;,
        Lio/rong/imlib/NativeClient$ICodeListener;,
        Lio/rong/imlib/NativeClient$ICodeCallback;,
        Lio/rong/imlib/NativeClient$BlacklistStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeClient"

.field private static client:Lio/rong/imlib/NativeClient;

.field private static constructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lio/rong/imlib/model/MessageContent;",
            ">;>;"
        }
    .end annotation
.end field

.field private static messageHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lio/rong/message/MessageHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static nativeObj:Lio/rong/imlib/NativeObject;


# instance fields
.field private appKey:Ljava/lang/String;

.field private currentUserId:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFileServer:Ljava/lang/String;

.field private mNaviServer:Ljava/lang/String;

.field private volatile mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

.field private mReceiveMessageListener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

.field private mReceiveMessageListenerEx:Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;

.field timer:Ljava/util/Timer;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lio/rong/imlib/NativeClient;->client:Lio/rong/imlib/NativeClient;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/rong/imlib/NativeClient;->constructorMap:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method private varargs ShortMD5([Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "args"

    .prologue
    .line 3183
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3185
    .local v2, builder:Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 3186
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3185
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3189
    .end local v0           #arg:Ljava/lang/String;
    :cond_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 3190
    .local v6, mdInst:Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 3191
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 3192
    .local v7, mds:[B
    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    .line 3193
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    .line 3194
    .local v8, result:Ljava/lang/String;
    const-string v9, "="

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "+"

    const-string v11, "-"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    const-string v11, "_"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 3199
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #mdInst:Ljava/security/MessageDigest;
    .end local v7           #mds:[B
    .end local v8           #result:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 3196
    :catch_0
    move-exception v3

    .line 3197
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 3199
    const-string v8, ""

    goto :goto_1
.end method

.method static synthetic access$000(Lio/rong/imlib/NativeClient;Ljava/lang/String;Ljava/lang/String;ILio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lio/rong/imlib/NativeClient;->internalConnect(Ljava/lang/String;Ljava/lang/String;ILio/rong/imlib/NativeClient$IResultCallback;)V

    return-void
.end method

.method static synthetic access$100(Lio/rong/imlib/NativeClient;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lio/rong/imlib/NativeClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lio/rong/imlib/NativeClient;->startCRHeartBeatIfNeed()V

    return-void
.end method

.method static synthetic access$1100(Lio/rong/imlib/NativeClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mNaviServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lio/rong/imlib/NativeClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lio/rong/imlib/NativeClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/imlib/NativeClient;Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lio/rong/imlib/NativeClient;Lio/rong/imlib/model/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lio/rong/imlib/NativeClient;->isMentionedMessage(Lio/rong/imlib/model/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lio/rong/imlib/NativeClient;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mFileServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lio/rong/imlib/NativeClient;)Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mReceiveMessageListenerEx:Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;

    return-object v0
.end method

.method static synthetic access$800()Lio/rong/imlib/NativeClient;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lio/rong/imlib/NativeClient;->client:Lio/rong/imlib/NativeClient;

    return-object v0
.end method

.method static synthetic access$900(Lio/rong/imlib/NativeClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lio/rong/imlib/NativeClient;->stopCRHeartBeat()V

    return-void
.end method

.method public static getInstance()Lio/rong/imlib/NativeClient;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lio/rong/imlib/NativeClient;->client:Lio/rong/imlib/NativeClient;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lio/rong/imlib/NativeClient;

    invoke-direct {v0}, Lio/rong/imlib/NativeClient;-><init>()V

    sput-object v0, Lio/rong/imlib/NativeClient;->client:Lio/rong/imlib/NativeClient;

    .line 120
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->client:Lio/rong/imlib/NativeClient;

    return-object v0
.end method

.method private internalConnect(Ljava/lang/String;Ljava/lang/String;ILio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 6
    .parameter "token"
    .parameter "ip"
    .parameter "port"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p4, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/String;>;"
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient;->getInstance()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/rong/imlib/navigation/NavigationClient;->isMPOpened(Landroid/content/Context;)Z

    move-result v5

    .line 243
    .local v5, mpOpened:Z
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v4, Lio/rong/imlib/NativeClient$2;

    invoke-direct {v4, p0, p4, p1}, Lio/rong/imlib/NativeClient$2;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->Connect(Ljava/lang/String;Ljava/lang/String;ILio/rong/imlib/NativeObject$ConnectAckCallback;Z)V

    .line 277
    return-void
.end method

.method private isMentionedMessage(Lio/rong/imlib/model/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 3256
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    instance-of v1, v1, Lio/rong/message/TextMessage;

    if-eqz v1, :cond_0

    .line 3257
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/TextMessage;

    .line 3258
    .local v0, textMessage:Lio/rong/message/TextMessage;
    invoke-virtual {v0}, Lio/rong/message/TextMessage;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3259
    const/4 v1, 0x1

    .line 3261
    .end local v0           #textMessage:Lio/rong/message/TextMessage;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static registerMessageType(Ljava/lang/Class;)V
    .locals 10
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
    .line 151
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v6, :cond_0

    .line 152
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 154
    :cond_0
    if-nez p0, :cond_1

    .line 155
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "MessageContent \u4e3a\u7a7a\uff01"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 157
    :cond_1
    const-class v6, Lio/rong/imlib/MessageTag;

    invoke-virtual {p0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lio/rong/imlib/MessageTag;

    .line 159
    .local v5, tag:Lio/rong/imlib/MessageTag;
    if-eqz v5, :cond_2

    .line 160
    invoke-interface {v5}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, objName:Ljava/lang/String;
    invoke-interface {v5}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v2

    .line 164
    .local v2, flag:I
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [B

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 165
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent;>;"
    invoke-interface {v5}, Lio/rong/imlib/MessageTag;->messageHandler()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 166
    .local v3, handlerConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    sget-object v6, Lio/rong/imlib/NativeClient;->constructorMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v6, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v6, v4, v2}, Lio/rong/imlib/NativeObject;->RegisterMessageType(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    return-void

    .line 169
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent;>;"
    .end local v3           #handlerConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    :catch_0
    move-exception v1

    .line 170
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v6, Lio/rong/imlib/AnnotationNotFoundException;

    invoke-direct {v6}, Lio/rong/imlib/AnnotationNotFoundException;-><init>()V

    throw v6

    .line 174
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    .end local v2           #flag:I
    .end local v4           #objName:Ljava/lang/String;
    :cond_2
    new-instance v6, Lio/rong/imlib/AnnotationNotFoundException;

    invoke-direct {v6}, Lio/rong/imlib/AnnotationNotFoundException;-><init>()V

    throw v6
.end method

.method private renderConversationFromJson(Lorg/json/JSONObject;)Lio/rong/imlib/model/Conversation;
    .locals 6
    .parameter "jsonObj"

    .prologue
    const/4 v3, 0x1

    .line 406
    new-instance v1, Lio/rong/imlib/model/Conversation;

    invoke-direct {v1}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 407
    .local v1, conversation:Lio/rong/imlib/model/Conversation;
    const-string v4, "target_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 408
    const-string v4, "last_message_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lio/rong/imlib/model/Conversation;->setLatestMessageId(I)V

    .line 409
    const-string v4, "conversation_title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/imlib/model/Conversation;->setConversationTitle(Ljava/lang/String;)V

    .line 410
    const-string v4, "unread_count"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lio/rong/imlib/model/Conversation;->setUnreadMessageCount(I)V

    .line 411
    const-string v4, "conversation_category"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 412
    const-string v4, "is_top"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_1

    :goto_0
    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setTop(Z)V

    .line 413
    const-string v3, "object_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setObjectName(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getLatestMessageId()I

    move-result v3

    if-lez v3, :cond_0

    .line 416
    new-instance v2, Lio/rong/imlib/model/Message;

    invoke-direct {v2}, Lio/rong/imlib/model/Message;-><init>()V

    .line 417
    .local v2, message:Lio/rong/imlib/model/Message;
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getLatestMessageId()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 418
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getObjectName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 420
    .local v0, content:Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v1, v0}, Lio/rong/imlib/model/Conversation;->setLatestMessage(Lio/rong/imlib/model/MessageContent;)V

    .line 422
    .end local v0           #content:Lio/rong/imlib/model/MessageContent;
    .end local v2           #message:Lio/rong/imlib/model/Message;
    :cond_0
    new-instance v3, Lio/rong/imlib/model/Message$ReceivedStatus;

    const-string v4, "read_status"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lio/rong/imlib/model/Message$ReceivedStatus;-><init>(I)V

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 423
    const-string v3, "receive_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lio/rong/imlib/model/Conversation;->setReceivedTime(J)V

    .line 424
    const-string v3, "send_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lio/rong/imlib/model/Conversation;->setSentTime(J)V

    .line 425
    const-string v3, "send_status"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lio/rong/imlib/model/Message$SentStatus;->setValue(I)Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 426
    const-string v3, "sender_user_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setSenderUserId(Ljava/lang/String;)V

    .line 427
    const-string v3, "sender_user_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setSenderUserName(Ljava/lang/String;)V

    .line 428
    const-string v3, "draft_message"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setDraft(Ljava/lang/String;)V

    .line 429
    const-string v3, "block_push"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->DO_NOT_DISTURB:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    :goto_1
    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Conversation;->setNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    .line 432
    return-object v1

    .line 412
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 429
    :cond_2
    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->NOTIFY:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    goto :goto_1
.end method

.method private renderConversationFromNative(Lio/rong/imlib/NativeObject$Conversation;)Lio/rong/imlib/model/Conversation;
    .locals 4
    .parameter "conversation"

    .prologue
    .line 378
    new-instance v1, Lio/rong/imlib/model/Conversation;

    invoke-direct {v1}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 379
    .local v1, result:Lio/rong/imlib/model/Conversation;
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setLatestMessageId(I)V

    .line 381
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getConversationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setConversationTitle(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getUnreadMessageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setUnreadMessageCount(I)V

    .line 383
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getConversationType()I

    move-result v2

    invoke-static {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 384
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->isTop()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setTop(Z)V

    .line 385
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setObjectName(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getMessageId()I

    move-result v2

    if-lez v2, :cond_0

    .line 387
    new-instance v0, Lio/rong/imlib/model/Message;

    invoke-direct {v0}, Lio/rong/imlib/model/Message;-><init>()V

    .line 388
    .local v0, message:Lio/rong/imlib/model/Message;
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getMessageId()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 389
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getContent()[B

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setLatestMessage(Lio/rong/imlib/model/MessageContent;)V

    .line 392
    .end local v0           #message:Lio/rong/imlib/model/Message;
    :cond_0
    new-instance v2, Lio/rong/imlib/model/Message$ReceivedStatus;

    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getReadStatus()I

    move-result v3

    invoke-direct {v2, v3}, Lio/rong/imlib/model/Message$ReceivedStatus;-><init>(I)V

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 393
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getReceivedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/rong/imlib/model/Conversation;->setReceivedTime(J)V

    .line 394
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getSentTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/rong/imlib/model/Conversation;->setSentTime(J)V

    .line 395
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setSenderUserId(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getSentStatus()I

    move-result v2

    invoke-static {v2}, Lio/rong/imlib/model/Message$SentStatus;->setValue(I)Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 397
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getSenderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setSenderUserName(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getDraft()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setDraft(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getPortraitUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setPortraitUrl(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->isBlockPush()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->DO_NOT_DISTURB:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    :goto_0
    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    .line 401
    invoke-virtual {p1}, Lio/rong/imlib/NativeObject$Conversation;->getMentionCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Conversation;->setMentionedCount(I)V

    .line 402
    return-object v1

    .line 400
    :cond_1
    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->NOTIFY:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    goto :goto_0
.end method

.method private renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;
    .locals 9
    .parameter "objectName"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 90
    sget-object v6, Lio/rong/imlib/NativeClient;->constructorMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 91
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/imlib/model/MessageContent;>;"
    const/4 v5, 0x0

    .line 93
    .local v5, result:Lio/rong/imlib/model/MessageContent;
    if-nez v1, :cond_0

    .line 94
    new-instance v6, Lio/rong/imlib/model/UnknownMessage;

    invoke-direct {v6, p2}, Lio/rong/imlib/model/UnknownMessage;-><init>([B)V

    .line 110
    :goto_0
    return-object v6

    .line 98
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lio/rong/imlib/model/MessageContent;

    move-object v5, v0

    .line 99
    sget-object v6, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Constructor;

    .line 100
    .local v4, handlerConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    if-eqz v4, :cond_1

    .line 101
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/message/MessageHandler;

    .line 102
    .local v3, handler:Lio/rong/message/MessageHandler;
    invoke-virtual {v3, p3, v5}, Lio/rong/message/MessageHandler;->decodeMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/model/MessageContent;)V

    .end local v3           #handler:Lio/rong/message/MessageHandler;
    .end local v4           #handlerConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    :goto_1
    move-object v6, v5

    .line 110
    goto :goto_0

    .line 104
    .restart local v4       #handlerConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    :cond_1
    const-string v6, "NativeClient"

    const-string v7, "renderMessageContent \u8be5\u6d88\u606f\u672a\u6ce8\u518c\uff0c\u8bf7\u8c03\u7528registerMessageType\u65b9\u6cd5\u6ce8\u518c\u3002"

    invoke-static {v6, v7}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 106
    .end local v4           #handlerConstructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    :catch_0
    move-exception v2

    .line 107
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static setConnectionStatusListener(Lio/rong/imlib/NativeClient$ICodeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2250
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$28;

    invoke-direct {v1, p0}, Lio/rong/imlib/NativeClient$28;-><init>(Lio/rong/imlib/NativeClient$ICodeListener;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->SetExceptionListener(Lio/rong/imlib/NativeObject$ExceptionListener;)V

    .line 2261
    return-void
.end method

.method private static setEnvInfo(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 2847
    const-string v4, ""

    .line 2848
    .local v4, network:Ljava/lang/String;
    const-string v5, ""

    .line 2851
    .local v5, MCCMNC:Ljava/lang/String;
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 2854
    .local v6, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2855
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 2858
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2859
    .local v8, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v8, :cond_1

    .line 2860
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2866
    .end local v6           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v8           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2867
    .local v1, manufacturer:Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2869
    .local v2, model:Ljava/lang/String;
    if-nez v1, :cond_2

    const-string v1, ""

    .line 2870
    :cond_2
    if-nez v2, :cond_3

    const-string v2, ""

    .line 2873
    :cond_3
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->SetDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    return-void

    .line 2862
    .end local v1           #manufacturer:Ljava/lang/String;
    .end local v2           #model:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 2863
    .local v7, e:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private startCRHeartBeatIfNeed()V
    .locals 6

    .prologue
    .line 2369
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2370
    const-string v0, "NativeClient"

    const-string v2, "startCRHeartBeat"

    invoke-static {v0, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/NativeClient;->timer:Ljava/util/Timer;

    .line 2372
    new-instance v1, Lio/rong/imlib/NativeClient$32;

    invoke-direct {v1, p0}, Lio/rong/imlib/NativeClient$32;-><init>(Lio/rong/imlib/NativeClient;)V

    .line 2379
    .local v1, task:Ljava/util/TimerTask;
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3a98

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 2381
    .end local v1           #task:Ljava/util/TimerTask;
    :cond_0
    return-void
.end method

.method private stopCRHeartBeat()V
    .locals 2

    .prologue
    .line 2384
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2385
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2386
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imlib/NativeClient;->timer:Ljava/util/Timer;

    .line 2387
    const-string v0, "NativeClient"

    const-string v1, "stopCRHeartBeat"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(ILjava/lang/String;Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V
    .locals 2
    .parameter "type"
    .parameter "targetId"
    .parameter "listener"

    .prologue
    .line 3084
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3085
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3087
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 3088
    const-string v0, "NativeClient"

    const-string v1, "addListener RealTimeLocationManager Not setup!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    :goto_0
    return-void

    .line 3091
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lio/rong/imlib/location/RealTimeLocationManager;->addListener(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V

    goto :goto_0
.end method

.method public addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 3
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
            "Lio/rong/imlib/NativeClient$OperationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1168
    .local p2, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v1, :cond_0

    .line 1169
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1171
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1172
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "discussionId \u6216 userIdList \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1174
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 1175
    .local v0, ids:[Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1177
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v2, Lio/rong/imlib/NativeClient$10;

    invoke-direct {v2, p0, p3}, Lio/rong/imlib/NativeClient$10;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v1, p1, v0, v2}, Lio/rong/imlib/NativeObject;->InviteMemberToDiscussion(Ljava/lang/String;[Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1191
    return-void
.end method

.method public addToBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .parameter "userId"
    .parameter "callback"

    .prologue
    .line 2539
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2540
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2542
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 2543
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2545
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$35;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/NativeClient$35;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->AddToBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2556
    return-void
.end method

.method public varargs clearConversations([Lio/rong/imlib/model/Conversation$ConversationType;)Z
    .locals 8
    .parameter "conversationTypes"

    .prologue
    .line 2459
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v6, :cond_0

    .line 2460
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2462
    :cond_0
    if-eqz p1, :cond_1

    array-length v6, p1

    if-nez v6, :cond_2

    .line 2463
    :cond_1
    new-instance v6, Ljava/lang/IllegalAccessException;

    const-string v7, "ConversationTypes \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v6, v7}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 2466
    :cond_2
    array-length v6, p1

    new-array v2, v6, [I

    .line 2468
    .local v2, conversationTypeValues:[I
    const/4 v3, 0x0

    .line 2469
    .local v3, i:I
    move-object v0, p1

    .local v0, arr$:[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 2470
    .local v1, conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v6

    aput v6, v2, v3

    .line 2471
    add-int/lit8 v3, v3, 0x1

    .line 2469
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2474
    .end local v1           #conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_3
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v6, v2}, Lio/rong/imlib/NativeObject;->ClearConversations([I)Z

    move-result v6

    return v6
.end method

.method public clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 756
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 757
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lio/rong/imlib/NativeObject;->ClearMessages(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 773
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/NativeObject;->ClearUnread(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 878
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v1, :cond_0

    .line 879
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 881
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 882
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 884
    :cond_2
    invoke-virtual {p0, p1, p2}, Lio/rong/imlib/NativeClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, draft:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 887
    const-string v1, ""

    invoke-virtual {p0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 889
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public clearUnreadByReceipt(ILjava/lang/String;J)Z
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "timestamp"

    .prologue
    .line 3141
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3144
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0, p2, p1, p3, p4}, Lio/rong/imlib/NativeObject;->ClearUnreadByReceipt(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method public connect(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 3
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    .local p2, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/String;>;"
    const-string v0, "NativeClient"

    const-string v1, "connect"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iput-object p1, p0, Lio/rong/imlib/NativeClient;->token:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/rong/imlib/NativeClient;->setEnvInfo(Landroid/content/Context;)V

    .line 189
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/rong/common/RFLog;->uploadIfNeed(Landroid/content/Context;)V

    .line 191
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient;->getInstance()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v0

    new-instance v1, Lio/rong/imlib/NativeClient$1;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/NativeClient$1;-><init>(Lio/rong/imlib/NativeClient;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/navigation/NavigationClient;->addObserver(Lio/rong/imlib/navigation/NavigationObserver;)V

    .line 238
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient;->getInstance()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lio/rong/imlib/NativeClient;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lio/rong/imlib/navigation/NavigationClient;->getCMPServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 3
    .parameter "name"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 986
    .local p2, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/String;>;"
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v1, :cond_0

    .line 987
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 989
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 990
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name \u6216 userIdList \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 992
    :cond_2
    iget-object v1, p0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 993
    iget-object v1, p0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 996
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 997
    .local v0, ids:[Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 999
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v2, Lio/rong/imlib/NativeClient$7;

    invoke-direct {v2, p0, p3}, Lio/rong/imlib/NativeClient$7;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v1, p1, v0, v2}, Lio/rong/imlib/NativeObject;->CreateInviteDiscussion(Ljava/lang/String;[Ljava/lang/String;Lio/rong/imlib/NativeObject$CreateDiscussionCallback;)V

    .line 1016
    return-void
.end method

.method public deleteMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 745
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lio/rong/imlib/NativeObject;->ClearMessages(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public deleteMessages([I)Z
    .locals 2
    .parameter "messageIds"

    .prologue
    .line 728
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    .line 732
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MessageIds \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0, p1}, Lio/rong/imlib/NativeObject;->DeleteMessages([I)Z

    move-result v0

    return v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/rong/imlib/NativeClient;->disconnect(Z)V

    .line 294
    return-void
.end method

.method public disconnect(Z)V
    .locals 3
    .parameter "isReceivePush"

    .prologue
    .line 302
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    const-string v0, "NativeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect isReceivePush : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Lio/rong/imlib/NativeObject;->Disconnect(I)V

    .line 308
    return-void

    .line 307
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public downloadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILjava/lang/String;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V
    .locals 7
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "type"
    .parameter "imageUrl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultProgressCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1850
    .local p5, callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;,"Lio/rong/imlib/NativeClient$IResultProgressCallback<Ljava/lang/String;>;"
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v2, :cond_0

    .line 1851
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1853
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1854
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "conversationType\uff0cimageUrl \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1856
    :cond_2
    iget-object v2, p0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    const-string v3, "download"

    invoke-static {v2, v3}, Lio/rong/common/FileUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1857
    .local v1, path:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-direct {p0, v2}, Lio/rong/imlib/NativeClient;->ShortMD5([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imlib/filetransfer/FtUtilities;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1858
    .local v0, fileName:Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/filetransfer/FileTransferClient;->getInstance()Lio/rong/imlib/filetransfer/FileTransferClient;

    move-result-object v2

    const/4 v3, -0x1

    new-instance v4, Lio/rong/imlib/filetransfer/RequestOption;

    invoke-static {p3}, Lio/rong/imlib/filetransfer/FtConst$MimeType;->setValue(I)Lio/rong/imlib/filetransfer/FtConst$MimeType;

    move-result-object v5

    new-instance v6, Lio/rong/imlib/NativeClient$19;

    invoke-direct {v6, p0, p5}, Lio/rong/imlib/NativeClient$19;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V

    invoke-direct {v4, v0, v5, v6}, Lio/rong/imlib/filetransfer/RequestOption;-><init>(Ljava/lang/String;Lio/rong/imlib/filetransfer/FtConst$MimeType;Lio/rong/imlib/filetransfer/RequestCallBack;)V

    invoke-virtual {v2, v3, p4, v4}, Lio/rong/imlib/filetransfer/FileTransferClient;->download(ILjava/lang/String;Lio/rong/imlib/filetransfer/RequestOption;)V

    .line 1883
    return-void
.end method

.method public downloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/NativeClient$IDownloadMediaMessageCallback;)V
    .locals 10
    .parameter "message"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "Lio/rong/imlib/NativeClient$IDownloadMediaMessageCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1894
    .local p2, callback:Lio/rong/imlib/NativeClient$IDownloadMediaMessageCallback;,"Lio/rong/imlib/NativeClient$IDownloadMediaMessageCallback<Lio/rong/imlib/model/Message;>;"
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v6, :cond_0

    .line 1895
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1897
    :cond_0
    const/4 v2, 0x0

    .line 1898
    .local v2, fileUrl:Ljava/lang/String;
    const-string v3, ""

    .line 1899
    .local v3, name:Ljava/lang/String;
    sget-object v5, Lio/rong/imlib/filetransfer/FtConst$MimeType;->NONE:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    .line 1900
    .local v5, type:Lio/rong/imlib/filetransfer/FtConst$MimeType;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    instance-of v6, v6, Lio/rong/message/ImageMessage;

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    check-cast v6, Lio/rong/message/ImageMessage;

    invoke-virtual {v6}, Lio/rong/message/ImageMessage;->getRemoteUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1901
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    check-cast v6, Lio/rong/message/ImageMessage;

    invoke-virtual {v6}, Lio/rong/message/ImageMessage;->getRemoteUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1902
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-direct {p0, v6}, Lio/rong/imlib/NativeClient;->ShortMD5([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1903
    sget-object v5, Lio/rong/imlib/filetransfer/FtConst$MimeType;->FILE_IMAGE:Lio/rong/imlib/filetransfer/FtConst$MimeType;

    .line 1911
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1912
    const-string v6, "NativeClient"

    const-string v7, "local path of the media file can\'t be empty!"

    invoke-static {v6, v7}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    if-eqz p2, :cond_2

    .line 1914
    sget-object v6, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v6}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v6

    invoke-interface {p2, v6}, Lio/rong/imlib/NativeClient$IDownloadMediaMessageCallback;->onError(I)V

    .line 1949
    :cond_2
    :goto_1
    return-void

    .line 1904
    :cond_3
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    instance-of v6, v6, Lio/rong/message/FileMessage;

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    check-cast v6, Lio/rong/message/FileMessage;

    invoke-virtual {v6}, Lio/rong/message/FileMessage;->getFileUrl()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1905
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    check-cast v6, Lio/rong/message/FileMessage;

    invoke-virtual {v6}, Lio/rong/message/FileMessage;->getFileUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1906
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/FileMessage;

    .line 1907
    .local v0, fileMessage:Lio/rong/message/FileMessage;
    invoke-virtual {v0}, Lio/rong/message/FileMessage;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1908
    invoke-virtual {v0}, Lio/rong/message/FileMessage;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/rong/imlib/filetransfer/FtUtilities;->getMimeType(Ljava/lang/String;)Lio/rong/imlib/filetransfer/FtConst$MimeType;

    move-result-object v5

    goto :goto_0

    .line 1919
    .end local v0           #fileMessage:Lio/rong/message/FileMessage;
    :cond_4
    iget-object v6, p0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lio/rong/common/FileUtils;->getMediaDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1920
    .local v4, path:Ljava/lang/String;
    invoke-static {v4, v3}, Lio/rong/imlib/filetransfer/FtUtilities;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1921
    .local v1, fileName:Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/filetransfer/FileTransferClient;->getInstance()Lio/rong/imlib/filetransfer/FileTransferClient;

    move-result-object v6

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v7

    new-instance v8, Lio/rong/imlib/filetransfer/RequestOption;

    new-instance v9, Lio/rong/imlib/NativeClient$20;

    invoke-direct {v9, p0, p2, p1}, Lio/rong/imlib/NativeClient$20;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IDownloadMediaMessageCallback;Lio/rong/imlib/model/Message;)V

    invoke-direct {v8, v1, v5, v9}, Lio/rong/imlib/filetransfer/RequestOption;-><init>(Ljava/lang/String;Lio/rong/imlib/filetransfer/FtConst$MimeType;Lio/rong/imlib/filetransfer/RequestCallBack;)V

    invoke-virtual {v6, v7, v2, v8}, Lio/rong/imlib/filetransfer/FileTransferClient;->download(ILjava/lang/String;Lio/rong/imlib/filetransfer/RequestOption;)V

    goto :goto_1
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3248
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBlacklist(Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2631
    .local p1, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/String;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2632
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2634
    :cond_0
    if-nez p1, :cond_1

    .line 2635
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2637
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$38;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/NativeClient$38;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->GetBlacklist(Lio/rong/imlib/NativeObject$SetBlacklistListener;)V

    .line 2659
    return-void
.end method

.method public getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 2
    .parameter "userId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Lio/rong/imlib/NativeClient$BlacklistStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2595
    .local p2, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Lio/rong/imlib/NativeClient$BlacklistStatus;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2596
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2598
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 2599
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7528\u6237 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2601
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$37;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/NativeClient$37;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->GetBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/NativeObject$BizAckListener;)V

    .line 2622
    return-void
.end method

.method public getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;
    .locals 4
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 443
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v2, :cond_0

    .line 444
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 446
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 447
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ConversationType \u548c TargetId \u53c2\u6570\u5f02\u5e38"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 449
    :cond_2
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    invoke-virtual {v2, p2, v3}, Lio/rong/imlib/NativeObject;->GetConversationEx(Ljava/lang/String;I)Lio/rong/imlib/NativeObject$Conversation;

    move-result-object v1

    .line 451
    .local v1, conversation:Lio/rong/imlib/NativeObject$Conversation;
    if-nez v1, :cond_3

    .line 452
    const/4 v0, 0x0

    .line 456
    :goto_0
    return-object v0

    .line 454
    :cond_3
    invoke-direct {p0, v1}, Lio/rong/imlib/NativeClient;->renderConversationFromNative(Lio/rong/imlib/NativeObject$Conversation;)Lio/rong/imlib/model/Conversation;

    move-result-object v0

    .line 455
    .local v0, c:Lio/rong/imlib/model/Conversation;
    invoke-virtual {v0, p1}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    goto :goto_0
.end method

.method public getConversationList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    const/4 v1, 0x4

    new-array v0, v1, [I

    const/4 v1, 0x0

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 324
    .local v0, conversationTypes:[I
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v1, :cond_0

    .line 325
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_0
    invoke-virtual {p0, v0}, Lio/rong/imlib/NativeClient;->getConversationList([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConversationList([I)Ljava/util/List;
    .locals 8
    .parameter "conversationTypeValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    const/4 v1, 0x0

    .line 360
    .local v1, conversations:[Lio/rong/imlib/NativeObject$Conversation;
    :try_start_0
    sget-object v7, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v7, p1}, Lio/rong/imlib/NativeObject;->GetConversationListEx([I)[Lio/rong/imlib/NativeObject$Conversation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 364
    :goto_0
    if-nez v1, :cond_1

    .line 365
    const/4 v6, 0x0

    .line 373
    :cond_0
    return-object v6

    .line 361
    :catch_0
    move-exception v2

    .line 362
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 367
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v6, result:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    move-object v0, v1

    .local v0, arr$:[Lio/rong/imlib/NativeObject$Conversation;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v4, v0, v3

    .line 370
    .local v4, item:Lio/rong/imlib/NativeObject$Conversation;
    invoke-direct {p0, v4}, Lio/rong/imlib/NativeClient;->renderConversationFromNative(Lio/rong/imlib/NativeObject$Conversation;)Lio/rong/imlib/model/Conversation;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1960
    .local p3, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/Integer;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1961
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1963
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_2

    .line 1964
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1966
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    new-instance v2, Lio/rong/imlib/NativeClient$21;

    invoke-direct {v2, p0, p3}, Lio/rong/imlib/NativeClient$21;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, p2, v1, v2}, Lio/rong/imlib/NativeObject;->GetBlockPush(Ljava/lang/String;ILio/rong/imlib/NativeObject$BizAckListener;)V

    .line 1982
    return-void
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeltaTime()J
    .locals 2

    .prologue
    .line 2270
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0}, Lio/rong/imlib/NativeObject;->GetDeltaTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3252
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscussion(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 4
    .parameter "discussionId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Lio/rong/imlib/model/Discussion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 900
    .local p2, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Lio/rong/imlib/model/Discussion;>;"
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v2, :cond_0

    .line 901
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 903
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 904
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, " discussionId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 906
    :cond_1
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v2, p1}, Lio/rong/imlib/NativeObject;->GetDiscussionInfoSync(Ljava/lang/String;)Lio/rong/imlib/NativeObject$DiscussionInfo;

    move-result-object v1

    .line 907
    .local v1, discussionInfo:Lio/rong/imlib/NativeObject$DiscussionInfo;
    if-eqz v1, :cond_5

    .line 908
    new-instance v0, Lio/rong/imlib/model/Discussion;

    invoke-direct {v0, v1}, Lio/rong/imlib/model/Discussion;-><init>(Lio/rong/imlib/NativeObject$DiscussionInfo;)V

    .line 909
    .local v0, discussion:Lio/rong/imlib/model/Discussion;
    invoke-virtual {v0}, Lio/rong/imlib/model/Discussion;->getMemberIdList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lio/rong/imlib/model/Discussion;->getMemberIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 910
    :cond_2
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v3, Lio/rong/imlib/NativeClient$4;

    invoke-direct {v3, p0, p2}, Lio/rong/imlib/NativeClient$4;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v2, p1, v3}, Lio/rong/imlib/NativeObject;->GetDiscussionInfo(Ljava/lang/String;Lio/rong/imlib/NativeObject$DiscussionInfoListener;)V

    .line 946
    .end local v0           #discussion:Lio/rong/imlib/model/Discussion;
    :cond_3
    :goto_0
    return-void

    .line 926
    .restart local v0       #discussion:Lio/rong/imlib/model/Discussion;
    :cond_4
    if-eqz p2, :cond_3

    .line 927
    invoke-interface {p2, v0}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 930
    .end local v0           #discussion:Lio/rong/imlib/model/Discussion;
    :cond_5
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v3, Lio/rong/imlib/NativeClient$5;

    invoke-direct {v3, p0, p2}, Lio/rong/imlib/NativeClient$5;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v2, p1, v3}, Lio/rong/imlib/NativeObject;->GetDiscussionInfo(Ljava/lang/String;Lio/rong/imlib/NativeObject$DiscussionInfoListener;)V

    goto :goto_0
.end method

.method public getGroupConversationList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    aput v2, v0, v1

    .line 341
    .local v0, conversationTypes:[I
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v1, :cond_0

    .line 342
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    invoke-virtual {p0, v0}, Lio/rong/imlib/NativeClient;->getConversationList([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)Ljava/util/List;
    .locals 14
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

    .prologue
    .line 582
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_0
    if-eqz p1, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationTypes \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 590
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    const-string v3, ""

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/NativeObject;->GetHistoryMessagesEx(Ljava/lang/String;ILjava/lang/String;IIZ)[Lio/rong/imlib/NativeObject$Message;

    move-result-object v8

    .line 592
    .local v8, array:[Lio/rong/imlib/NativeObject$Message;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-nez v8, :cond_4

    .line 603
    :cond_3
    return-object v12

    .line 597
    :cond_4
    move-object v7, v8

    .local v7, arr$:[Lio/rong/imlib/NativeObject$Message;
    array-length v11, v7

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v11, :cond_3

    aget-object v10, v7, v9

    .line 598
    .local v10, item:Lio/rong/imlib/NativeObject$Message;
    new-instance v13, Lio/rong/imlib/model/Message;

    invoke-direct {v13, v10}, Lio/rong/imlib/model/Message;-><init>(Lio/rong/imlib/NativeObject$Message;)V

    .line 599
    .local v13, msg:Lio/rong/imlib/model/Message;
    invoke-virtual {v10}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lio/rong/imlib/NativeObject$Message;->getContent()[B

    move-result-object v1

    invoke-direct {p0, v0, v1, v13}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v13, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 600
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 14
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

    .prologue
    .line 617
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_0
    if-eqz p1, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationTypes, objectName \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 625
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    const/4 v6, 0x1

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/NativeObject;->GetHistoryMessagesEx(Ljava/lang/String;ILjava/lang/String;IIZ)[Lio/rong/imlib/NativeObject$Message;

    move-result-object v12

    .line 626
    .local v12, messages:[Lio/rong/imlib/NativeObject$Message;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-nez v12, :cond_4

    .line 629
    const/4 v11, 0x0

    .line 637
    .end local v11           #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_3
    return-object v11

    .line 631
    .restart local v11       #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_4
    move-object v7, v12

    .local v7, arr$:[Lio/rong/imlib/NativeObject$Message;
    array-length v10, v7

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v9, v7, v8

    .line 632
    .local v9, item:Lio/rong/imlib/NativeObject$Message;
    new-instance v13, Lio/rong/imlib/model/Message;

    invoke-direct {v13, v9}, Lio/rong/imlib/model/Message;-><init>(Lio/rong/imlib/NativeObject$Message;)V

    .line 633
    .local v13, msg:Lio/rong/imlib/model/Message;
    invoke-virtual {v9}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lio/rong/imlib/NativeObject$Message;->getContent()[B

    move-result-object v1

    invoke-direct {p0, v0, v1, v13}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v13, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 634
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 14
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "objectName"
    .parameter "oldestMessageId"
    .parameter "count"
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_0
    if-eqz p1, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 660
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationTypes, objectName \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 664
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/NativeObject;->GetHistoryMessagesEx(Ljava/lang/String;ILjava/lang/String;IIZ)[Lio/rong/imlib/NativeObject$Message;

    move-result-object v12

    .line 665
    .local v12, messages:[Lio/rong/imlib/NativeObject$Message;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-nez v12, :cond_4

    .line 668
    const/4 v11, 0x0

    .line 676
    .end local v11           #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_3
    return-object v11

    .line 670
    .restart local v11       #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_4
    move-object v7, v12

    .local v7, arr$:[Lio/rong/imlib/NativeObject$Message;
    array-length v10, v7

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v9, v7, v8

    .line 671
    .local v9, item:Lio/rong/imlib/NativeObject$Message;
    new-instance v13, Lio/rong/imlib/model/Message;

    invoke-direct {v13, v9}, Lio/rong/imlib/model/Message;-><init>(Lio/rong/imlib/NativeObject$Message;)V

    .line 672
    .local v13, msg:Lio/rong/imlib/model/Message;
    invoke-virtual {v9}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lio/rong/imlib/NativeObject$Message;->getContent()[B

    move-result-object v1

    invoke-direct {p0, v0, v1, v13}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v13, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 673
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)Ljava/util/List;
    .locals 2
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

    .prologue
    .line 561
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationTypes \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 568
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/rong/imlib/NativeClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(I)Lio/rong/imlib/model/Message;
    .locals 5
    .parameter "messageId"

    .prologue
    .line 1263
    sget-object v3, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v3, p1}, Lio/rong/imlib/NativeObject;->GetMessageById(I)Lio/rong/imlib/NativeObject$Message;

    move-result-object v2

    .line 1264
    .local v2, nativeMsg:Lio/rong/imlib/NativeObject$Message;
    new-instance v1, Lio/rong/imlib/model/Message;

    invoke-direct {v1, v2}, Lio/rong/imlib/model/Message;-><init>(Lio/rong/imlib/NativeObject$Message;)V

    .line 1265
    .local v1, message:Lio/rong/imlib/model/Message;
    invoke-virtual {v2}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lio/rong/imlib/NativeObject$Message;->getContent()[B

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 1266
    .local v0, content:Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v1, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 1267
    return-object v1
.end method

.method public getMessageByUid(Ljava/lang/String;)Lio/rong/imlib/model/Message;
    .locals 5
    .parameter "uid"

    .prologue
    .line 2973
    sget-object v3, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v3, p1}, Lio/rong/imlib/NativeObject;->GetMessageByUId(Ljava/lang/String;)Lio/rong/imlib/NativeObject$Message;

    move-result-object v1

    .line 2975
    .local v1, message:Lio/rong/imlib/NativeObject$Message;
    if-nez v1, :cond_0

    .line 2976
    const/4 v2, 0x0

    .line 2981
    :goto_0
    return-object v2

    .line 2978
    :cond_0
    new-instance v2, Lio/rong/imlib/model/Message;

    invoke-direct {v2, v1}, Lio/rong/imlib/model/Message;-><init>(Lio/rong/imlib/NativeObject$Message;)V

    .line 2979
    .local v2, msg:Lio/rong/imlib/model/Message;
    invoke-virtual {v1}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lio/rong/imlib/NativeObject$Message;->getContent()[B

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 2980
    .local v0, content:Lio/rong/imlib/model/MessageContent;
    invoke-virtual {v2, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    goto :goto_0
.end method

.method public getNotificationQuietHours(Lio/rong/imlib/NativeClient$GetNotificationQuietHoursCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 2737
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2738
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2740
    :cond_0
    if-nez p1, :cond_1

    .line 2741
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2744
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$41;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/NativeClient$41;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$GetNotificationQuietHoursCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->QueryPushSetting(Lio/rong/imlib/NativeObject$PushSettingListener;)V

    .line 2756
    return-void
.end method

.method public getOnReceiveMessageListener()Lio/rong/imlib/NativeClient$OnReceiveMessageListener;
    .locals 1

    .prologue
    .line 2197
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mReceiveMessageListener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

    return-object v0
.end method

.method public getPCAuthConfig(Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3214
    .local p1, resultCallback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/String;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$44;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/NativeClient$44;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->GetAuthConfig(Lio/rong/imlib/NativeObject$TokenListener;)V

    .line 3233
    return-void
.end method

.method public getPublicServiceList(Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfileList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1128
    .local p1, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Lio/rong/imlib/model/PublicServiceProfileList;>;"
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v6, :cond_0

    .line 1129
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1131
    :cond_0
    if-eqz p1, :cond_2

    .line 1133
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v6}, Lio/rong/imlib/NativeObject;->LoadAccountInfo()[Lio/rong/imlib/NativeObject$AccountInfo;

    move-result-object v1

    .line 1135
    .local v1, info:[Lio/rong/imlib/NativeObject$AccountInfo;
    if-eqz v1, :cond_3

    array-length v6, v1

    if-lez v6, :cond_3

    .line 1137
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1139
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/rong/imlib/model/PublicServiceProfile;>;"
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_1

    .line 1140
    new-instance v3, Lio/rong/imlib/model/PublicServiceProfile;

    invoke-direct {v3}, Lio/rong/imlib/model/PublicServiceProfile;-><init>()V

    .line 1141
    .local v3, item:Lio/rong/imlib/model/PublicServiceProfile;
    new-instance v6, Ljava/lang/String;

    aget-object v7, v1, v0

    invoke-virtual {v7}, Lio/rong/imlib/NativeObject$AccountInfo;->getAccountId()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v6}, Lio/rong/imlib/model/PublicServiceProfile;->setTargetId(Ljava/lang/String;)V

    .line 1142
    new-instance v6, Ljava/lang/String;

    aget-object v7, v1, v0

    invoke-virtual {v7}, Lio/rong/imlib/NativeObject$AccountInfo;->getAccountName()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v6}, Lio/rong/imlib/model/PublicServiceProfile;->setName(Ljava/lang/String;)V

    .line 1143
    aget-object v6, v1, v0

    invoke-virtual {v6}, Lio/rong/imlib/NativeObject$AccountInfo;->getAccountType()I

    move-result v6

    invoke-static {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/imlib/model/PublicServiceProfile;->setPublicServiceType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1144
    new-instance v6, Ljava/lang/String;

    aget-object v7, v1, v0

    invoke-virtual {v7}, Lio/rong/imlib/NativeObject$AccountInfo;->getAccountUri()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Lio/rong/imlib/model/PublicServiceProfile;->setPortraitUri(Landroid/net/Uri;)V

    .line 1145
    new-instance v5, Ljava/lang/String;

    aget-object v6, v1, v0

    invoke-virtual {v6}, Lio/rong/imlib/NativeObject$AccountInfo;->getExtra()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 1146
    .local v5, ss:Ljava/lang/String;
    invoke-virtual {v3, v5}, Lio/rong/imlib/model/PublicServiceProfile;->setExtra(Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1150
    .end local v3           #item:Lio/rong/imlib/model/PublicServiceProfile;
    .end local v5           #ss:Ljava/lang/String;
    :cond_1
    new-instance v2, Lio/rong/imlib/model/PublicServiceProfileList;

    invoke-direct {v2, v4}, Lio/rong/imlib/model/PublicServiceProfileList;-><init>(Ljava/util/ArrayList;)V

    .line 1151
    .local v2, infoList:Lio/rong/imlib/model/PublicServiceProfileList;
    invoke-interface {p1, v2}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1156
    .end local v0           #index:I
    .end local v1           #info:[Lio/rong/imlib/NativeObject$AccountInfo;
    .end local v2           #infoList:Lio/rong/imlib/model/PublicServiceProfileList;
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/rong/imlib/model/PublicServiceProfile;>;"
    :cond_2
    :goto_1
    return-void

    .line 1153
    .restart local v1       #info:[Lio/rong/imlib/NativeObject$AccountInfo;
    :cond_3
    const/4 v6, -0x1

    invoke-interface {p1, v6}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    goto :goto_1
.end method

.method public getPublicServiceProfile(Ljava/lang/String;ILio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 4
    .parameter "targetId"
    .parameter "categoryId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1098
    .local p3, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Lio/rong/imlib/model/PublicServiceProfile;>;"
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v2, :cond_0

    .line 1099
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "RongIMClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1101
    :cond_0
    if-nez p1, :cond_1

    .line 1102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1104
    :cond_1
    if-eqz p3, :cond_3

    .line 1105
    new-instance v1, Lio/rong/imlib/model/PublicServiceProfile;

    invoke-direct {v1}, Lio/rong/imlib/model/PublicServiceProfile;-><init>()V

    .line 1106
    .local v1, serviceInfo:Lio/rong/imlib/model/PublicServiceProfile;
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v2, p1, p2}, Lio/rong/imlib/NativeObject;->GetUserInfoExSync(Ljava/lang/String;I)Lio/rong/imlib/NativeObject$UserInfo;

    move-result-object v0

    .line 1107
    .local v0, info:Lio/rong/imlib/NativeObject$UserInfo;
    if-eqz v0, :cond_4

    .line 1108
    invoke-virtual {v1, p1}, Lio/rong/imlib/model/PublicServiceProfile;->setTargetId(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v0}, Lio/rong/imlib/NativeObject$UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/PublicServiceProfile;->setName(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v0}, Lio/rong/imlib/NativeObject$UserInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1111
    invoke-virtual {v0}, Lio/rong/imlib/NativeObject$UserInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/PublicServiceProfile;->setPortraitUri(Landroid/net/Uri;)V

    .line 1112
    :cond_2
    invoke-virtual {v0}, Lio/rong/imlib/NativeObject$UserInfo;->getCategoryId()I

    move-result v2

    invoke-static {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/PublicServiceProfile;->setPublicServiceType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1113
    invoke-virtual {v0}, Lio/rong/imlib/NativeObject$UserInfo;->getAccountExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/PublicServiceProfile;->setExtra(Ljava/lang/String;)V

    .line 1114
    invoke-interface {p3, v1}, Lio/rong/imlib/NativeClient$IResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1119
    .end local v0           #info:Lio/rong/imlib/NativeObject$UserInfo;
    .end local v1           #serviceInfo:Lio/rong/imlib/model/PublicServiceProfile;
    :cond_3
    :goto_0
    return-void

    .line 1116
    .restart local v0       #info:Lio/rong/imlib/NativeObject$UserInfo;
    .restart local v1       #serviceInfo:Lio/rong/imlib/model/PublicServiceProfile;
    :cond_4
    const/4 v2, -0x1

    invoke-interface {p3, v2}, Lio/rong/imlib/NativeClient$IResultCallback;->onError(I)V

    goto :goto_0
.end method

.method public getRealTimeLocationCurrentState(ILjava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    .locals 2
    .parameter "type"
    .parameter "targetId"

    .prologue
    .line 3068
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3069
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3071
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 3072
    const-string v0, "NativeClient"

    const-string v1, "getRealTimeLocationCurrentState RealTimeLocationManager Not setup!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    sget-object v0, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_IDLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 3075
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/location/RealTimeLocationManager;->getRealTimeLocationCurrentState(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v0

    goto :goto_0
.end method

.method public getRealTimeLocationParticipants(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "type"
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3052
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3053
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3055
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 3056
    const-string v0, "NativeClient"

    const-string v1, "getRealTimeLocationParticipants RealTimeLocationManager Not setup!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    const/4 v0, 0x0

    .line 3059
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/location/RealTimeLocationManager;->getRealTimeLocationParticipants(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/NativeClient$IResultCallback;)V
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
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 689
    .local p6, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Ljava/util/List<Lio/rong/imlib/model/Message;>;>;"
    const-string v0, "NativeClient"

    const-string v1, "getRemoteHistoryMessages call"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p6, :cond_2

    .line 695
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationTypes\uff0ccallback \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 699
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v3

    new-instance v7, Lio/rong/imlib/NativeClient$3;

    invoke-direct {v7, p0, p6}, Lio/rong/imlib/NativeClient$3;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/NativeObject;->LoadHistoryMessage(Ljava/lang/String;IJILio/rong/imlib/NativeObject$HistoryMessageListener;)V

    .line 719
    return-void
.end method

.method public getSendTimeByMessageId(I)J
    .locals 2
    .parameter "messageId"

    .prologue
    .line 3148
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3151
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0, p1}, Lio/rong/imlib/NativeObject;->GetSendTimeByMessageId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 843
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 844
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/NativeObject;->GetTextMessageDraft(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3244
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalUnreadCount()I
    .locals 2

    .prologue
    .line 503
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0}, Lio/rong/imlib/NativeObject;->GetTotalUnreadCount()I

    move-result v0

    return v0
.end method

.method public getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 517
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    .line 521
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationType \u6216 TargetId \u53c2\u6570\u5f02\u5e38"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lio/rong/imlib/NativeObject;->GetUnreadCount(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public varargs getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;)I
    .locals 8
    .parameter "conversationTypes"

    .prologue
    .line 534
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v6, :cond_0

    .line 535
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 537
    :cond_0
    if-eqz p1, :cond_1

    array-length v6, p1

    if-nez v6, :cond_2

    .line 538
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "ConversationTypes \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 541
    :cond_2
    array-length v6, p1

    new-array v2, v6, [I

    .line 543
    .local v2, conversationTypeValues:[I
    const/4 v3, 0x0

    .line 544
    .local v3, i:I
    move-object v0, p1

    .local v0, arr$:[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 545
    .local v1, conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v6

    aput v6, v2, v3

    .line 546
    add-int/lit8 v3, v3, 0x1

    .line 544
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 549
    .end local v1           #conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_3
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v6, v2}, Lio/rong/imlib/NativeObject;->GetCateUnreadCount([I)I

    move-result v6

    return v6
.end method

.method public getUnreadMentionedMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/List;
    .locals 9
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
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3265
    sget-object v7, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v7, :cond_0

    .line 3266
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3268
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3269
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "ConversationTypes \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3271
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 3273
    sget-object v7, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v8

    invoke-virtual {v7, p2, v8}, Lio/rong/imlib/NativeObject;->GetMentionMessages(Ljava/lang/String;I)[Lio/rong/imlib/NativeObject$Message;

    move-result-object v1

    .line 3275
    .local v1, array:[Lio/rong/imlib/NativeObject$Message;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3277
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-nez v1, :cond_4

    .line 3286
    :cond_3
    return-object v5

    .line 3280
    :cond_4
    move-object v0, v1

    .local v0, arr$:[Lio/rong/imlib/NativeObject$Message;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v3, v0, v2

    .line 3281
    .local v3, item:Lio/rong/imlib/NativeObject$Message;
    new-instance v6, Lio/rong/imlib/model/Message;

    invoke-direct {v6, v3}, Lio/rong/imlib/model/Message;-><init>(Lio/rong/imlib/NativeObject$Message;)V

    .line 3282
    .local v6, msg:Lio/rong/imlib/model/Message;
    invoke-virtual {v3}, Lio/rong/imlib/NativeObject$Message;->getObjectName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lio/rong/imlib/NativeObject$Message;->getContent()[B

    move-result-object v8

    invoke-direct {p0, v7, v8, v6}, Lio/rong/imlib/NativeClient;->renderMessageContent(Ljava/lang/String;[BLio/rong/imlib/model/Message;)Lio/rong/imlib/model/MessageContent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 3283
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getVoIPCallInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3176
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3177
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3178
    :cond_0
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient;->getInstance()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/rong/imlib/navigation/NavigationClient;->getVoIPCallInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoIPKey(ILjava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 2
    .parameter "engineType"
    .parameter "channelName"
    .parameter "extra"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3161
    .local p4, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/String;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3162
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3163
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$43;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/NativeClient$43;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeObject;->GetVoIPKey(ILjava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeObject$TokenListener;)V

    .line 3173
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "appKey"
    .parameter "deviceId"

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lio/rong/imlib/NativeClient;->appKey:Ljava/lang/String;

    .line 131
    iput-object p3, p0, Lio/rong/imlib/NativeClient;->deviceId:Ljava/lang/String;

    .line 132
    new-instance v0, Lio/rong/imlib/NativeObject;

    invoke-direct {v0}, Lio/rong/imlib/NativeObject;-><init>()V

    sput-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    .line 134
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v1, "ronglog"

    invoke-static {p1, v1}, Lio/rong/common/FileUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->InitClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 135
    .local v8, result:I
    const-string v0, "NativeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p1}, Lio/rong/imlib/location/RealTimeLocationManager;->init(Landroid/content/Context;)Lio/rong/imlib/location/RealTimeLocationManager;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    .line 139
    new-instance v6, Lio/rong/imlib/filetransfer/Configuration$Builder;

    invoke-direct {v6}, Lio/rong/imlib/filetransfer/Configuration$Builder;-><init>()V

    .line 140
    .local v6, builder:Lio/rong/imlib/filetransfer/Configuration$Builder;
    sget-object v0, Lio/rong/imlib/filetransfer/FtConst$ServiceType;->QI_NIU:Lio/rong/imlib/filetransfer/FtConst$ServiceType;

    invoke-virtual {v6, v0}, Lio/rong/imlib/filetransfer/Configuration$Builder;->serverType(Lio/rong/imlib/filetransfer/FtConst$ServiceType;)Lio/rong/imlib/filetransfer/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/filetransfer/Configuration$Builder;->build()Lio/rong/imlib/filetransfer/Configuration;

    move-result-object v7

    .line 141
    .local v7, configuration:Lio/rong/imlib/filetransfer/Configuration;
    invoke-static {v7}, Lio/rong/imlib/filetransfer/FileTransferClient;->init(Lio/rong/imlib/filetransfer/Configuration;)V

    .line 142
    return-void
.end method

.method public insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;
    .locals 19
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "senderUserId"
    .parameter "content"

    .prologue
    .line 1655
    sget-object v3, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v3, :cond_0

    .line 1656
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1658
    :cond_0
    if-eqz p1, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez p4, :cond_2

    .line 1659
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1661
    :cond_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lio/rong/imlib/MessageTag;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lio/rong/imlib/MessageTag;

    .line 1662
    .local v18, msgTag:Lio/rong/imlib/MessageTag;
    if-nez v18, :cond_3

    .line 1663
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "\u81ea\u5b9a\u4e49\u6d88\u606f\u6ca1\u6709\u52a0\u6ce8\u89e3\u4fe1\u606f\u3002"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1665
    :cond_3
    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1666
    const-string v3, "NativeClient"

    const-string v4, "insertMessage MessageTag can not be STATUS."

    invoke-static {v3, v4}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    const/16 v17, 0x0

    .line 1718
    :goto_0
    return-object v17

    .line 1670
    :cond_4
    move-object/from16 v7, p3

    .line 1671
    .local v7, sender:Ljava/lang/String;
    new-instance v17, Lio/rong/imlib/model/Message;

    invoke-direct/range {v17 .. v17}, Lio/rong/imlib/model/Message;-><init>()V

    .line 1672
    .local v17, message:Lio/rong/imlib/model/Message;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1673
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setTargetId(Ljava/lang/String;)V

    .line 1674
    if-nez v7, :cond_5

    .line 1675
    move-object/from16 v0, p0

    iget-object v7, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    .line 1678
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 1679
    sget-object v3, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lio/rong/imlib/model/Message;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 1680
    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1685
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 1686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lio/rong/imlib/model/Message;->setReceivedTime(J)V

    .line 1687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 1688
    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lio/rong/imlib/model/Message;->setObjectName(Ljava/lang/String;)V

    .line 1689
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 1690
    const/4 v3, 0x1

    new-array v8, v3, [B

    .line 1691
    .local v8, data:[B
    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v3

    if-gtz v3, :cond_6

    .line 1692
    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v3, v4}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v9, 0x1

    .line 1693
    .local v9, direction:Z
    :goto_2
    sget-object v3, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v5

    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    sget-object v11, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v11}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual/range {v3 .. v13}, Lio/rong/imlib/NativeObject;->SaveMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BZIIJ)I

    move-result v16

    .line 1696
    .local v16, id:I
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 1699
    .end local v9           #direction:Z
    .end local v16           #id:I
    :cond_6
    sget-object v3, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 1701
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    if-eqz v2, :cond_b

    .line 1702
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/rong/message/MessageHandler;

    .line 1703
    .local v15, handler:Lio/rong/message/MessageHandler;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lio/rong/message/MessageHandler;->encodeMessage(Lio/rong/imlib/model/Message;)V

    .line 1704
    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/MessageContent;->encode()[B

    move-result-object v8

    .line 1705
    sget-object v3, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v8, v5}, Lio/rong/imlib/NativeObject;->SetMessageContent(I[BLjava/lang/String;)Z

    .line 1706
    sget-object v3, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v4

    sget-object v5, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v5}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imlib/NativeObject;->SetSendStatus(II)Z

    .line 1707
    const-string v3, "NativeClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertMessage Inserted, id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 1711
    .end local v15           #handler:Lio/rong/message/MessageHandler;
    :catch_0
    move-exception v14

    .line 1712
    .local v14, e:Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1682
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    .end local v8           #data:[B
    .end local v14           #e:Ljava/lang/InstantiationException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lio/rong/imlib/model/Message;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    goto/16 :goto_1

    .line 1682
    :cond_8
    sget-object v3, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    goto :goto_3

    .line 1683
    :cond_9
    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->RECEIVED:Lio/rong/imlib/model/Message$SentStatus;

    goto :goto_4

    .line 1692
    .restart local v8       #data:[B
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1709
    .restart local v2       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    :cond_b
    :try_start_1
    const-string v3, "NativeClient"

    const-string v4, "insertMessage \u8be5\u6d88\u606f\u672a\u6ce8\u518c\uff0c\u8bf7\u8c03\u7528registerMessageType\u65b9\u6cd5\u6ce8\u518c\u3002"

    invoke-static {v3, v4}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 1713
    :catch_1
    move-exception v14

    .line 1714
    .local v14, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1715
    .end local v14           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v14

    .line 1716
    .local v14, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public joinChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 6
    .parameter "id"
    .parameter "defMessageCount"
    .parameter "callback"

    .prologue
    .line 2315
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2316
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2318
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u804a\u5929\u5ba4 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2321
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    const/4 v4, 0x0

    new-instance v5, Lio/rong/imlib/NativeClient$30;

    invoke-direct {v5, p0, p3}, Lio/rong/imlib/NativeClient$30;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->JoinChatRoom(Ljava/lang/String;IIZLio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2334
    return-void
.end method

.method public joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 3
    .parameter "id"
    .parameter "defMessageCount"
    .parameter "callback"

    .prologue
    .line 2400
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2401
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2403
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u804a\u5929\u5ba4 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2406
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    new-instance v2, Lio/rong/imlib/NativeClient$33;

    invoke-direct {v2, p0, p3}, Lio/rong/imlib/NativeClient$33;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lio/rong/imlib/NativeObject;->JoinExistingChatroom(Ljava/lang/String;IILio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2418
    invoke-direct {p0}, Lio/rong/imlib/NativeClient;->startCRHeartBeatIfNeed()V

    .line 2419
    return-void
.end method

.method public joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .parameter "groupId"
    .parameter "groupName"
    .parameter "callback"

    .prologue
    .line 2096
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2097
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2099
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 2100
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "groupId \u6216 groupName\u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2102
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$25;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/NativeClient$25;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeObject;->JoinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2115
    return-void
.end method

.method public joinRealTimeLocation(ILjava/lang/String;)I
    .locals 2
    .parameter "type"
    .parameter "targetId"

    .prologue
    .line 3022
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3023
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3025
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 3026
    const-string v0, "NativeClient"

    const-string v1, "joinRealTimeLocation RealTimeLocationManager Not setup!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    const/4 v0, -0x1

    .line 3029
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/location/RealTimeLocationManager;->joinRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public queryChatRoomInfo(Ljava/lang/String;IILio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 2
    .parameter "id"
    .parameter "count"
    .parameter "order"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Lio/rong/imlib/model/ChatRoomInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2274
    .local p4, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Lio/rong/imlib/model/ChatRoomInfo;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2275
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2277
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u804a\u5929\u5ba4 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2280
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$29;

    invoke-direct {v1, p0, p1, p4}, Lio/rong/imlib/NativeClient$29;-><init>(Lio/rong/imlib/NativeClient;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeObject;->QueryChatroomInfo(Ljava/lang/String;IILio/rong/imlib/NativeObject$ChatroomInfoListener;)Z

    .line 2304
    return-void
.end method

.method public quitChatRoom(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 3
    .parameter "id"
    .parameter "callback"

    .prologue
    .line 2429
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2430
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2432
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u804a\u5929\u5ba4 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2435
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    new-instance v2, Lio/rong/imlib/NativeClient$34;

    invoke-direct {v2, p0, p2}, Lio/rong/imlib/NativeClient$34;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lio/rong/imlib/NativeObject;->QuitChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2448
    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p0, v0, p1}, Lio/rong/imlib/NativeClient;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    .line 2449
    invoke-direct {p0}, Lio/rong/imlib/NativeClient;->stopCRHeartBeat()V

    .line 2450
    return-void
.end method

.method public quitDiscussion(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter "callback"

    .prologue
    .line 1234
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1235
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1237
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "discussionId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1240
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$12;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/NativeClient$12;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->QuitDiscussion(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1254
    return-void
.end method

.method public quitGroup(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .parameter "groupId"
    .parameter "callback"

    .prologue
    .line 2124
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2127
    :cond_0
    if-nez p1, :cond_1

    .line 2128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "groupId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2130
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$26;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/NativeClient$26;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->QuitGroup(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2143
    return-void
.end method

.method public quitRealTimeLocation(ILjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "targetId"

    .prologue
    .line 3036
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3037
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3039
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 3040
    const-string v0, "NativeClient"

    const-string v1, "quitRealTimeLocation RealTimeLocationManager Not setup!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    :goto_0
    return-void

    .line 3043
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/location/RealTimeLocationManager;->quitRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 6
    .parameter "id"
    .parameter "defMessageCount"
    .parameter "callback"

    .prologue
    .line 2345
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2346
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2348
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u804a\u5929\u5ba4 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2351
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    const/4 v4, 0x1

    new-instance v5, Lio/rong/imlib/NativeClient$31;

    invoke-direct {v5, p0, p3}, Lio/rong/imlib/NativeClient$31;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeObject;->JoinChatRoom(Ljava/lang/String;IIZLio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2364
    return-void
.end method

.method public removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 469
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationType \u548c TargetId \u53c2\u6570\u5f02\u5e38"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 476
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/NativeObject;->RemoveConversation(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .parameter "userId"
    .parameter "callback"

    .prologue
    .line 2567
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2568
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2570
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 2571
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u7528\u6237 Id \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2573
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$36;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/NativeClient$36;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->RemoveFromBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2585
    return-void
.end method

.method public removeListener(ILjava/lang/String;Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V
    .locals 2
    .parameter "type"
    .parameter "targetId"
    .parameter "listener"

    .prologue
    .line 3100
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3103
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 3104
    const-string v0, "NativeClient"

    const-string v1, "removeListener RealTimeLocationManager Not setup!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    :goto_0
    return-void

    .line 3107
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lio/rong/imlib/location/RealTimeLocationManager;->removeListener(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V

    goto :goto_0
.end method

.method public removeMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter "userId"
    .parameter "callback"

    .prologue
    .line 1205
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1208
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1209
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "discussionId \u6216 userId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1211
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$11;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/NativeClient$11;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeObject;->RemoveMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1224
    return-void
.end method

.method public removeNotificationQuietHours(Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 2706
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2707
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2709
    :cond_0
    if-nez p1, :cond_1

    .line 2710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2712
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$40;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/NativeClient$40;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->RemovePushSetting(Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2726
    return-void
.end method

.method public saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "content"

    .prologue
    .line 861
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 862
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 865
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/rong/imlib/NativeObject;->SetTextMessageDraft(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public searchPublicService(Ljava/lang/String;IILio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 2
    .parameter "keyWords"
    .parameter "businessType"
    .parameter "searchType"
    .parameter "callback"

    .prologue
    .line 1027
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1028
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1030
    :cond_0
    if-nez p1, :cond_1

    .line 1031
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyWords \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$8;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/NativeClient$8;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeObject;->SearchAccount(Ljava/lang/String;IILio/rong/imlib/NativeObject$AccountInfoListener;)V

    .line 1060
    return-void
.end method

.method public sendLocationMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$ISendMessageCallback;)V
    .locals 19
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$ISendMessageCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1362
    .local p4, callback:Lio/rong/imlib/NativeClient$ISendMessageCallback;,"Lio/rong/imlib/NativeClient$ISendMessageCallback<Lio/rong/imlib/model/Message;>;"
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lio/rong/imlib/MessageTag;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lio/rong/imlib/MessageTag;

    .line 1363
    .local v18, msgTag:Lio/rong/imlib/MessageTag;
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1364
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 1366
    :cond_0
    sget-object v2, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lio/rong/imlib/model/Message;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 1367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 1368
    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lio/rong/imlib/model/Message;->setObjectName(Ljava/lang/String;)V

    .line 1370
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/MessageContent;->encode()[B

    move-result-object v8

    .line 1372
    .local v8, data:[B
    sget-object v3, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v5

    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v2}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual/range {v3 .. v13}, Lio/rong/imlib/NativeObject;->SaveMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BZIIJ)I

    move-result v17

    .line 1381
    .local v17, id:I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 1382
    if-eqz p4, :cond_1

    .line 1383
    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1384
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lio/rong/imlib/NativeClient$ISendMessageCallback;->onAttached(Ljava/lang/Object;)V

    .line 1386
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v2

    if-nez v2, :cond_3

    .line 1387
    const-string v2, "NativeClient"

    const-string v3, "Location Message saved error"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    if-eqz p4, :cond_2

    .line 1389
    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1390
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v3

    sget-object v4, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v4}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lio/rong/imlib/NativeObject;->SetSendStatus(II)Z

    .line 1391
    const/4 v2, -0x3

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lio/rong/imlib/NativeClient$ISendMessageCallback;->onError(Ljava/lang/Object;I)V

    .line 1460
    :cond_2
    :goto_0
    return-void

    .line 1396
    :cond_3
    sget-object v2, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    invoke-interface/range {v18 .. v18}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Constructor;

    .line 1397
    .local v14, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    if-nez v14, :cond_4

    .line 1398
    const-string v2, "NativeClient"

    const-string v3, "MessageHandler is null"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    if-eqz p4, :cond_2

    .line 1400
    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1401
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v3

    sget-object v4, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v4}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lio/rong/imlib/NativeObject;->SetSendStatus(II)Z

    .line 1402
    const/4 v2, -0x3

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lio/rong/imlib/NativeClient$ISendMessageCallback;->onError(Ljava/lang/Object;I)V

    goto :goto_0

    .line 1407
    :cond_4
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v14, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/rong/message/MessageHandler;

    .line 1408
    .local v16, handler:Lio/rong/message/MessageHandler;
    new-instance v2, Lio/rong/imlib/NativeClient$14;

    move-object/from16 v3, p0

    move-object/from16 v4, v18

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lio/rong/imlib/NativeClient$14;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/MessageTag;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$ISendMessageCallback;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lio/rong/message/MessageHandler;->setHandleMessageListener(Lio/rong/message/IHandleMessageListener;)V

    .line 1451
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lio/rong/message/MessageHandler;->encodeMessage(Lio/rong/imlib/model/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1452
    .end local v16           #handler:Lio/rong/message/MessageHandler;
    :catch_0
    move-exception v15

    .line 1453
    .local v15, e:Ljava/lang/Exception;
    const-string v2, "NativeClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendLocationMessage exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 1455
    if-eqz p4, :cond_2

    .line 1456
    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1457
    const/4 v2, -0x3

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lio/rong/imlib/NativeClient$ISendMessageCallback;->onError(Ljava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method public sendMediaMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$ISendMediaMessageCallback;)V
    .locals 34
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$ISendMediaMessageCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1541
    .local p4, mediaMessageCallback:Lio/rong/imlib/NativeClient$ISendMediaMessageCallback;,"Lio/rong/imlib/NativeClient$ISendMediaMessageCallback<Lio/rong/imlib/model/Message;>;"
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lio/rong/imlib/MessageTag;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v33

    check-cast v33, Lio/rong/imlib/MessageTag;

    .line 1542
    .local v33, msgTag:Lio/rong/imlib/MessageTag;
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1543
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 1545
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 1546
    invoke-interface/range {v33 .. v33}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lio/rong/imlib/model/Message;->setObjectName(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/MessageContent;->encode()[B

    move-result-object v10

    .line 1549
    .local v10, data:[B
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    const/16 v19, 0x1

    .line 1550
    .local v19, isMentioned:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v32

    check-cast v32, Lio/rong/message/MediaMessageContent;

    .line 1551
    .local v32, mediaMessageContent:Lio/rong/message/MediaMessageContent;
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    if-gtz v5, :cond_2

    .line 1552
    sget-object v5, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v7

    invoke-interface/range {v33 .. v33}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v13}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual/range {v5 .. v15}, Lio/rong/imlib/NativeObject;->SaveMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BZIIJ)I

    move-result v4

    .line 1561
    .local v4, id:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 1562
    sget-object v5, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1563
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lio/rong/imlib/NativeClient$ISendMediaMessageCallback;->onAttached(Ljava/lang/Object;)V

    .line 1565
    new-instance v11, Lio/rong/imlib/NativeClient$16;

    move-object/from16 v12, p0

    move-object/from16 v13, v32

    move-object/from16 v14, p1

    move-object/from16 v15, v33

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    invoke-direct/range {v11 .. v19}, Lio/rong/imlib/NativeClient$16;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/message/MediaMessageContent;Lio/rong/imlib/model/Message;Lio/rong/imlib/MessageTag;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$ISendMediaMessageCallback;Z)V

    .line 1614
    .local v11, progressCallback:Lio/rong/imlib/NativeClient$IResultProgressCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lio/rong/imlib/NativeClient;->uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V

    .line 1644
    .end local v4           #id:I
    .end local v11           #progressCallback:Lio/rong/imlib/NativeClient$IResultProgressCallback;
    :goto_1
    return-void

    .line 1549
    .end local v19           #isMentioned:Z
    .end local v32           #mediaMessageContent:Lio/rong/message/MediaMessageContent;
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 1616
    .restart local v19       #isMentioned:Z
    .restart local v32       #mediaMessageContent:Lio/rong/message/MediaMessageContent;
    :cond_2
    invoke-virtual/range {v32 .. v32}, Lio/rong/message/MediaMessageContent;->getLocalPath()Landroid/net/Uri;

    move-result-object v31

    .line 1617
    .local v31, localPath:Landroid/net/Uri;
    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lio/rong/message/MediaMessageContent;->setLocalPath(Landroid/net/Uri;)V

    .line 1618
    invoke-virtual/range {v32 .. v32}, Lio/rong/message/MediaMessageContent;->encode()[B

    move-result-object v10

    .line 1619
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lio/rong/message/MediaMessageContent;->setLocalPath(Landroid/net/Uri;)V

    .line 1621
    sget-object v20, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v22

    const/16 v23, 0x3

    invoke-interface/range {v33 .. v33}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v26, 0x0

    :goto_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v27, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v28

    new-instance v29, Lio/rong/imlib/NativeClient$17;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lio/rong/imlib/NativeClient$17;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/model/Message;Lio/rong/imlib/NativeClient$ISendMediaMessageCallback;)V

    move-object/from16 v25, v10

    move/from16 v30, v19

    invoke-virtual/range {v20 .. v30}, Lio/rong/imlib/NativeObject;->SendMessage(Ljava/lang/String;IILjava/lang/String;[B[B[BILio/rong/imlib/NativeObject$PublishAckListener;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    goto :goto_2

    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    goto :goto_3
.end method

.method public sendMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$ISendMessageCallback;)V
    .locals 1
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "content"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/MessageContent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$ISendMessageCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1279
    .local p6, callback:Lio/rong/imlib/NativeClient$ISendMessageCallback;,"Lio/rong/imlib/NativeClient$ISendMessageCallback<Lio/rong/imlib/model/Message;>;"
    invoke-static {p2, p1, p3}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 1280
    .local v0, message:Lio/rong/imlib/model/Message;
    invoke-virtual {p0, v0, p4, p5, p6}, Lio/rong/imlib/NativeClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$ISendMessageCallback;)V

    .line 1281
    return-void
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$ISendMessageCallback;)V
    .locals 20
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/NativeClient$ISendMessageCallback",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1284
    .local p4, callback:Lio/rong/imlib/NativeClient$ISendMessageCallback;,"Lio/rong/imlib/NativeClient$ISendMessageCallback<Lio/rong/imlib/model/Message;>;"
    sget-object v5, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v5, :cond_0

    .line 1285
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1288
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1289
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "message, ConversationType \u6216 TargetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1292
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lio/rong/imlib/MessageTag;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    check-cast v19, Lio/rong/imlib/MessageTag;

    .line 1293
    .local v19, msgTag:Lio/rong/imlib/MessageTag;
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1294
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 1296
    :cond_3
    sget-object v5, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lio/rong/imlib/model/Message;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 1297
    sget-object v5, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 1299
    invoke-interface/range {v19 .. v19}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lio/rong/imlib/model/Message;->setObjectName(Ljava/lang/String;)V

    .line 1301
    const/4 v5, 0x1

    new-array v10, v5, [B

    .line 1302
    .local v10, data:[B
    invoke-interface/range {v19 .. v19}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 1303
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    if-gtz v5, :cond_4

    .line 1304
    sget-object v5, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v7

    invoke-interface/range {v19 .. v19}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v13}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual/range {v5 .. v15}, Lio/rong/imlib/NativeObject;->SaveMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BZIIJ)I

    move-result v18

    .line 1307
    .local v18, id:I
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 1310
    .end local v18           #id:I
    :cond_4
    invoke-interface/range {v19 .. v19}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_6

    const/4 v8, 0x1

    .line 1311
    .local v8, type:I
    :goto_0
    sget-object v5, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    invoke-interface/range {v19 .. v19}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Constructor;

    .line 1312
    .local v4, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    if-nez v4, :cond_7

    .line 1313
    const-string v5, "NativeClient"

    const-string v6, "sendMessage MessageHandler is null"

    invoke-static {v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    if-eqz p4, :cond_5

    .line 1315
    const/4 v5, -0x3

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5}, Lio/rong/imlib/NativeClient$ISendMessageCallback;->onError(Ljava/lang/Object;I)V

    .line 1359
    :cond_5
    :goto_1
    return-void

    .line 1310
    .end local v4           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    .end local v8           #type:I
    :cond_6
    const/4 v8, 0x3

    goto :goto_0

    .line 1319
    .restart local v4       #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    .restart local v8       #type:I
    :cond_7
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lio/rong/message/MessageHandler;

    .line 1320
    .local v17, handler:Lio/rong/message/MessageHandler;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lio/rong/message/MessageHandler;->encodeMessage(Lio/rong/imlib/model/Message;)V

    .line 1321
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/MessageContent;->encode()[B

    move-result-object v10

    .line 1322
    if-eqz p4, :cond_8

    .line 1323
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lio/rong/imlib/NativeClient$ISendMessageCallback;->onAttached(Ljava/lang/Object;)V

    .line 1326
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v5

    if-eqz v5, :cond_9

    const/4 v15, 0x1

    .line 1327
    .local v15, isMentioned:Z
    :goto_2
    sget-object v5, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v10, v7}, Lio/rong/imlib/NativeObject;->SetMessageContent(I[BLjava/lang/String;)Z

    .line 1329
    sget-object v5, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v7

    invoke-interface/range {v19 .. v19}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    :goto_3
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v13

    new-instance v14, Lio/rong/imlib/NativeClient$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lio/rong/imlib/NativeClient$13;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/model/Message;Lio/rong/imlib/NativeClient$ISendMessageCallback;)V

    invoke-virtual/range {v5 .. v15}, Lio/rong/imlib/NativeObject;->SendMessage(Ljava/lang/String;IILjava/lang/String;[B[B[BILio/rong/imlib/NativeObject$PublishAckListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1353
    .end local v15           #isMentioned:Z
    .end local v17           #handler:Lio/rong/message/MessageHandler;
    :catch_0
    move-exception v16

    .line 1354
    .local v16, e:Ljava/lang/Exception;
    const-string v5, "NativeClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendMessage exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 1356
    if-eqz p4, :cond_5

    .line 1357
    const/4 v5, -0x3

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v5}, Lio/rong/imlib/NativeClient$ISendMessageCallback;->onError(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1326
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v17       #handler:Lio/rong/message/MessageHandler;
    :cond_9
    const/4 v15, 0x0

    goto :goto_2

    .line 1329
    .restart local v15       #isMentioned:Z
    :cond_a
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    goto :goto_3

    :cond_b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    goto :goto_4
.end method

.method public sendStatusMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;ILio/rong/imlib/NativeClient$IResultCallback;)Lio/rong/imlib/model/Message;
    .locals 21
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "content"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Lio/rong/imlib/model/MessageContent;",
            "I",
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/rong/imlib/model/Message;"
        }
    .end annotation

    .prologue
    .line 1466
    .local p5, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/Integer;>;"
    sget-object v5, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v5, :cond_0

    .line 1467
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1469
    :cond_0
    if-nez p2, :cond_1

    .line 1470
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1472
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v19

    .line 1474
    .local v19, message:Lio/rong/imlib/model/Message;
    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lio/rong/imlib/MessageTag;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v20

    check-cast v20, Lio/rong/imlib/MessageTag;

    .line 1476
    .local v20, msgTag:Lio/rong/imlib/MessageTag;
    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1477
    move-object/from16 v0, p0

    iget-object v5, v0, Lio/rong/imlib/NativeClient;->currentUserId:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 1480
    :cond_2
    sget-object v5, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lio/rong/imlib/model/Message;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 1481
    sget-object v5, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 1483
    invoke-interface/range {v20 .. v20}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lio/rong/imlib/model/Message;->setObjectName(Ljava/lang/String;)V

    .line 1485
    const/4 v5, 0x1

    new-array v10, v5, [B

    .line 1487
    .local v10, data:[B
    invoke-interface/range {v20 .. v20}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 1489
    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    if-gtz v5, :cond_3

    .line 1490
    sget-object v5, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v7

    invoke-interface/range {v20 .. v20}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v13, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v13}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual/range {v5 .. v15}, Lio/rong/imlib/NativeObject;->SaveMessage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[BZIIJ)I

    move-result v18

    .line 1493
    .local v18, id:I
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 1497
    .end local v18           #id:I
    :cond_3
    sget-object v5, Lio/rong/imlib/NativeClient;->messageHandlerMap:Ljava/util/HashMap;

    invoke-interface/range {v20 .. v20}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Constructor;

    .line 1500
    .local v4, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<+Lio/rong/message/MessageHandler;>;"
    if-eqz v4, :cond_4

    .line 1501
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lio/rong/imlib/NativeClient;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lio/rong/message/MessageHandler;

    .line 1502
    .local v17, handler:Lio/rong/message/MessageHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lio/rong/imlib/NativeClient;->isMentionedMessage(Lio/rong/imlib/model/Message;)Z

    move-result v15

    .line 1503
    .local v15, isMentioned:Z
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lio/rong/message/MessageHandler;->encodeMessage(Lio/rong/imlib/model/Message;)V

    .line 1504
    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/MessageContent;->encode()[B

    move-result-object v10

    .line 1506
    sget-object v5, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v10, v7}, Lio/rong/imlib/NativeObject;->SetMessageContent(I[BLjava/lang/String;)Z

    .line 1508
    sget-object v5, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v7

    invoke-interface/range {v20 .. v20}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v13

    new-instance v14, Lio/rong/imlib/NativeClient$15;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v19

    invoke-direct {v14, v0, v1, v2}, Lio/rong/imlib/NativeClient$15;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;Lio/rong/imlib/model/Message;)V

    move/from16 v8, p4

    invoke-virtual/range {v5 .. v15}, Lio/rong/imlib/NativeObject;->SendMessage(Ljava/lang/String;IILjava/lang/String;[B[B[BILio/rong/imlib/NativeObject$PublishAckListener;Z)V

    .line 1524
    const-string v5, "NativeClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendStatusMessage SENDED, id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    .end local v15           #isMentioned:Z
    .end local v17           #handler:Lio/rong/message/MessageHandler;
    :goto_0
    return-object v19

    .line 1526
    :cond_4
    const-string v5, "NativeClient"

    const-string v6, "sendStatusMessage \u8be5\u6d88\u606f\u672a\u6ce8\u518c\uff0c\u8bf7\u8c03\u7528registerMessageType\u65b9\u6cd5\u6ce8\u518c\u3002"

    invoke-static {v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1529
    :catch_0
    move-exception v16

    .line 1530
    .local v16, e:Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1531
    .end local v16           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v16

    .line 1532
    .local v16, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1533
    .end local v16           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v16

    .line 1534
    .local v16, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;Lio/rong/imlib/NativeClient$IResultCallback;)V
    .locals 4
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
            "Lio/rong/imlib/NativeClient$IResultCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1994
    .local p4, callback:Lio/rong/imlib/NativeClient$IResultCallback;,"Lio/rong/imlib/NativeClient$IResultCallback<Ljava/lang/Integer;>;"
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1995
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1997
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_2

    .line 1998
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversationType, notificationStatus \u6216 targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2000
    :cond_2
    sget-object v1, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->DO_NOT_DISTURB:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    if-ne p3, v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    new-instance v3, Lio/rong/imlib/NativeClient$22;

    invoke-direct {v3, p0, p4}, Lio/rong/imlib/NativeClient$22;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$IResultCallback;)V

    invoke-virtual {v1, p2, v2, v0, v3}, Lio/rong/imlib/NativeObject;->SetBlockPush(Ljava/lang/String;IZLio/rong/imlib/NativeObject$BizAckListener;)V

    .line 2015
    return-void

    .line 2000
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "isTop"

    .prologue
    .line 488
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConversationType \u6216 TargetId \u53c2\u6570\u5f02\u5e38"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Lio/rong/imlib/NativeObject;->SetIsTop(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDiscussionInviteStatus(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .parameter "targetId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 2027
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2028
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2030
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2031
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "targetId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2033
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$23;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/NativeClient$23;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeObject;->SetInviteStatus(Ljava/lang/String;ILio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2048
    return-void
.end method

.method public setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .parameter "discussionId"
    .parameter "name"
    .parameter "callback"

    .prologue
    .line 956
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 957
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " discussionId \u6216 name \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$6;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/NativeClient$6;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeObject;->RenameDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 975
    return-void
.end method

.method public setLogStatus(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 3290
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3291
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3293
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0, p1}, Lio/rong/imlib/NativeObject;->SetLogStatus(Z)V

    .line 3294
    return-void
.end method

.method public setMessageContent(I[BLjava/lang/String;)Z
    .locals 2
    .parameter "messageId"
    .parameter "messageContent"
    .parameter "objectName"

    .prologue
    .line 3236
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3237
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3240
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/NativeObject;->SetMessageContent(I[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMessageExtra(ILjava/lang/String;)Z
    .locals 2
    .parameter "messageId"
    .parameter "value"

    .prologue
    .line 790
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_0
    if-nez p1, :cond_1

    .line 794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "messageId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_1
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeObject;->SetMessageExtra(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;)Z
    .locals 2
    .parameter "messageId"
    .parameter "receivedStatus"

    .prologue
    .line 807
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 808
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    .line 811
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "receivedStatus \u6216 messageId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p2}, Lio/rong/imlib/model/Message$ReceivedStatus;->getFlag()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->SetReadStatus(II)Z

    move-result v0

    return v0
.end method

.method public setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;)Z
    .locals 2
    .parameter "messageId"
    .parameter "sentStatus"

    .prologue
    .line 825
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 826
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    .line 829
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sentStatus \u6216 messageId \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p2}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeObject;->SetSendStatus(II)Z

    move-result v0

    return v0
.end method

.method public setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 4
    .parameter "startTime"
    .parameter "spanMinutes"
    .parameter "callback"

    .prologue
    .line 2670
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v2, :cond_0

    .line 2671
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2674
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-lez p2, :cond_1

    const/16 v2, 0x5a0

    if-ge p2, v2, :cond_1

    if-nez p3, :cond_2

    .line 2675
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "startTime, spanMinutes \u6216 spanMinutes \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2677
    :cond_2
    const-string v2, "^(([0-1][0-9])|2[0-3]):[0-5][0-9]:([0-5][0-9])$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2678
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2680
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2681
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "startTime \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2685
    :cond_3
    sget-object v2, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v3, Lio/rong/imlib/NativeClient$39;

    invoke-direct {v3, p0, p3}, Lio/rong/imlib/NativeClient$39;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v2, p1, p2, v3}, Lio/rong/imlib/NativeObject;->AddPushSetting(Ljava/lang/String;ILio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2697
    return-void
.end method

.method public setOnReceiveMessageListener(Lio/rong/imlib/NativeClient$OnReceiveMessageListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2153
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2156
    :cond_0
    iput-object p1, p0, Lio/rong/imlib/NativeClient;->mReceiveMessageListener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;

    .line 2158
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$27;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/NativeClient$27;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OnReceiveMessageListener;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeObject;->SetMessageListener(Lio/rong/imlib/NativeObject$ReceiveMessageListener;)V

    .line 2190
    return-void
.end method

.method public setOnReceiveMessageListenerEx(Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;)V
    .locals 0
    .parameter "listenerEx"

    .prologue
    .line 2193
    iput-object p1, p0, Lio/rong/imlib/NativeClient;->mReceiveMessageListenerEx:Lio/rong/imlib/NativeClient$OnReceiveMessageListenerEx;

    .line 2194
    return-void
.end method

.method public setServerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "naviServer"
    .parameter "fileServer"

    .prologue
    .line 3203
    iput-object p1, p0, Lio/rong/imlib/NativeClient;->mNaviServer:Ljava/lang/String;

    .line 3204
    iput-object p2, p0, Lio/rong/imlib/NativeClient;->mFileServer:Ljava/lang/String;

    .line 3205
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient;->getInstance()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/imlib/navigation/NavigationClient;->setNaviDomain(Ljava/lang/String;)V

    .line 3206
    return-void
.end method

.method public setUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 10
    .parameter "userData"
    .parameter "callback"

    .prologue
    .line 2761
    sget-object v7, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v7, :cond_0

    .line 2762
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2764
    :cond_0
    if-nez p1, :cond_1

    .line 2765
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "userData \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2767
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2770
    .local v4, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2771
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2773
    .local v5, personalInfo:Lorg/json/JSONObject;
    const-string v7, "realName"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getRealName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2774
    const-string v7, "sex"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getSex()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2775
    const-string v7, "age"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getAge()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2776
    const-string v7, "birthday"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getBirthday()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2777
    const-string v7, "job"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getJob()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2778
    const-string v7, "portraitUri"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getPortraitUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2779
    const-string v7, "comment"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$PersonalInfo;->getComment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2782
    const-string v7, "personalInfo"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2785
    .end local v5           #personalInfo:Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getAccountInfo()Lio/rong/imlib/model/UserData$AccountInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2786
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2787
    .local v0, accountInfo:Lorg/json/JSONObject;
    const-string v7, "appUserId"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getAccountInfo()Lio/rong/imlib/model/UserData$AccountInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$AccountInfo;->getAppUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2788
    const-string v7, "userName"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getAccountInfo()Lio/rong/imlib/model/UserData$AccountInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$AccountInfo;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2789
    const-string v7, "nickName"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getAccountInfo()Lio/rong/imlib/model/UserData$AccountInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$AccountInfo;->getNickName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2791
    const-string v7, "accountInfo"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2794
    .end local v0           #accountInfo:Lorg/json/JSONObject;
    :cond_3
    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 2795
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2797
    .local v2, contactInfo:Lorg/json/JSONObject;
    const-string v7, "tel"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ContactInfo;->getTel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2798
    const-string v7, "email"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ContactInfo;->getEmail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2799
    const-string v7, "address"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ContactInfo;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2800
    const-string v7, "qq"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ContactInfo;->getQQ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2801
    const-string v7, "weibo"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ContactInfo;->getWeibo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2802
    const-string v7, "weixin"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ContactInfo;->getWeixin()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2804
    const-string v7, "contactInfo"

    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2807
    .end local v2           #contactInfo:Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 2808
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2810
    .local v1, clientInfo:Lorg/json/JSONObject;
    const-string v7, "network"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ClientInfo;->getNetwork()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2811
    const-string v7, "carrier"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ClientInfo;->getCarrier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2812
    const-string v7, "systemVersion"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ClientInfo;->getSystemVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2813
    const-string v7, "os"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ClientInfo;->getOs()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2814
    const-string v7, "device"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ClientInfo;->getDevice()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2815
    const-string v7, "mobilePhoneManufacturers"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imlib/model/UserData$ClientInfo;->getMobilePhoneManufacturers()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2817
    const-string v7, "clientInfo"

    invoke-virtual {v4, v7, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2820
    .end local v1           #clientInfo:Lorg/json/JSONObject;
    :cond_5
    const-string v7, "appVersion"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2821
    const-string v7, "extra"

    invoke-virtual {p1}, Lio/rong/imlib/model/UserData;->getExtra()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2823
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2824
    .local v6, result:Ljava/lang/String;
    const-string v7, "NativeClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UserData "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    sget-object v7, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v8, Lio/rong/imlib/NativeClient$42;

    invoke-direct {v8, p0, p2}, Lio/rong/imlib/NativeClient$42;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v7, v6, v8}, Lio/rong/imlib/NativeObject;->SetUserData(Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2843
    .end local v6           #result:Ljava/lang/String;
    :goto_0
    return-void

    .line 2839
    :catch_0
    move-exception v3

    .line 2840
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setupRealTimeLocation(Landroid/content/Context;ILjava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "type"
    .parameter "targetId"

    .prologue
    .line 2993
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 2994
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2996
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 2997
    const-string v0, "NativeClient"

    const-string v1, "setupRealTimeLocation RealTimeLocationManager Not setup!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    const/4 v0, -0x1

    .line 3001
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p2}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lio/rong/imlib/location/RealTimeLocationManager;->setupRealTimeLocation(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public startRealTimeLocation(ILjava/lang/String;)I
    .locals 2
    .parameter "type"
    .parameter "targetId"

    .prologue
    .line 3008
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3009
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3011
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 3012
    const-string v0, "NativeClient"

    const-string v1, "startRealTimeLocation RealTimeLocationManager Not setup!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    const/4 v0, -0x1

    .line 3015
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/location/RealTimeLocationManager;->startRealTimeLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public subscribePublicService(Ljava/lang/String;IZLio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 2
    .parameter "targetId"
    .parameter "categoryId"
    .parameter "subscribe"
    .parameter "callback"

    .prologue
    .line 1071
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v1, Lio/rong/imlib/NativeClient$9;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/NativeClient$9;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeObject;->SubscribeAccount(Ljava/lang/String;IZLio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 1087
    return-void
.end method

.method public syncGroup(Ljava/util/List;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 8
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Group;",
            ">;",
            "Lio/rong/imlib/NativeClient$OperationCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2058
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v6, :cond_0

    .line 2059
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2061
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 2062
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, " groups \u53c2\u6570\u5f02\u5e38\u3002"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2064
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 2065
    .local v3, ids:[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 2066
    .local v5, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2068
    .local v0, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imlib/model/Group;

    .line 2069
    .local v4, item:Lio/rong/imlib/model/Group;
    invoke-virtual {v4}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    .line 2070
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    move v0, v1

    .line 2071
    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 2073
    .end local v4           #item:Lio/rong/imlib/model/Group;
    :cond_3
    sget-object v6, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v7, Lio/rong/imlib/NativeClient$24;

    invoke-direct {v7, p0, p2}, Lio/rong/imlib/NativeClient$24;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V

    invoke-virtual {v6, v3, v5, v7}, Lio/rong/imlib/NativeObject;->SyncGroups([Ljava/lang/String;[Ljava/lang/String;Lio/rong/imlib/NativeObject$PublishAckListener;)V

    .line 2086
    return-void
.end method

.method public updateConversationInfo(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "title"
    .parameter "portrait"

    .prologue
    .line 3155
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3157
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v1

    invoke-virtual {v0, p2, v1, p3, p4}, Lio/rong/imlib/NativeObject;->UpdateConversationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateMessageReceiptStatus(Ljava/lang/String;IJ)Z
    .locals 3
    .parameter "targetId"
    .parameter "categoryId"
    .parameter "timestamp"

    .prologue
    .line 3134
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3137
    :cond_0
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/NativeObject;->UpdateMessageReceiptStatus(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method public updateRealTimeLocationStatus(ILjava/lang/String;DD)V
    .locals 9
    .parameter "type"
    .parameter "targetId"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 3111
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_0

    .line 3112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3114
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    if-nez v0, :cond_1

    .line 3115
    const-string v0, "NativeClient"

    const-string v1, "removeListener RealTimeLocationManager Not setup!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    :goto_0
    return-void

    .line 3118
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/NativeClient;->mRealTimeLocationManager:Lio/rong/imlib/location/RealTimeLocationManager;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/location/RealTimeLocationManager;->updateLocation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;DD)V

    goto :goto_0
.end method

.method public uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V
    .locals 11
    .parameter "message"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Message;",
            "Lio/rong/imlib/NativeClient$IResultProgressCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1732
    .local p2, callback:Lio/rong/imlib/NativeClient$IResultProgressCallback;,"Lio/rong/imlib/NativeClient$IResultProgressCallback<Ljava/lang/String;>;"
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

    .line 1736
    :cond_0
    const-string v0, "NativeClient"

    const-string v1, "conversation type or targetId or message content can\'t be null!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    if-eqz p2, :cond_1

    .line 1738
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v0

    invoke-interface {p2, v0}, Lio/rong/imlib/NativeClient$IResultProgressCallback;->onError(I)V

    .line 1835
    :cond_1
    :goto_0
    return-void

    .line 1743
    :cond_2
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    if-nez v0, :cond_3

    .line 1744
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NativeClient \u5c1a\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1746
    :cond_3
    const/4 v8, 0x0

    .line 1747
    .local v8, localPath:Ljava/lang/String;
    const/4 v9, 0x1

    .line 1748
    .local v9, type:I
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lio/rong/message/ImageMessage;

    if-eqz v0, :cond_6

    .line 1749
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/ImageMessage;

    invoke-virtual {v0}, Lio/rong/message/ImageMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1755
    :cond_4
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "file://"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1756
    :cond_5
    const-string v0, "NativeClient"

    const-string v1, "local path of the media file can\'t be empty!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    if-eqz p2, :cond_1

    .line 1758
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->PARAMETER_ERROR:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->getValue()I

    move-result v0

    invoke-interface {p2, v0}, Lio/rong/imlib/NativeClient$IResultProgressCallback;->onError(I)V

    goto :goto_0

    .line 1750
    :cond_6
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    instance-of v0, v0, Lio/rong/message/FileMessage;

    if-eqz v0, :cond_4

    .line 1751
    const/4 v9, 0x4

    .line 1752
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/FileMessage;

    invoke-virtual {v0}, Lio/rong/message/FileMessage;->getLocalPath()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1763
    :cond_7
    const/4 v0, 0x7

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1764
    .local v4, filePath:Ljava/lang/String;
    move v5, v9

    .line 1765
    .local v5, uploadType:I
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1766
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1767
    .local v6, fileName:Ljava/lang/String;
    invoke-static {v6}, Lio/rong/imlib/filetransfer/FtUtilities;->getMimeType(Ljava/lang/String;)Lio/rong/imlib/filetransfer/FtConst$MimeType;

    move-result-object v2

    .line 1768
    .local v2, mimeType:Lio/rong/imlib/filetransfer/FtConst$MimeType;
    sget-object v10, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    new-instance v0, Lio/rong/imlib/NativeClient$18;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lio/rong/imlib/NativeClient$18;-><init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/filetransfer/FtConst$MimeType;Lio/rong/imlib/NativeClient$IResultProgressCallback;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v5, v0}, Lio/rong/imlib/NativeObject;->GetUploadToken(ILio/rong/imlib/NativeObject$TokenListener;)V

    goto :goto_0
.end method
