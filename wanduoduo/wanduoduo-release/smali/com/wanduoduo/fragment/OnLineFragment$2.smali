.class Lcom/wanduoduo/fragment/OnLineFragment$2;
.super Lcom/cjj/MaterialRefreshListener;
.source "OnLineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/OnLineFragment;->initRefreshListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/OnLineFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/OnLineFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    invoke-direct {p0}, Lcom/cjj/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 2
    .parameter "materialRefreshLayout"

    .prologue
    const/4 v1, 0x1

    .line 113
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v0}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v0

    iput v1, v0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->page:I

    .line 114
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v0}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v0

    iput-boolean v1, v0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isRefreshData:Z

    .line 115
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v0}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v1, v1, Lcom/wanduoduo/fragment/OnLineFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->closeRefresh(Lcom/cjj/MaterialRefreshLayout;)V

    .line 116
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v0}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->sendDataRequest()V

    .line 117
    return-void
.end method

.method public onRefreshLoadMore(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 2
    .parameter "materialRefreshLayout"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v0}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v0

    iget v0, v0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->page:I

    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v1}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->getTotalPage()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v0}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v0

    iget v1, v0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->page:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->page:I

    .line 123
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v0}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isRefreshData:Z

    .line 124
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v0}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v1, v1, Lcom/wanduoduo/fragment/OnLineFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->closeRefresh(Lcom/cjj/MaterialRefreshLayout;)V

    .line 125
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    #getter for: Lcom/wanduoduo/fragment/OnLineFragment;->onLineChooseFragment:Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
    invoke-static {v0}, Lcom/wanduoduo/fragment/OnLineFragment;->access$100(Lcom/wanduoduo/fragment/OnLineFragment;)Lcom/wanduoduo/fragment/online/OnLineChooseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->sendDataRequest()V

    .line 129
    :goto_0
    invoke-super {p0, p1}, Lcom/cjj/MaterialRefreshListener;->onRefreshLoadMore(Lcom/cjj/MaterialRefreshLayout;)V

    .line 130
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/OnLineFragment$2;->this$0:Lcom/wanduoduo/fragment/OnLineFragment;

    iget-object v0, v0, Lcom/wanduoduo/fragment/OnLineFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/cjj/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method
