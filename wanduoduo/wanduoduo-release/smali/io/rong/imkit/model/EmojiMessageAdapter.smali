.class public Lio/rong/imkit/model/EmojiMessageAdapter;
.super Ljava/lang/Object;
.source "EmojiMessageAdapter.java"


# static fields
.field private static mLogic:Lio/rong/imkit/model/EmojiMessageAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/model/EmojiMessageAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lio/rong/imkit/model/EmojiMessageAdapter;->emojiMessageToUIMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final emojiMessageToUIMessage(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/UIMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, msgList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 106
    :cond_0
    return-object v2

    .line 94
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/model/Message;

    .line 95
    .local v1, message:Lio/rong/imlib/model/Message;
    invoke-static {v1}, Lio/rong/imkit/model/UIMessage;->obtain(Lio/rong/imlib/model/Message;)Lio/rong/imkit/model/UIMessage;

    move-result-object v5

    .line 96
    .local v5, uiMessage:Lio/rong/imkit/model/UIMessage;
    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    instance-of v6, v6, Lio/rong/message/TextMessage;

    if-eqz v6, :cond_2

    .line 97
    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    check-cast v4, Lio/rong/message/TextMessage;

    .line 98
    .local v4, textMessage:Lio/rong/message/TextMessage;
    invoke-virtual {v4}, Lio/rong/message/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 99
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Lio/rong/message/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 100
    .local v3, spannable:Landroid/text/SpannableStringBuilder;
    invoke-static {v3}, Lio/rong/imkit/utils/AndroidEmoji;->ensure(Landroid/text/Spannable;)V

    .line 101
    invoke-virtual {v5, v3}, Lio/rong/imkit/model/UIMessage;->setTextMessageContent(Landroid/text/SpannableStringBuilder;)V

    .line 104
    .end local v3           #spannable:Landroid/text/SpannableStringBuilder;
    .end local v4           #textMessage:Lio/rong/message/TextMessage;
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInstance()Lio/rong/imkit/model/EmojiMessageAdapter;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lio/rong/imkit/model/EmojiMessageAdapter;->mLogic:Lio/rong/imkit/model/EmojiMessageAdapter;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    new-instance v0, Lio/rong/imkit/model/EmojiMessageAdapter;

    invoke-direct {v0}, Lio/rong/imkit/model/EmojiMessageAdapter;-><init>()V

    sput-object v0, Lio/rong/imkit/model/EmojiMessageAdapter;->mLogic:Lio/rong/imkit/model/EmojiMessageAdapter;

    .line 22
    return-void
.end method


# virtual methods
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
            "Lio/rong/imkit/model/UIMessage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p5, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;>;"
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    new-instance v5, Lio/rong/imkit/model/EmojiMessageAdapter$1;

    invoke-direct {v5, p0, p5}, Lio/rong/imkit/model/EmojiMessageAdapter$1;-><init>(Lio/rong/imkit/model/EmojiMessageAdapter;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imkit/RongIM;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 46
    return-void
.end method

.method public getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 2
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
            "Lio/rong/imkit/model/UIMessage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p4, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;>;"
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/model/EmojiMessageAdapter$3;

    invoke-direct {v1, p0, p4}, Lio/rong/imkit/model/EmojiMessageAdapter$3;-><init>(Lio/rong/imkit/model/EmojiMessageAdapter;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imkit/RongIM;->getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 86
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
            "Lio/rong/imkit/model/UIMessage;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p6, callback:Lio/rong/imlib/RongIMClient$ResultCallback;,"Lio/rong/imlib/RongIMClient$ResultCallback<Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;>;"
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    new-instance v7, Lio/rong/imkit/model/EmojiMessageAdapter$2;

    invoke-direct {v7, p0, p6}, Lio/rong/imkit/model/EmojiMessageAdapter$2;-><init>(Lio/rong/imkit/model/EmojiMessageAdapter;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/RongIMClient;->getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 64
    return-void
.end method
