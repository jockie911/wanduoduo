.class Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LogInUseSmsCodeActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 47
    .local p0, this:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$3;,"Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$3;"
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$3;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$3;->val$target:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 51
    .local p0, this:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$3;,"Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$3;"
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$$ViewBinder$3;->val$target:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->onClick(Landroid/view/View;)V

    .line 52
    return-void
.end method
