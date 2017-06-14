.class public Lio/rong/imkit/model/UIMessage;
.super Lio/rong/imlib/model/Message;
.source "UIMessage.java"


# instance fields
.field public continuePalyAudio:Z

.field private evaluated:Z

.field private isHistroyMessage:Z

.field private mProgress:I

.field private mUserInfo:Lio/rong/imlib/model/UserInfo;

.field private textMessageContent:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lio/rong/imlib/model/Message;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imkit/model/UIMessage;->evaluated:Z

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imkit/model/UIMessage;->isHistroyMessage:Z

    return-void
.end method

.method public static obtain(Lio/rong/imlib/model/Message;)Lio/rong/imkit/model/UIMessage;
    .locals 4
    .parameter "message"

    .prologue
    .line 49
    new-instance v0, Lio/rong/imkit/model/UIMessage;

    invoke-direct {v0}, Lio/rong/imkit/model/UIMessage;-><init>()V

    .line 51
    .local v0, uiMessage:Lio/rong/imkit/model/UIMessage;
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 52
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setTargetId(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setMessageId(I)V

    .line 54
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setObjectName(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 56
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 57
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setSenderUserId(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 59
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 60
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getReceivedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/rong/imkit/model/UIMessage;->setReceivedTime(J)V

    .line 61
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/rong/imkit/model/UIMessage;->setSentTime(J)V

    .line 62
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setExtra(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 64
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getUId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/UIMessage;->setUId(Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/rong/imkit/model/UIMessage;->continuePalyAudio:Z

    .line 66
    return-object v0
.end method


# virtual methods
.method public getEvaluated()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lio/rong/imkit/model/UIMessage;->evaluated:Z

    return v0
.end method

.method public getIsHistoryMessage()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lio/rong/imkit/model/UIMessage;->isHistroyMessage:Z

    return v0
.end method

.method public getMessage()Lio/rong/imlib/model/Message;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lio/rong/imlib/model/Message;

    invoke-direct {v0}, Lio/rong/imlib/model/Message;-><init>()V

    .line 31
    .local v0, message:Lio/rong/imlib/model/Message;
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 32
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setTargetId(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setMessageId(I)V

    .line 34
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setObjectName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 36
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 37
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 39
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setMessageDirection(Lio/rong/imlib/model/Message$MessageDirection;)V

    .line 40
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getReceivedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/rong/imlib/model/Message;->setReceivedTime(J)V

    .line 41
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 42
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setExtra(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getUId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setUId(Ljava/lang/String;)V

    .line 45
    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lio/rong/imkit/model/UIMessage;->mProgress:I

    return v0
.end method

.method public getTextMessageContent()Landroid/text/SpannableStringBuilder;
    .locals 3

    .prologue
    .line 71
    iget-object v2, p0, Lio/rong/imkit/model/UIMessage;->textMessageContent:Landroid/text/SpannableStringBuilder;

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    instance-of v2, v2, Lio/rong/message/TextMessage;

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    check-cast v1, Lio/rong/message/TextMessage;

    .line 75
    .local v1, textMessage:Lio/rong/message/TextMessage;
    invoke-virtual {v1}, Lio/rong/message/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Lio/rong/message/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 77
    .local v0, spannable:Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lio/rong/imkit/utils/AndroidEmoji;->ensure(Landroid/text/Spannable;)V

    .line 78
    invoke-virtual {p0, v0}, Lio/rong/imkit/model/UIMessage;->setTextMessageContent(Landroid/text/SpannableStringBuilder;)V

    .line 83
    .end local v0           #spannable:Landroid/text/SpannableStringBuilder;
    .end local v1           #textMessage:Lio/rong/message/TextMessage;
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/model/UIMessage;->textMessageContent:Landroid/text/SpannableStringBuilder;

    return-object v2
.end method

.method public getUserInfo()Lio/rong/imlib/model/UserInfo;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lio/rong/imkit/model/UIMessage;->mUserInfo:Lio/rong/imlib/model/UserInfo;

    return-object v0
.end method

.method public setEvaluated(Z)V
    .locals 0
    .parameter "evaluated"

    .prologue
    .line 109
    iput-boolean p1, p0, Lio/rong/imkit/model/UIMessage;->evaluated:Z

    .line 110
    return-void
.end method

.method public setIsHistoryMessage(Z)V
    .locals 0
    .parameter "isHistroyMessage"

    .prologue
    .line 117
    iput-boolean p1, p0, Lio/rong/imkit/model/UIMessage;->isHistroyMessage:Z

    .line 118
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 101
    iput p1, p0, Lio/rong/imkit/model/UIMessage;->mProgress:I

    .line 102
    return-void
.end method

.method public setTextMessageContent(Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .parameter "textMessageContent"

    .prologue
    .line 87
    iput-object p1, p0, Lio/rong/imkit/model/UIMessage;->textMessageContent:Landroid/text/SpannableStringBuilder;

    .line 88
    return-void
.end method

.method public setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    .locals 1
    .parameter "userInfo"

    .prologue
    .line 96
    invoke-virtual {p0}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    iput-object p1, p0, Lio/rong/imkit/model/UIMessage;->mUserInfo:Lio/rong/imlib/model/UserInfo;

    .line 98
    :cond_0
    return-void
.end method
