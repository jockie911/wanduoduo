.class Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$8;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "IndexFragment$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/IndexFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;Lcom/wanduoduo/fragment/IndexFragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 94
    .local p0, this:Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$8;,"Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$8;"
    iput-object p1, p0, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$8;->this$0:Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$8;->val$target:Lcom/wanduoduo/fragment/IndexFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 98
    .local p0, this:Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$8;,"Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$8;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$8;->val$target:Lcom/wanduoduo/fragment/IndexFragment;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/fragment/IndexFragment;->onClick(Landroid/view/View;)V

    .line 99
    return-void
.end method
