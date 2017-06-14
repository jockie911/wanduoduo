.class Lio/rong/imlib/RongIMClient$58$2;
.super Lio/rong/imlib/ISendMessageCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$58;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$58;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$58;)V
    .locals 0
    .parameter

    .prologue
    .line 3360
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$58$2;->this$1:Lio/rong/imlib/RongIMClient$58;

    invoke-direct {p0}, Lio/rong/imlib/ISendMessageCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 2
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3363
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58$2;->this$1:Lio/rong/imlib/RongIMClient$58;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$58;->val$callback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;

    if-eqz v0, :cond_0

    .line 3364
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58$2;->this$1:Lio/rong/imlib/RongIMClient$58;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$58;->this$0:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imlib/RongIMClient$58$2$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$58$2$1;-><init>(Lio/rong/imlib/RongIMClient$58$2;Lio/rong/imlib/model/Message;)V

    #calls: Lio/rong/imlib/RongIMClient;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lio/rong/imlib/RongIMClient;->access$2100(Lio/rong/imlib/RongIMClient;Ljava/lang/Runnable;)V

    .line 3371
    :cond_0
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;I)V
    .locals 2
    .parameter "msg"
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3387
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58$2;->this$1:Lio/rong/imlib/RongIMClient$58;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$58;->val$callback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;

    if-eqz v0, :cond_0

    .line 3388
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58$2;->this$1:Lio/rong/imlib/RongIMClient$58;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$58;->this$0:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imlib/RongIMClient$58$2$3;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$58$2$3;-><init>(Lio/rong/imlib/RongIMClient$58$2;Lio/rong/imlib/model/Message;I)V

    #calls: Lio/rong/imlib/RongIMClient;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lio/rong/imlib/RongIMClient;->access$2100(Lio/rong/imlib/RongIMClient;Ljava/lang/Runnable;)V

    .line 3395
    :cond_0
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 2
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3375
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58$2;->this$1:Lio/rong/imlib/RongIMClient$58;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$58;->val$callback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;

    if-eqz v0, :cond_0

    .line 3376
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58$2;->this$1:Lio/rong/imlib/RongIMClient$58;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$58;->this$0:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imlib/RongIMClient$58$2$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$58$2$2;-><init>(Lio/rong/imlib/RongIMClient$58$2;Lio/rong/imlib/model/Message;)V

    #calls: Lio/rong/imlib/RongIMClient;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lio/rong/imlib/RongIMClient;->access$2100(Lio/rong/imlib/RongIMClient;Ljava/lang/Runnable;)V

    .line 3383
    :cond_0
    return-void
.end method
