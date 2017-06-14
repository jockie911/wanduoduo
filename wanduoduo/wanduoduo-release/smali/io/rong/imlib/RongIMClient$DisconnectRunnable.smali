.class Lio/rong/imlib/RongIMClient$DisconnectRunnable;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectRunnable"
.end annotation


# instance fields
.field isReceivePush:Z

.field final synthetic this$0:Lio/rong/imlib/RongIMClient;


# direct methods
.method public constructor <init>(Lio/rong/imlib/RongIMClient;Z)V
    .locals 0
    .parameter
    .parameter "isReceivePush"

    .prologue
    .line 265
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-boolean p2, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->isReceivePush:Z

    .line 267
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 272
    :try_start_0
    const-string v1, "RongIMClient"

    const-string v2, "DisconnectRunnable do disconnect!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 275
    const-string v1, "RongIMClient"

    const-string v2, "DisconnectRunnable mLibHandler is null!"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    iget-boolean v2, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->isReceivePush:Z

    new-instance v3, Lio/rong/imlib/RongIMClient$DisconnectRunnable$1;

    invoke-direct {v3, p0}, Lio/rong/imlib/RongIMClient$DisconnectRunnable$1;-><init>(Lio/rong/imlib/RongIMClient$DisconnectRunnable;)V

    invoke-interface {v1, v2, v3}, Lio/rong/imlib/IHandler;->disconnect(ZLio/rong/imlib/IOperationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
