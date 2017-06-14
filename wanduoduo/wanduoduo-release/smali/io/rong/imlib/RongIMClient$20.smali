.class Lio/rong/imlib/RongIMClient$20;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field final synthetic val$count:I

.field final synthetic val$targetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1480
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$20;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$20;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$20;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$20;->val$targetId:Ljava/lang/String;

    iput p5, p0, Lio/rong/imlib/RongIMClient$20;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1483
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$20;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1484
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$20;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 1485
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$20;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v4, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1488
    :cond_1
    new-instance v0, Lio/rong/imlib/model/Conversation;

    invoke-direct {v0}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 1489
    .local v0, conversation:Lio/rong/imlib/model/Conversation;
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$20;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0, v3}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1490
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$20;->val$targetId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 1492
    :try_start_0
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$20;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v3

    iget v4, p0, Lio/rong/imlib/RongIMClient$20;->val$count:I

    invoke-interface {v3, v0, v4}, Lio/rong/imlib/IHandler;->getNewestMessages(Lio/rong/imlib/model/Conversation;I)Ljava/util/List;

    move-result-object v2

    .line 1494
    .local v2, messages:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$20;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 1496
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$20;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v3, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1498
    .end local v2           #messages:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :catch_0
    move-exception v1

    .line 1499
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1500
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$20;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 1502
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$20;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v4, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
