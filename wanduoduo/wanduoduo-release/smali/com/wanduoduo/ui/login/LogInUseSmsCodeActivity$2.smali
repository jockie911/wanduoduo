.class Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$2;
.super Lio/rong/imlib/RongIMClient$ConnectCallback;
.source "LogInUseSmsCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;->connectRongIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

.field final synthetic val$avatar:Ljava/lang/String;

.field final synthetic val$nickname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$2;->this$0:Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity;

    iput-object p2, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$2;->val$nickname:Ljava/lang/String;

    iput-object p3, p0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$2;->val$avatar:Ljava/lang/String;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ConnectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 239
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "userid"

    .prologue
    .line 229
    new-instance v0, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$2$1;

    invoke-direct {v0, p0, p1}, Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$2$1;-><init>(Lcom/wanduoduo/ui/login/LogInUseSmsCodeActivity$2;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/rong/imkit/RongIM;->setUserInfoProvider(Lio/rong/imkit/RongIM$UserInfoProvider;Z)V

    .line 235
    return-void
.end method

.method public onTokenIncorrect()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method
