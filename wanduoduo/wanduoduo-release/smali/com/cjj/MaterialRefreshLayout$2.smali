.class Lcom/cjj/MaterialRefreshLayout$2;
.super Ljava/lang/Object;
.source "MaterialRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cjj/MaterialRefreshLayout;->finishRefresh()V
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
    .line 489
    iput-object p1, p0, Lcom/cjj/MaterialRefreshLayout$2;->this$0:Lcom/cjj/MaterialRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout$2;->this$0:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/cjj/MaterialRefreshLayout;->finishRefreshing()V

    .line 493
    return-void
.end method
