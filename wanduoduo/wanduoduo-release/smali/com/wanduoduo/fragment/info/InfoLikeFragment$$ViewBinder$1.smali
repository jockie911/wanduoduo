.class Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "InfoLikeFragment$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/InfoLikeFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/fragment/info/InfoLikeFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoLikeFragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 17
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder$1;,"Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder$1;"
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder$1;->this$0:Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder$1;->val$target:Lcom/wanduoduo/fragment/info/InfoLikeFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 21
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder$1;,"Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder$1;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder$1;->val$target:Lcom/wanduoduo/fragment/info/InfoLikeFragment;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->onClick(Landroid/view/View;)V

    .line 22
    return-void
.end method
