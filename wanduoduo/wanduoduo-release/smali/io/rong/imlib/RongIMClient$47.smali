.class Lio/rong/imlib/RongIMClient$47;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

.field final synthetic val$discussionId:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2663
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$47;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$47;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$47;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$47;->val$discussionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2667
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$47;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2668
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$47;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v2, :cond_0

    .line 2669
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$47;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2697
    :cond_0
    :goto_0
    return-void

    .line 2673
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$47;->val$name:Ljava/lang/String;

    .line 2674
    .local v1, sub:Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$47;->val$name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$47;->val$name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_2

    .line 2675
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$47;->val$name:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x27

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2676
    :cond_2
    iget-object v2, p0, Lio/rong/imlib/RongIMClient$47;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$47;->val$discussionId:Ljava/lang/String;

    new-instance v4, Lio/rong/imlib/RongIMClient$47$1;

    invoke-direct {v4, p0}, Lio/rong/imlib/RongIMClient$47$1;-><init>(Lio/rong/imlib/RongIMClient$47;)V

    invoke-interface {v2, v3, v1, v4}, Lio/rong/imlib/IHandler;->setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2694
    .end local v1           #sub:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2695
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
