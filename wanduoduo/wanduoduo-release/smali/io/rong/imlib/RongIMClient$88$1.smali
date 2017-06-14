.class Lio/rong/imlib/RongIMClient$88$1;
.super Lio/rong/imlib/IOperationCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$88;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$88;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$88;)V
    .locals 0
    .parameter

    .prologue
    .line 4992
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$88$1;->this$1:Lio/rong/imlib/RongIMClient$88;

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
    .line 4995
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$88$1;->this$1:Lio/rong/imlib/RongIMClient$88;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$88;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 4996
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$88$1;->this$1:Lio/rong/imlib/RongIMClient$88;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$88;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onCallback()V

    .line 4998
    :cond_0
    return-void
.end method

.method public onFailure(I)V
    .locals 2
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5002
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$88$1;->this$1:Lio/rong/imlib/RongIMClient$88;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$88;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 5003
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$88$1;->this$1:Lio/rong/imlib/RongIMClient$88;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$88;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 5005
    :cond_0
    return-void
.end method
