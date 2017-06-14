.class Lcom/wanduoduo/base/BaseListRefreshFragment$1;
.super Landroid/os/Handler;
.source "BaseListRefreshFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/base/BaseListRefreshFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/base/BaseListRefreshFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x463

    .line 75
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 76
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget-object v2, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    invoke-virtual {v2, v0}, Lcom/wanduoduo/base/BaseListRefreshFragment;->parseData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wanduoduo/base/BaseListRefreshFragment;->updateAdapter(Ljava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget-object v1, v1, Lcom/wanduoduo/base/BaseListRefreshFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget-boolean v1, v1, Lcom/wanduoduo/base/BaseListRefreshFragment;->isRefreshData:Z

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget-object v1, v1, Lcom/wanduoduo/base/BaseListRefreshFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v1}, Lcom/cjj/MaterialRefreshLayout;->finishRefresh()V

    .line 86
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget-object v1, v1, Lcom/wanduoduo/base/BaseListRefreshFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 96
    .end local v0           #result:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 83
    .restart local v0       #result:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget-object v1, v1, Lcom/wanduoduo/base/BaseListRefreshFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v1}, Lcom/cjj/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0

    .line 87
    .end local v0           #result:Ljava/lang/String;
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget-object v1, v1, Lcom/wanduoduo/base/BaseListRefreshFragment;->tvEmpty:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 88
    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    #getter for: Lcom/wanduoduo/base/BaseListRefreshFragment;->isEmpty:Z
    invoke-static {v1}, Lcom/wanduoduo/base/BaseListRefreshFragment;->access$100(Lcom/wanduoduo/base/BaseListRefreshFragment;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget-object v1, v1, Lcom/wanduoduo/base/BaseListRefreshFragment;->tvEmpty:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget-object v1, v1, Lcom/wanduoduo/base/BaseListRefreshFragment;->tvEmpty:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 93
    :cond_5
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x4d2

    if-ne v1, v2, :cond_1

    .line 94
    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget-object v1, v1, Lcom/wanduoduo/base/BaseListRefreshFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v1}, Lcom/cjj/MaterialRefreshLayout;->autoRefresh()V

    goto :goto_1
.end method
