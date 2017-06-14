.class Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;
.super Lcom/cjj/MaterialRefreshListener;
.source "ActiviItemContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->initRefreshListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-direct {p0}, Lcom/cjj/MaterialRefreshListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 2
    .parameter "materialRefreshLayout"

    .prologue
    const/4 v1, 0x1

    .line 203
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    #setter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->page:I
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$702(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;I)I

    .line 204
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    #setter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->isRefreshData:Z
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$302(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Z)Z

    .line 205
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->sendDataRequest()V

    .line 206
    return-void
.end method

.method public onRefreshLoadMore(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 2
    .parameter "materialRefreshLayout"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->page:I
    invoke-static {v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$700(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    #getter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->total_page:I
    invoke-static {v1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$100(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-static {v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$708(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)I

    .line 212
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    const/4 v1, 0x0

    #setter for: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->isRefreshData:Z
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$302(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Z)Z

    .line 213
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->sendDataRequest()V

    .line 217
    :goto_0
    invoke-super {p0, p1}, Lcom/cjj/MaterialRefreshListener;->onRefreshLoadMore(Lcom/cjj/MaterialRefreshLayout;)V

    .line 218
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$5;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/cjj/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method
