.class Lio/rong/imlib/RongIMClient$78$1;
.super Lio/rong/imlib/IOperationCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$78;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$78;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$78;)V
    .locals 0
    .parameter

    .prologue
    .line 4510
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$78$1;->this$1:Lio/rong/imlib/RongIMClient$78;

    invoke-direct {p0}, Lio/rong/imlib/IOperationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4513
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$78$1;->this$1:Lio/rong/imlib/RongIMClient$78;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$78;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 4514
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$78$1;->this$1:Lio/rong/imlib/RongIMClient$78;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$78;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onCallback()V

    .line 4516
    :cond_0
    return-void
.end method

.method public onFailure(I)V
    .locals 1
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4520
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$78$1;->this$1:Lio/rong/imlib/RongIMClient$78;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$78;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 4521
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$78$1;->this$1:Lio/rong/imlib/RongIMClient$78;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$78;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(I)V

    .line 4524
    :cond_0
    return-void
.end method
