.class Lcom/wanduoduo/ui/login/LogInActivity$2;
.super Lio/rong/imlib/RongIMClient$ConnectCallback;
.source "LogInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/login/LogInActivity;->connectRongIM(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/login/LogInActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInActivity$2;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ConnectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 227
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/login/LogInActivity$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .parameter "userid"

    .prologue
    .line 215
    new-instance v0, Lcom/wanduoduo/ui/login/LogInActivity$2$1;

    invoke-direct {v0, p0, p1}, Lcom/wanduoduo/ui/login/LogInActivity$2$1;-><init>(Lcom/wanduoduo/ui/login/LogInActivity$2;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/rong/imkit/RongIM;->setUserInfoProvider(Lio/rong/imkit/RongIM$UserInfoProvider;Z)V

    .line 221
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInActivity$2;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/ui/login/LogInActivity$2;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    const-class v3, Lcom/wanduoduo/ui/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/login/LogInActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    iget-object v0, p0, Lcom/wanduoduo/ui/login/LogInActivity$2;->this$0:Lcom/wanduoduo/ui/login/LogInActivity;

    invoke-virtual {v0}, Lcom/wanduoduo/ui/login/LogInActivity;->finish()V

    .line 223
    return-void
.end method

.method public onTokenIncorrect()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method
