.class Lio/rong/imlib/RongIMClient$57;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

.field final synthetic val$message:Lio/rong/imlib/model/Message;

.field final synthetic val$pushContent:Ljava/lang/String;

.field final synthetic val$pushData:Ljava/lang/String;

.field final synthetic val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$SendMessageCallback;Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3226
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$57;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$57;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$57;->val$message:Lio/rong/imlib/model/Message;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$57;->val$pushContent:Ljava/lang/String;

    iput-object p5, p0, Lio/rong/imlib/RongIMClient$57;->val$pushData:Ljava/lang/String;

    iput-object p6, p0, Lio/rong/imlib/RongIMClient$57;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3230
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$57;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3231
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$57;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    if-eqz v1, :cond_0

    .line 3232
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$57;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3284
    :cond_0
    :goto_0
    return-void

    .line 3236
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$57;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$57;->val$message:Lio/rong/imlib/model/Message;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$57;->val$pushContent:Ljava/lang/String;

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$57;->val$pushData:Ljava/lang/String;

    new-instance v5, Lio/rong/imlib/RongIMClient$57$1;

    invoke-direct {v5, p0}, Lio/rong/imlib/RongIMClient$57$1;-><init>(Lio/rong/imlib/RongIMClient$57;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lio/rong/imlib/IHandler;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/ISendMessageCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3271
    :catch_0
    move-exception v0

    .line 3272
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3274
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$57;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v1, :cond_0

    .line 3275
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$57;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 3277
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3278
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "RongIMClient"

    const-string v2, "sendMessage NullPointerException"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 3281
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$57;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v1, :cond_0

    .line 3282
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$57;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
