.class Lio/rong/imlib/RongIMClient$49;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/RongIMClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

.field final synthetic val$discussionId:Ljava/lang/String;

.field final synthetic val$userIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$OperationCallback;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2777
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$49;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$49;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$49;->val$discussionId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$49;->val$userIdList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2781
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$49;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2782
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$49;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 2783
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$49;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2809
    :cond_0
    :goto_0
    return-void

    .line 2787
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$49;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$49;->val$discussionId:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$49;->val$userIdList:Ljava/util/List;

    new-instance v4, Lio/rong/imlib/RongIMClient$49$1;

    invoke-direct {v4, p0}, Lio/rong/imlib/RongIMClient$49$1;-><init>(Lio/rong/imlib/RongIMClient$49;)V

    invoke-interface {v1, v2, v3, v4}, Lio/rong/imlib/IHandler;->addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/IOperationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2805
    :catch_0
    move-exception v0

    .line 2806
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$49;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v1, :cond_0

    .line 2807
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$49;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$OperationCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
