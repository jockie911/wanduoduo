.class Lio/rong/imkit/fragment/ConversationListFragment$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/fragment/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lio/rong/imlib/model/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 94
    invoke-static {}, Lio/rong/imkit/fragment/ConversationListFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConversationListFragment initFragment onError callback, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {p1, v0}, Lio/rong/imlib/RongIMClient$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    const/4 v1, 0x1

    #setter for: Lio/rong/imkit/fragment/ConversationListFragment;->isShowWithoutConnected:Z
    invoke-static {v0, v1}, Lio/rong/imkit/fragment/ConversationListFragment;->access$402(Lio/rong/imkit/fragment/ConversationListFragment;Z)Z

    .line 98
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, conversations:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    invoke-static {}, Lio/rong/imkit/fragment/ConversationListFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConversationListFragment initFragment onSuccess callback : list = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v0}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v0}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v0}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->clear()V

    .line 76
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 77
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v0}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v0}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    .line 90
    :cond_2
    :goto_1
    return-void

    .line 69
    :cond_3
    const-string v0, "null"

    goto :goto_0

    .line 82
    :cond_4
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v0}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v0

    if-nez v0, :cond_5

    .line 83
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    new-instance v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;-><init>(Landroid/content/Context;)V

    #setter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v0, v1}, Lio/rong/imkit/fragment/ConversationListFragment;->access$102(Lio/rong/imkit/fragment/ConversationListFragment;Lio/rong/imkit/widget/adapter/ConversationListAdapter;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    .line 85
    :cond_5
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #calls: Lio/rong/imkit/fragment/ConversationListFragment;->makeUiConversationList(Ljava/util/List;)V
    invoke-static {v0, p1}, Lio/rong/imkit/fragment/ConversationListFragment;->access$200(Lio/rong/imkit/fragment/ConversationListFragment;Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lio/rong/imkit/fragment/ConversationListFragment;->access$300(Lio/rong/imkit/fragment/ConversationListFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lio/rong/imkit/fragment/ConversationListFragment;->access$300(Lio/rong/imkit/fragment/ConversationListFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v0}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
