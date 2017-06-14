.class Lio/rong/imkit/fragment/MessageListFragment$10;
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
    .line 567
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 601
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iput-boolean v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreRemoteMessages:Z

    .line 602
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 603
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iput-boolean v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->isLoading:Z

    .line 604
    const-string v0, "MessageListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteHistoryMessages, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 567
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/MessageListFragment$10;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 13
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
    .local p1, uiMessages:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    const/4 v10, 0x0

    .line 570
    iget-object v9, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v9, v9, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v11, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v11, v11, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 571
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 572
    :cond_0
    iget-object v9, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iput-boolean v10, v9, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreRemoteMessages:Z

    .line 596
    :goto_0
    iget-object v9, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iput-boolean v10, v9, Lio/rong/imkit/fragment/MessageListFragment;->isLoading:Z

    .line 597
    return-void

    .line 574
    :cond_1
    const-string v9, "MessageListFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getRemoteHistoryMessages, onSuccess "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v11, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    const/16 v12, 0xa

    if-lt v9, v12, :cond_4

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, v11, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreRemoteMessages:Z

    .line 576
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v1, filterMsg:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imkit/model/UIMessage;

    .line 578
    .local v5, m:Lio/rong/imkit/model/UIMessage;
    invoke-virtual {v5}, Lio/rong/imkit/model/UIMessage;->getUId()Ljava/lang/String;

    move-result-object v8

    .line 579
    .local v8, uid:Ljava/lang/String;
    iget-object v9, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v9, v9, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v9}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v0

    .line 580
    .local v0, count:I
    const/4 v6, 0x1

    .line 581
    .local v6, result:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-ge v2, v0, :cond_3

    .line 582
    iget-object v9, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v9, v9, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v9, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIMessage;

    .line 583
    .local v4, item:Lio/rong/imkit/model/UIMessage;
    invoke-virtual {v4}, Lio/rong/imkit/model/UIMessage;->getUId()Ljava/lang/String;

    move-result-object v7

    .line 584
    .local v7, targetUid:Ljava/lang/String;
    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 585
    const/4 v6, 0x0

    .line 589
    .end local v4           #item:Lio/rong/imkit/model/UIMessage;
    .end local v7           #targetUid:Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_2

    .line 590
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v0           #count:I
    .end local v1           #filterMsg:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #m:Lio/rong/imkit/model/UIMessage;
    .end local v6           #result:Z
    .end local v8           #uid:Ljava/lang/String;
    :cond_4
    move v9, v10

    .line 575
    goto :goto_1

    .line 581
    .restart local v0       #count:I
    .restart local v1       #filterMsg:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #item:Lio/rong/imkit/model/UIMessage;
    .restart local v5       #m:Lio/rong/imkit/model/UIMessage;
    .restart local v6       #result:Z
    .restart local v7       #targetUid:Ljava/lang/String;
    .restart local v8       #uid:Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 593
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v4           #item:Lio/rong/imkit/model/UIMessage;
    .end local v5           #m:Lio/rong/imkit/model/UIMessage;
    .end local v6           #result:Z
    .end local v7           #targetUid:Ljava/lang/String;
    .end local v8           #uid:Ljava/lang/String;
    :cond_6
    const-string v9, "MessageListFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getRemoteHistoryMessages, src: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dest: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v9, p0, Lio/rong/imkit/fragment/MessageListFragment$10;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-virtual {v9}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v11, 0x6

    invoke-virtual {v9, v11, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
