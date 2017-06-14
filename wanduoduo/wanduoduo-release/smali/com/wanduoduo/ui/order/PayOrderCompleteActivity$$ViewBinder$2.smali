.class Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PayOrderCompleteActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 41
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$2;,"Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$2;"
    iput-object p1, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$2;->this$0:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$2;->val$target:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 45
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$2;,"Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$2;"
    iget-object v0, p0, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$2;->val$target:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->onClick(Landroid/view/View;)V

    .line 46
    return-void
.end method
