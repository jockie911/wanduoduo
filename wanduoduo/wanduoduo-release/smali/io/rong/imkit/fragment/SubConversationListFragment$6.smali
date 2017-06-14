.class Lio/rong/imkit/fragment/SubConversationListFragment$6;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "SubConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/SubConversationListFragment;->onEventMainThread(Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;)V
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
.field final synthetic this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/SubConversationListFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lio/rong/imkit/fragment/SubConversationListFragment$6;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    iput p2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$6;->val$index:I

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 663
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Conversation;)V
    .locals 4
    .parameter "conversation"

    .prologue
    .line 650
    if-nez p1, :cond_0

    .line 651
    const-string v2, "SubConversationListFragment"

    const-string v3, "onEventMainThread getConversation : onSuccess, conversation = null"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :goto_0
    return-void

    .line 654
    :cond_0
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v1

    .line 655
    .local v1, temp:Lio/rong/imkit/model/UIConversation;
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$6;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
    invoke-static {v2}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v2

    iget v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment$6;->val$index:I

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 656
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$6;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
    invoke-static {v2}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/imkit/utils/ConversationListUtils;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/BaseAdapter;)I

    move-result v0

    .line 657
    .local v0, newPosition:I
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$6;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
    invoke-static {v2}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 658
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment$6;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
    invoke-static {v2}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 647
    check-cast p1, Lio/rong/imlib/model/Conversation;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/SubConversationListFragment$6;->onSuccess(Lio/rong/imlib/model/Conversation;)V

    return-void
.end method
