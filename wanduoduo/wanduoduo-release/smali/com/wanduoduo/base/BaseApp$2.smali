.class Lcom/wanduoduo/base/BaseApp$2;
.super Lio/rong/imlib/RongIMClient$ConnectCallback;
.source "BaseApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/base/BaseApp;->connect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/base/BaseApp;


# direct methods
.method constructor <init>(Lcom/wanduoduo/base/BaseApp;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/wanduoduo/base/BaseApp$2;->this$0:Lcom/wanduoduo/base/BaseApp;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ConnectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 188
    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/base/BaseApp$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "userid"

    .prologue
    .line 176
    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--onSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public onTokenIncorrect()V
    .locals 2

    .prologue
    .line 166
    const-string v0, "LoginActivity"

    const-string v1, "--onTokenIncorrect"

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method
