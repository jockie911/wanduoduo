.class Lio/rong/imkit/notification/MessageCounter$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "MessageCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/notification/MessageCounter;->registerMessageCounter(Lio/rong/imkit/notification/MessageCounter$Counter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field currentConversationMsgCount:I

.field final synthetic this$0:Lio/rong/imkit/notification/MessageCounter;

.field final synthetic val$counter:Lio/rong/imkit/notification/MessageCounter$Counter;


# direct methods
.method constructor <init>(Lio/rong/imkit/notification/MessageCounter;Lio/rong/imkit/notification/MessageCounter$Counter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lio/rong/imkit/notification/MessageCounter$1;->this$0:Lio/rong/imkit/notification/MessageCounter;

    iput-object p2, p0, Lio/rong/imkit/notification/MessageCounter$1;->val$counter:Lio/rong/imkit/notification/MessageCounter$Counter;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/notification/MessageCounter$1;->currentConversationMsgCount:I

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 88
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 8
    .parameter "msgCount"

    .prologue
    .line 74
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getCurrentConversationList()Ljava/util/List;

    move-result-object v2

    .line 76
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/ConversationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/ConversationInfo;

    .line 77
    .local v0, conversationInfo:Lio/rong/imkit/model/ConversationInfo;
    iget v4, p0, Lio/rong/imkit/notification/MessageCounter$1;->currentConversationMsgCount:I

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationInfo;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v0}, Lio/rong/imkit/model/ConversationInfo;->getTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/rong/imkit/RongIM;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lio/rong/imkit/notification/MessageCounter$1;->currentConversationMsgCount:I

    goto :goto_0

    .line 80
    .end local v0           #conversationInfo:Lio/rong/imkit/model/ConversationInfo;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lio/rong/imkit/notification/MessageCounter$1;->currentConversationMsgCount:I

    sub-int v3, v4, v5

    .line 81
    .local v3, totalCount:I
    iget-object v4, p0, Lio/rong/imkit/notification/MessageCounter$1;->val$counter:Lio/rong/imkit/notification/MessageCounter$Counter;

    iput v3, v4, Lio/rong/imkit/notification/MessageCounter$Counter;->mCount:I

    .line 82
    iget-object v4, p0, Lio/rong/imkit/notification/MessageCounter$1;->val$counter:Lio/rong/imkit/notification/MessageCounter$Counter;

    invoke-virtual {v4, v3}, Lio/rong/imkit/notification/MessageCounter$Counter;->onMessageIncreased(I)V

    .line 83
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/notification/MessageCounter$1;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
