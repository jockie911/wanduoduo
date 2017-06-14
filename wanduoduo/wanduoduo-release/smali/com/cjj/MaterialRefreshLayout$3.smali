.class Lcom/cjj/MaterialRefreshLayout$3;
.super Ljava/lang/Object;
.source "MaterialRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cjj/MaterialRefreshLayout;->finishRefreshLoadMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cjj/MaterialRefreshLayout;


# direct methods
.method constructor <init>(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/cjj/MaterialRefreshLayout$3;->this$0:Lcom/cjj/MaterialRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout$3;->this$0:Lcom/cjj/MaterialRefreshLayout;

    #getter for: Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;
    invoke-static {v0}, Lcom/cjj/MaterialRefreshLayout;->access$000(Lcom/cjj/MaterialRefreshLayout;)Lcom/cjj/MaterialFoodView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout$3;->this$0:Lcom/cjj/MaterialRefreshLayout;

    #getter for: Lcom/cjj/MaterialRefreshLayout;->isLoadMoreing:Z
    invoke-static {v0}, Lcom/cjj/MaterialRefreshLayout;->access$100(Lcom/cjj/MaterialRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout$3;->this$0:Lcom/cjj/MaterialRefreshLayout;

    const/4 v1, 0x0

    #setter for: Lcom/cjj/MaterialRefreshLayout;->isLoadMoreing:Z
    invoke-static {v0, v1}, Lcom/cjj/MaterialRefreshLayout;->access$102(Lcom/cjj/MaterialRefreshLayout;Z)Z

    .line 504
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout$3;->this$0:Lcom/cjj/MaterialRefreshLayout;

    #getter for: Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;
    invoke-static {v0}, Lcom/cjj/MaterialRefreshLayout;->access$000(Lcom/cjj/MaterialRefreshLayout;)Lcom/cjj/MaterialFoodView;

    move-result-object v0

    iget-object v1, p0, Lcom/cjj/MaterialRefreshLayout$3;->this$0:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialFoodView;->onComlete(Lcom/cjj/MaterialRefreshLayout;)V

    .line 506
    :cond_0
    return-void
.end method
