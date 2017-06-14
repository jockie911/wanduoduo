.class Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$$ViewBinder$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "InfoAccountMoneyFragment$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 19
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$$ViewBinder$1;,"Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$$ViewBinder$1;"
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$$ViewBinder$1;->this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$$ViewBinder$1;->val$target:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 23
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$$ViewBinder$1;,"Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$$ViewBinder$1;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$$ViewBinder$1;->val$target:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->onClick(Landroid/view/View;)V

    .line 24
    return-void
.end method
