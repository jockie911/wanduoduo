.class Lio/rong/imlib/RongIMClient$77;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/RongIMClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

.field final synthetic val$chatroomId:Ljava/lang/String;

.field final synthetic val$defMessageCount:I


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4451
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$77;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$77;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$77;->val$chatroomId:Ljava/lang/String;

    iput p4, p0, Lio/rong/imlib/RongIMClient$77;->val$defMessageCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4454
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$77;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4455
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$77;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 4456
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$77;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4481
    :cond_0
    :goto_0
    return-void

    .line 4460
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$77;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$77;->val$chatroomId:Ljava/lang/String;

    iget v3, p0, Lio/rong/imlib/RongIMClient$77;->val$defMessageCount:I

    new-instance v4, Lio/rong/imlib/RongIMClient$77$1;

    invoke-direct {v4, p0}, Lio/rong/imlib/RongIMClient$77$1;-><init>(Lio/rong/imlib/RongIMClient$77;)V

    invoke-interface {v1, v2, v3, v4}, Lio/rong/imlib/IHandler;->reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4476
    :catch_0
    move-exception v0

    .line 4477
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4478
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$77;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 4479
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$77;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
