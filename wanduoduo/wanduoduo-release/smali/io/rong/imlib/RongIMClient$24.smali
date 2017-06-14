.class Lio/rong/imlib/RongIMClient$24;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongCommonDefine$GetMessageDirection;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$baseMessageId:I

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field final synthetic val$count:I

.field final synthetic val$direction:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

.field final synthetic val$objectName:Ljava/lang/String;

.field final synthetic val$targetId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IILio/rong/imlib/RongCommonDefine$GetMessageDirection;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1669
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$24;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$24;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$24;->val$targetId:Ljava/lang/String;

    iput-object p5, p0, Lio/rong/imlib/RongIMClient$24;->val$objectName:Ljava/lang/String;

    iput p6, p0, Lio/rong/imlib/RongIMClient$24;->val$baseMessageId:I

    iput p7, p0, Lio/rong/imlib/RongIMClient$24;->val$count:I

    iput-object p8, p0, Lio/rong/imlib/RongIMClient$24;->val$direction:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1672
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1673
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v1, :cond_0

    .line 1674
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v3}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 1689
    :cond_0
    :goto_0
    return-void

    .line 1677
    :cond_1
    new-instance v2, Lio/rong/imlib/model/Conversation;

    invoke-direct {v2}, Lio/rong/imlib/model/Conversation;-><init>()V

    .line 1678
    .local v2, conversation:Lio/rong/imlib/model/Conversation;
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24;->val$conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v1}, Lio/rong/imlib/model/Conversation;->setConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 1679
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24;->val$targetId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lio/rong/imlib/model/Conversation;->setTargetId(Ljava/lang/String;)V

    .line 1681
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$24;->val$objectName:Ljava/lang/String;

    iget v4, p0, Lio/rong/imlib/RongIMClient$24;->val$baseMessageId:I

    int-to-long v4, v4

    iget v6, p0, Lio/rong/imlib/RongIMClient$24;->val$count:I

    iget-object v7, p0, Lio/rong/imlib/RongIMClient$24;->val$direction:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    sget-object v9, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->FRONT:Lio/rong/imlib/RongCommonDefine$GetMessageDirection;

    invoke-virtual {v7, v9}, Lio/rong/imlib/RongCommonDefine$GetMessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface/range {v1 .. v7}, Lio/rong/imlib/IHandler;->getOlderMessagesByObjectName(Lio/rong/imlib/model/Conversation;Ljava/lang/String;JIZ)Ljava/util/List;

    move-result-object v8

    .line 1682
    .local v8, messages:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v1, :cond_0

    .line 1683
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v1, v8}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1684
    .end local v8           #messages:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :catch_0
    move-exception v0

    .line 1685
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1686
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v1, :cond_0

    .line 1687
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$24;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v3}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
