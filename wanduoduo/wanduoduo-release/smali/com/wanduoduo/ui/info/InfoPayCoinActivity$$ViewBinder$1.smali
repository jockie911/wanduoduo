.class Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "InfoPayCoinActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoPayCoinActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoPayCoinActivity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 14
    .local p0, this:Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$1;,"Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$1;"
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$1;->this$0:Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$1;->val$target:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 18
    .local p0, this:Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$1;,"Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$1;"
    iget-object v0, p0, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$1;->val$target:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->onClick(Landroid/view/View;)V

    .line 19
    return-void
.end method
