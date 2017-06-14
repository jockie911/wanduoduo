.class Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;
.super Lcom/cjj/MaterialRefreshListener;
.source "BaseListRefreshFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/base/BaseListRefreshFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMaterialRefreshListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/base/BaseListRefreshFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    invoke-direct {p0}, Lcom/cjj/MaterialRefreshListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanduoduo/base/BaseListRefreshFragment;Lcom/wanduoduo/base/BaseListRefreshFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;-><init>(Lcom/wanduoduo/base/BaseListRefreshFragment;)V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 1
    .parameter "materialRefreshLayout"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    invoke-virtual {v0}, Lcom/wanduoduo/base/BaseListRefreshFragment;->onRefreshing()V

    .line 161
    return-void
.end method

.method public onRefreshLoadMore(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 2
    .parameter "materialRefreshLayout"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget v0, v0, Lcom/wanduoduo/base/BaseListRefreshFragment;->page:I

    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget v1, v1, Lcom/wanduoduo/base/BaseListRefreshFragment;->totalPage:I

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget v1, v0, Lcom/wanduoduo/base/BaseListRefreshFragment;->page:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/wanduoduo/base/BaseListRefreshFragment;->page:I

    .line 167
    iget-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wanduoduo/base/BaseListRefreshFragment;->isRefreshData:Z

    .line 168
    iget-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    invoke-virtual {v0}, Lcom/wanduoduo/base/BaseListRefreshFragment;->sendDataRequest()V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;->this$0:Lcom/wanduoduo/base/BaseListRefreshFragment;

    iget-object v0, v0, Lcom/wanduoduo/base/BaseListRefreshFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/cjj/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method
