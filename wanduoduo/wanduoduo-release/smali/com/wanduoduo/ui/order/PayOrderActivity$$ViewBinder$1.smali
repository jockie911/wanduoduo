.class Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PayOrderActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/order/PayOrderActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/ui/order/PayOrderActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;Lcom/wanduoduo/ui/order/PayOrderActivity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 14
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$1;,"Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$1;"
    iput-object p1, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$1;->this$0:Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$1;->val$target:Lcom/wanduoduo/ui/order/PayOrderActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 18
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$1;,"Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$1;"
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$1;->val$target:Lcom/wanduoduo/ui/order/PayOrderActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/order/PayOrderActivity;->onClick(Landroid/view/View;)V

    .line 19
    return-void
.end method
