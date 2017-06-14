.class Lio/rong/imlib/RongIMClient$DisconnectRunnable$1;
.super Lio/rong/imlib/IOperationCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$DisconnectRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$DisconnectRunnable;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$DisconnectRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable$1;->this$1:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    invoke-direct {p0}, Lio/rong/imlib/IOperationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable$1;->this$1:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;
    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->access$500(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$StatusListener;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 284
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable$1;->this$1:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    #setter for: Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;
    invoke-static {v0, v2}, Lio/rong/imlib/RongIMClient;->access$602(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$DisconnectRunnable;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    .line 285
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable$1;->this$1:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    #setter for: Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;
    invoke-static {v0, v2}, Lio/rong/imlib/RongIMClient;->access$702(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    return-void
.end method

.method public onFailure(I)V
    .locals 3
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable$1;->this$1:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;
    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->access$500(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$StatusListener;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 291
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable$1;->this$1:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    #setter for: Lio/rong/imlib/RongIMClient;->mDisconnectRunnable:Lio/rong/imlib/RongIMClient$DisconnectRunnable;
    invoke-static {v0, v2}, Lio/rong/imlib/RongIMClient;->access$602(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$DisconnectRunnable;)Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    .line 292
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$DisconnectRunnable$1;->this$1:Lio/rong/imlib/RongIMClient$DisconnectRunnable;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$DisconnectRunnable;->this$0:Lio/rong/imlib/RongIMClient;

    #setter for: Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;
    invoke-static {v0, v2}, Lio/rong/imlib/RongIMClient;->access$702(Lio/rong/imlib/RongIMClient;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    return-void
.end method
