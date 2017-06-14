.class Lio/rong/imlib/RongIMClient$107$2;
.super Lio/rong/imlib/ISendMediaMessageCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$107;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$107;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$107;)V
    .locals 0
    .parameter

    .prologue
    .line 7776
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$107$2;->this$1:Lio/rong/imlib/RongIMClient$107;

    invoke-direct {p0}, Lio/rong/imlib/ISendMediaMessageCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 2
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7779
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$107$2;->this$1:Lio/rong/imlib/RongIMClient$107;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$107;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    if-eqz v0, :cond_0

    .line 7780
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$107$2;->this$1:Lio/rong/imlib/RongIMClient$107;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$107;->this$0:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imlib/RongIMClient$107$2$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$107$2$1;-><init>(Lio/rong/imlib/RongIMClient$107$2;Lio/rong/imlib/model/Message;)V

    #calls: Lio/rong/imlib/RongIMClient;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lio/rong/imlib/RongIMClient;->access$2100(Lio/rong/imlib/RongIMClient;Ljava/lang/Runnable;)V

    .line 7787
    :cond_0
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;I)V
    .locals 2
    .parameter "message"
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7815
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$107$2;->this$1:Lio/rong/imlib/RongIMClient$107;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$107;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    if-eqz v0, :cond_0

    .line 7816
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$107$2;->this$1:Lio/rong/imlib/RongIMClient$107;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$107;->this$0:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imlib/RongIMClient$107$2$4;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$107$2$4;-><init>(Lio/rong/imlib/RongIMClient$107$2;Lio/rong/imlib/model/Message;I)V

    #calls: Lio/rong/imlib/RongIMClient;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lio/rong/imlib/RongIMClient;->access$2100(Lio/rong/imlib/RongIMClient;Ljava/lang/Runnable;)V

    .line 7823
    :cond_0
    return-void
.end method

.method public onProgress(Lio/rong/imlib/model/Message;I)V
    .locals 2
    .parameter "message"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7791
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$107$2;->this$1:Lio/rong/imlib/RongIMClient$107;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$107;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    if-eqz v0, :cond_0

    .line 7792
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$107$2;->this$1:Lio/rong/imlib/RongIMClient$107;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$107;->this$0:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imlib/RongIMClient$107$2$2;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/RongIMClient$107$2$2;-><init>(Lio/rong/imlib/RongIMClient$107$2;Lio/rong/imlib/model/Message;I)V

    #calls: Lio/rong/imlib/RongIMClient;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lio/rong/imlib/RongIMClient;->access$2100(Lio/rong/imlib/RongIMClient;Ljava/lang/Runnable;)V

    .line 7799
    :cond_0
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 2
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7803
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$107$2;->this$1:Lio/rong/imlib/RongIMClient$107;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$107;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    if-eqz v0, :cond_0

    .line 7804
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$107$2;->this$1:Lio/rong/imlib/RongIMClient$107;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$107;->this$0:Lio/rong/imlib/RongIMClient;

    new-instance v1, Lio/rong/imlib/RongIMClient$107$2$3;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/RongIMClient$107$2$3;-><init>(Lio/rong/imlib/RongIMClient$107$2;Lio/rong/imlib/model/Message;)V

    #calls: Lio/rong/imlib/RongIMClient;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lio/rong/imlib/RongIMClient;->access$2100(Lio/rong/imlib/RongIMClient;Ljava/lang/Runnable;)V

    .line 7811
    :cond_0
    return-void
.end method
