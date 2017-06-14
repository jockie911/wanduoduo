.class Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "LogInFindPsdActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/login/LogInFindPsdActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInFindPsdActivity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 24
    .local p0, this:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$1;,"Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$1;"
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$1;->this$0:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$1;->val$target:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 28
    .local p0, this:Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$1;,"Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$1;"
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInFindPsdActivity$$ViewBinder$1;->val$target:Lcom/wanduoduo/ui/login/LogInFindPsdActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/login/LogInFindPsdActivity;->onClick(Landroid/view/View;)V

    .line 29
    return-void
.end method
