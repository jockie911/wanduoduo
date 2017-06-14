.class Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$12;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "InfoFragment$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/InfoFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/fragment/InfoFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 131
    .local p0, this:Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$12;,"Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$12;"
    iput-object p1, p0, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$12;->this$0:Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$12;->val$target:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 135
    .local p0, this:Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$12;,"Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$12;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$12;->val$target:Lcom/wanduoduo/fragment/InfoFragment;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/fragment/InfoFragment;->onClick(Landroid/view/View;)V

    .line 136
    return-void
.end method
