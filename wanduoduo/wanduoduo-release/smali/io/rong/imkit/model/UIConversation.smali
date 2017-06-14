.class public Lio/rong/imkit/model/UIConversation;
.super Ljava/lang/Object;
.source "UIConversation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/model/UIConversation$UnreadRemindType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imkit/model/UIConversation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private conversationContent:Landroid/text/Spannable;

.field private conversationTime:J

.field private conversationTitle:Ljava/lang/String;

.field private conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private draft:Ljava/lang/String;

.field private extraFlag:Z

.field private isGathered:Z

.field private isMentioned:Z

.field private isTop:Z

.field private latestMessageId:I

.field private mUnreadType:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

.field private messageContent:Lio/rong/imlib/model/MessageContent;

.field private nicknameIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notificationBlockStatus:Z

.field private portrait:Landroid/net/Uri;

.field private senderId:Ljava/lang/String;

.field private sentStatus:Lio/rong/imlib/model/Message$SentStatus;

.field private targetId:Ljava/lang/String;

.field private unReadMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 457
    new-instance v0, Lio/rong/imkit/model/UIConversation$1;

    invoke-direct {v0}, Lio/rong/imkit/model/UIConversation$1;-><init>()V

    sput-object v0, Lio/rong/imkit/model/UIConversation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    sget-object v0, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    iput-object v0, p0, Lio/rong/imkit/model/UIConversation;->mUnreadType:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/model/UIConversation;->nicknameIds:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public static obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;
    .locals 7
    .parameter "conversation"
    .parameter "gatherState"

    .prologue
    const/4 v6, 0x0

    .line 201
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    if-nez v4, :cond_0

    .line 202
    new-instance v4, Ljava/lang/ExceptionInInitializerError;

    const-string v5, "RongContext hasn\'t been initialized !!"

    invoke-direct {v4, v5}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 204
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v4

    if-nez v4, :cond_1

    .line 205
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the conversation type hasn\'t been registered! type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_1
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessage()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 212
    .local v0, msgContent:Lio/rong/imlib/model/MessageContent;
    const/4 v3, 0x0

    .line 213
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getPortraitUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 214
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getPortraitUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 215
    :cond_2
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationTitle()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, title:Ljava/lang/String;
    if-eqz v3, :cond_3

    if-nez v1, :cond_4

    .line 235
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v4

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v4

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getPortraitUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 242
    :cond_4
    new-instance v2, Lio/rong/imkit/model/UIConversation;

    invoke-direct {v2}, Lio/rong/imkit/model/UIConversation;-><init>()V

    .line 243
    .local v2, uiConversation:Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v2, v0}, Lio/rong/imkit/model/UIConversation;->setMessageContent(Lio/rong/imlib/model/MessageContent;)V

    .line 244
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getUnreadMessageCount()I

    move-result v4

    invoke-virtual {v2, v4}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 245
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSentTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 246
    invoke-virtual {v2, p1}, Lio/rong/imkit/model/UIConversation;->setConversationGatherState(Z)V

    .line 247
    if-eqz p1, :cond_6

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 248
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getGatheredConversationTitle(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2, v6}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    .line 254
    :goto_0
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/rong/imkit/model/UIConversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 255
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->isTop()Z

    move-result v4

    invoke-virtual {v2, v4}, Lio/rong/imkit/model/UIConversation;->setTop(Z)V

    .line 256
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 257
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/rong/imkit/model/UIConversation;->setConversationTargetId(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getLatestMessageId()I

    move-result v4

    invoke-virtual {v2, v4}, Lio/rong/imkit/model/UIConversation;->setLatestMessageId(I)V

    .line 260
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getDraft()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/rong/imkit/model/UIConversation;->setDraft(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getMentionedCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 263
    const/4 v4, 0x1

    iput-boolean v4, v2, Lio/rong/imkit/model/UIConversation;->isMentioned:Z

    .line 268
    :goto_1
    invoke-virtual {p0}, Lio/rong/imlib/model/Conversation;->getDraft()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 269
    invoke-virtual {v2, v6}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 271
    :cond_5
    invoke-virtual {v2, v2}, Lio/rong/imkit/model/UIConversation;->buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 273
    return-object v2

    .line 251
    :cond_6
    invoke-virtual {v2, v1}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    goto :goto_0

    .line 265
    :cond_7
    const/4 v4, 0x0

    iput-boolean v4, v2, Lio/rong/imkit/model/UIConversation;->isMentioned:Z

    goto :goto_1
.end method

.method public static obtain(Lio/rong/imlib/model/Message;Z)Lio/rong/imkit/model/UIConversation;
    .locals 12
    .parameter "message"
    .parameter "gather"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 277
    const-string v3, ""

    .line 278
    .local v3, title:Ljava/lang/String;
    const/4 v7, 0x0

    .line 279
    .local v7, iconUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v10

    .line 280
    .local v10, userInfo:Lio/rong/imlib/model/UserInfo;
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    .line 282
    .local v6, conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6, v0}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6, v0}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    invoke-virtual {v10}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v7

    .line 287
    invoke-virtual {v10}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/RongIMClient;->updateConversationInfo(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 291
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v7, :cond_2

    if-nez v3, :cond_3

    .line 292
    :cond_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getPortraitUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 298
    :cond_3
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/rong/imlib/MessageTag;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lio/rong/imlib/MessageTag;

    .line 299
    .local v8, tag:Lio/rong/imlib/MessageTag;
    new-instance v9, Lio/rong/imkit/model/UIConversation;

    invoke-direct {v9}, Lio/rong/imkit/model/UIConversation;-><init>()V

    .line 300
    .local v9, tempUIConversation:Lio/rong/imkit/model/UIConversation;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    invoke-virtual {v9, v11}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 303
    :cond_4
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setMessageContent(Lio/rong/imlib/model/MessageContent;)V

    .line 304
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 305
    if-eqz p1, :cond_6

    .line 306
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getGatheredConversationTitle(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v9, v5}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    .line 312
    :goto_1
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 313
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationTargetId(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v0, v1, :cond_7

    .line 315
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    .line 320
    :goto_2
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 321
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setLatestMessageId(I)V

    .line 322
    invoke-virtual {v9, p1}, Lio/rong/imkit/model/UIConversation;->setConversationGatherState(Z)V

    .line 323
    invoke-virtual {v9, v9}, Lio/rong/imkit/model/UIConversation;->buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 324
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/MessageContent;->getMentionedInfo()Lio/rong/imlib/model/MentionedInfo;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setMentionedFlag(Z)V

    .line 326
    return-object v9

    .line 288
    .end local v8           #tag:Lio/rong/imlib/MessageTag;
    .end local v9           #tempUIConversation:Lio/rong/imkit/model/UIConversation;
    :cond_5
    const-string v4, ""

    goto/16 :goto_0

    .line 309
    .restart local v8       #tag:Lio/rong/imlib/MessageTag;
    .restart local v9       #tempUIConversation:Lio/rong/imkit/model/UIConversation;
    :cond_6
    invoke-virtual {v9, v3}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v9, v7}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    goto :goto_1

    .line 317
    :cond_7
    invoke-virtual {p0}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v0, v11

    .line 324
    goto :goto_3
.end method


# virtual methods
.method public addNickname(Ljava/lang/String;)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 182
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->nicknameIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;
    .locals 22
    .parameter "uiConversation"

    .prologue
    .line 330
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationGatherState()Z

    move-result v7

    .line 331
    .local v7, isGathered:Z
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v16

    .line 332
    .local v16, type:Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 336
    .local v4, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v18

    if-nez v18, :cond_0

    .line 337
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 419
    .end local v4           #builder:Landroid/text/SpannableStringBuilder;
    :goto_0
    return-object v4

    .line 341
    .restart local v4       #builder:Landroid/text/SpannableStringBuilder;
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/RongContext;->getMessageProviderTag(Ljava/lang/Class;)Lio/rong/imkit/model/ProviderTag;

    move-result-object v12

    .line 342
    .local v12, providerTag:Lio/rong/imkit/model/ProviderTag;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v11

    .line 344
    .local v11, messageProvider:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    if-eqz v12, :cond_1

    if-nez v11, :cond_2

    .line 345
    :cond_1
    const-string v18, "UIMessage"

    const-string v19, "Can not find ProviderTag"

    invoke-static/range {v18 .. v19}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v10

    .line 350
    .local v10, messageData:Landroid/text/Spannable;
    invoke-interface {v12}, Lio/rong/imkit/model/ProviderTag;->showSummaryWithName()Z

    move-result v9

    .line 351
    .local v9, isShowName:Z
    if-nez v10, :cond_3

    .line 352
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 357
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lio/rong/message/VoiceMessage;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 358
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lio/rong/imkit/RongIM;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v5

    .line 359
    .local v5, conv:Lio/rong/imlib/model/Conversation;
    if-eqz v5, :cond_5

    .line 360
    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v8

    .line 361
    .local v8, isListened:Z
    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    if-eqz v8, :cond_6

    .line 362
    :cond_4
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    invoke-direct/range {v18 .. v19}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v19, 0x0

    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v20

    const/16 v21, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v10, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 369
    .end local v5           #conv:Lio/rong/imlib/model/Conversation;
    .end local v8           #isListened:Z
    :cond_5
    :goto_1
    if-nez v9, :cond_7

    .line 370
    invoke-virtual {v4, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 364
    .restart local v5       #conv:Lio/rong/imlib/model/Conversation;
    .restart local v8       #isListened:Z
    :cond_6
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    invoke-direct/range {v18 .. v19}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v19, 0x0

    invoke-interface {v10}, Landroid/text/Spannable;->length()I

    move-result v20

    const/16 v21, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v10, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 374
    .end local v5           #conv:Lio/rong/imlib/model/Conversation;
    .end local v8           #isListened:Z
    :cond_7
    sget-object v18, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    sget-object v18, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 375
    :cond_8
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lio/rong/imkit/RongIM;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v5

    .line 376
    .restart local v5       #conv:Lio/rong/imlib/model/Conversation;
    if-eqz v5, :cond_9

    .line 377
    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 378
    invoke-virtual {v4, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    goto/16 :goto_0

    .line 384
    .end local v5           #conv:Lio/rong/imlib/model/Conversation;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v13

    .line 385
    .local v13, senderId:Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 386
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 388
    .local v15, targetName:Ljava/lang/String;
    if-nez v15, :cond_a

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v15

    .end local v15           #targetName:Ljava/lang/String;
    :cond_a
    invoke-virtual {v4, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 391
    :cond_b
    sget-object v18, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 393
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lio/rong/imkit/model/UIConversation;->targetId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getGroupUserInfo(Ljava/lang/String;Ljava/lang/String;)Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v6

    .line 394
    .local v6, info:Lio/rong/imkit/model/GroupUserInfo;
    if-eqz v6, :cond_d

    .line 395
    invoke-virtual {v6}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v14

    .line 406
    .local v14, senderName:Ljava/lang/String;
    :goto_2
    if-nez v14, :cond_10

    if-nez v13, :cond_c

    const-string v13, ""

    .end local v13           #senderId:Ljava/lang/String;
    :cond_c
    :goto_3
    invoke-virtual {v4, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 397
    .end local v14           #senderName:Ljava/lang/String;
    .restart local v13       #senderId:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/MessageContent;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v17

    .line 398
    .local v17, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_f

    .line 399
    :cond_e
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #senderName:Ljava/lang/String;
    goto :goto_2

    .line 403
    .end local v14           #senderName:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v14

    .restart local v14       #senderName:Ljava/lang/String;
    goto :goto_2

    .end local v17           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_10
    move-object v13, v14

    .line 406
    goto :goto_3

    .line 409
    .end local v6           #info:Lio/rong/imkit/model/GroupUserInfo;
    .end local v14           #senderName:Ljava/lang/String;
    :cond_11
    sget-object v18, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 410
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v18

    sget-object v19, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v19 .. v19}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 413
    .restart local v14       #senderName:Ljava/lang/String;
    if-nez v14, :cond_13

    if-nez v13, :cond_12

    const-string v13, ""

    .end local v13           #senderId:Ljava/lang/String;
    :cond_12
    :goto_4
    invoke-virtual {v4, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .restart local v13       #senderId:Ljava/lang/String;
    :cond_13
    move-object v13, v14

    goto :goto_4

    .line 417
    .end local v14           #senderName:Ljava/lang/String;
    :cond_14
    invoke-virtual {v4, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method public getConversationContent()Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->conversationContent:Landroid/text/Spannable;

    return-object v0
.end method

.method public getConversationGatherState()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lio/rong/imkit/model/UIConversation;->isGathered:Z

    return v0
.end method

.method public getConversationSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public getDraft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->draft:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraFlag()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lio/rong/imkit/model/UIConversation;->extraFlag:Z

    return v0
.end method

.method public getIconUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->portrait:Landroid/net/Uri;

    return-object v0
.end method

.method public getLatestMessageId()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lio/rong/imkit/model/UIConversation;->latestMessageId:I

    return v0
.end method

.method public getMentionedFlag()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lio/rong/imkit/model/UIConversation;->isMentioned:Z

    return v0
.end method

.method public getMessageContent()Lio/rong/imlib/model/MessageContent;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->messageContent:Lio/rong/imlib/model/MessageContent;

    return-object v0
.end method

.method public getNotificationBlockStatus()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lio/rong/imkit/model/UIConversation;->notificationBlockStatus:Z

    return v0
.end method

.method public getSentStatus()Lio/rong/imlib/model/Message$SentStatus;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    return-object v0
.end method

.method public getUIConversationTime()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lio/rong/imkit/model/UIConversation;->conversationTime:J

    return-wide v0
.end method

.method public getUIConversationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->conversationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUnReadMessageCount()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lio/rong/imkit/model/UIConversation;->unReadMessageCount:I

    return v0
.end method

.method public getUnReadType()Lio/rong/imkit/model/UIConversation$UnreadRemindType;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->mUnreadType:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    return-object v0
.end method

.method public hasNickname(Ljava/lang/String;)Z
    .locals 1
    .parameter "userId"

    .prologue
    .line 190
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->nicknameIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lio/rong/imkit/model/UIConversation;->isTop:Z

    return v0
.end method

.method public removeNickName(Ljava/lang/String;)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 186
    iget-object v0, p0, Lio/rong/imkit/model/UIConversation;->nicknameIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public setConversationContent(Landroid/text/Spannable;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 78
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->conversationContent:Landroid/text/Spannable;

    .line 79
    return-void
.end method

.method public setConversationGatherState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 150
    iput-boolean p1, p0, Lio/rong/imkit/model/UIConversation;->isGathered:Z

    .line 151
    return-void
.end method

.method public setConversationSenderId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 142
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->senderId:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setConversationTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 134
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->targetId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 118
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 119
    return-void
.end method

.method public setDraft(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 166
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->draft:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setExtraFlag(Z)V
    .locals 0
    .parameter "extraFlag"

    .prologue
    .line 51
    iput-boolean p1, p0, Lio/rong/imkit/model/UIConversation;->extraFlag:Z

    .line 52
    return-void
.end method

.method public setIconUrl(Landroid/net/Uri;)V
    .locals 0
    .parameter "iconUrl"

    .prologue
    .line 70
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->portrait:Landroid/net/Uri;

    .line 71
    return-void
.end method

.method public setLatestMessageId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 174
    iput p1, p0, Lio/rong/imkit/model/UIConversation;->latestMessageId:I

    .line 175
    return-void
.end method

.method public setMentionedFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 194
    iput-boolean p1, p0, Lio/rong/imkit/model/UIConversation;->isMentioned:Z

    .line 195
    return-void
.end method

.method public setMessageContent(Lio/rong/imlib/model/MessageContent;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 86
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->messageContent:Lio/rong/imlib/model/MessageContent;

    .line 87
    return-void
.end method

.method public setNotificationBlockStatus(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 158
    iput-boolean p1, p0, Lio/rong/imkit/model/UIConversation;->notificationBlockStatus:Z

    .line 159
    return-void
.end method

.method public setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 126
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->sentStatus:Lio/rong/imlib/model/Message$SentStatus;

    .line 127
    return-void
.end method

.method public setTop(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 110
    iput-boolean p1, p0, Lio/rong/imkit/model/UIConversation;->isTop:Z

    .line 111
    return-void
.end method

.method public setUIConversationTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 94
    iput-wide p1, p0, Lio/rong/imkit/model/UIConversation;->conversationTime:J

    .line 95
    return-void
.end method

.method public setUIConversationTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 62
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->conversationTitle:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setUnReadMessageCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 102
    iput p1, p0, Lio/rong/imkit/model/UIConversation;->unReadMessageCount:I

    .line 103
    return-void
.end method

.method public setUnreadType(Lio/rong/imkit/model/UIConversation$UnreadRemindType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 425
    iput-object p1, p0, Lio/rong/imkit/model/UIConversation;->mUnreadType:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    .line 426
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 455
    return-void
.end method
