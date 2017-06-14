.class Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "AuthenticationRecordVideoActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;

.field final synthetic val$target:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 47
    .local p0, this:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$4;,"Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$4;"
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$4;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder;

    iput-object p2, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$4;->val$target:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .parameter "p0"

    .prologue
    .line 51
    .local p0, this:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$4;,"Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$4;"
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$$ViewBinder$4;->val$target:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->onClick(Landroid/view/View;)V

    .line 52
    return-void
.end method
