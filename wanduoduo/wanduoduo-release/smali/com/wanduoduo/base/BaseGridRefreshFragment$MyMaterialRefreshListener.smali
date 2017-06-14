.class Lcom/wanduoduo/base/BaseGridRefreshFragment$MyMaterialRefreshListener;
.super Lcom/cjj/MaterialRefreshListener;
.source "BaseGridRefreshFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/base/BaseGridRefreshFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMaterialRefreshListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/base/BaseGridRefreshFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment$MyMaterialRefreshListener;->this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;

    invoke-direct {p0}, Lcom/cjj/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 1
    .parameter "materialRefreshLayout"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment$MyMaterialRefreshListener;->this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;

    invoke-virtual {v0}, Lcom/wanduoduo/base/BaseGridRefreshFragment;->onRefreshing()V

    .line 131
    return-void
.end method

.method public onRefreshLoadMore(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 1
    .parameter "materialRefreshLayout"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wanduoduo/base/BaseGridRefreshFragment$MyMaterialRefreshListener;->this$0:Lcom/wanduoduo/base/BaseGridRefreshFragment;

    invoke-virtual {v0}, Lcom/wanduoduo/base/BaseGridRefreshFragment;->onLoading()V

    .line 136
    return-void
.end method
