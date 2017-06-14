.class Lio/rong/imkit/fragment/ConversationListFragment$5;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationListFragment;->onEventMainThread(Lio/rong/imkit/model/Event$MessageRecallEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationListFragment$5;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 447
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Conversation;)V
    .locals 6
    .parameter "conversation"

    .prologue
    .line 430
    if-nez p1, :cond_0

    .line 431
    invoke-static {}, Lio/rong/imkit/fragment/ConversationListFragment;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onEventMainThread getConversation : onSuccess, conversation = null"

    invoke-static {v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_0
    return-void

    .line 434
    :cond_0
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v2

    .line 436
    .local v2, temp:Lio/rong/imkit/model/UIConversation;
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$5;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v1

    .line 437
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 438
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$5;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 440
    :cond_1
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$5;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/imkit/utils/ConversationListUtils;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/BaseAdapter;)I

    move-result v0

    .line 441
    .local v0, newPosition:I
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$5;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 442
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$5;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 427
    check-cast p1, Lio/rong/imlib/model/Conversation;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$5;->onSuccess(Lio/rong/imlib/model/Conversation;)V

    return-void
.end method
