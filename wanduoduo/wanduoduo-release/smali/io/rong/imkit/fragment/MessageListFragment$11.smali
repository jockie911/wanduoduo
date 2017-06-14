.class Lio/rong/imkit/fragment/MessageListFragment$11;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment;->handleMessage(Landroid/os/Message;)Z
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
        "Lio/rong/imkit/model/UIMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/MessageListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 634
    const-string v0, "MessageListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHistoryMessages, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iput-boolean v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreLocalMessages:Z

    .line 636
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 637
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iput-boolean v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->isLoading:Z

    .line 638
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 613
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/MessageListFragment$11;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/UIMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    const/4 v3, 0x0

    .line 616
    const-string v2, "MessageListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHistoryMessages unread, onSuccess "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    add-int/lit8 v5, v5, -0x1d

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v4, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreLocalMessages:Z

    .line 618
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v4, v4, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 620
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/UIMessage;

    .line 621
    .local v1, item:Lio/rong/imkit/model/UIMessage;
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2, v1, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->add(Ljava/lang/Object;I)V

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lio/rong/imkit/model/UIMessage;
    :cond_0
    move v2, v3

    .line 617
    goto :goto_0

    .line 623
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 625
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 628
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 629
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$11;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iput-boolean v3, v2, Lio/rong/imkit/fragment/MessageListFragment;->isLoading:Z

    .line 630
    return-void
.end method
