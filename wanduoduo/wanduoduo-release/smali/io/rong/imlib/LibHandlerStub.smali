.class public Lio/rong/imlib/LibHandlerStub;
.super Lio/rong/imlib/IHandler$Stub;
.source "LibHandlerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/LibHandlerStub$OperationCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibHandlerStub"


# instance fields
.field mCallbackHandler:Landroid/os/Handler;

.field mCallbackThread:Landroid/os/HandlerThread;

.field mClient:Lio/rong/imlib/NativeClient;

.field mContext:Landroid/content/Context;

.field mCurrentUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "appKey"
    .parameter "deviceId"

    .prologue
    .line 40
    invoke-direct {p0}, Lio/rong/imlib/IHandler$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Rong_SDK_Callback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mCallbackThread:Landroid/os/HandlerThread;

    .line 44
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    .line 46
    invoke-static {}, Lio/rong/imlib/NativeClient;->getInstance()Lio/rong/imlib/NativeClient;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    .line 47
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3}, Lio/rong/imlib/NativeClient;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "id"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/IOperationCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 896
    .local p2, userIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->addMemberToDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 897
    return-void
.end method

.method public addRealTimeLocationListener(ILjava/lang/String;Lio/rong/imlib/IRealTimeLocationListener;)V
    .locals 2
    .parameter "type"
    .parameter "targetId"
    .parameter "listener"

    .prologue
    .line 1666
    new-instance v0, Lio/rong/imlib/LibHandlerStub$35;

    invoke-direct {v0, p0, p3}, Lio/rong/imlib/LibHandlerStub$35;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IRealTimeLocationListener;)V

    .line 1712
    .local v0, nativeListener:Lio/rong/imlib/NativeClient$RealTimeLocationListener;
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, p1, p2, v0}, Lio/rong/imlib/NativeClient;->addListener(ILjava/lang/String;Lio/rong/imlib/NativeClient$RealTimeLocationListener;)V

    .line 1713
    return-void
.end method

.method public addToBlacklist(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "userId"
    .parameter "callback"

    .prologue
    .line 1396
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$30;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$30;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->addToBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1427
    return-void
.end method

.method public cancelDownloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/IOperationCallback;)V
    .locals 3
    .parameter "message"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1331
    invoke-static {}, Lio/rong/imlib/filetransfer/FileTransferClient;->getInstance()Lio/rong/imlib/filetransfer/FileTransferClient;

    move-result-object v0

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    new-instance v2, Lio/rong/imlib/LibHandlerStub$28;

    invoke-direct {v2, p0, p2}, Lio/rong/imlib/LibHandlerStub$28;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/filetransfer/FileTransferClient;->cancel(ILio/rong/imlib/filetransfer/CancelCallback;)V

    .line 1350
    return-void
.end method

.method public cleanConversationDraft(Lio/rong/imlib/model/Conversation;)Z
    .locals 3
    .parameter "conversation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 562
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearConversations([I)Z
    .locals 3
    .parameter "types"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 537
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 538
    :cond_0
    const/4 v2, 0x0

    .line 545
    :goto_0
    return v2

    .line 540
    :cond_1
    array-length v2, p1

    new-array v0, v2, [Lio/rong/imlib/model/Conversation$ConversationType;

    .line 542
    .local v0, conversationTypes:[Lio/rong/imlib/model/Conversation$ConversationType;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 543
    aget v2, p1, v1

    invoke-static {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    aput-object v2, v0, v1

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 545
    :cond_2
    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v2, v0}, Lio/rong/imlib/NativeClient;->clearConversations([Lio/rong/imlib/model/Conversation$ConversationType;)Z

    move-result v2

    goto :goto_0
.end method

.method public clearMessages(Lio/rong/imlib/model/Conversation;)Z
    .locals 3
    .parameter "conversation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation;)Z
    .locals 3
    .parameter "conversation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearTextMessageDraft(Lio/rong/imlib/model/Conversation;)Z
    .locals 3
    .parameter "conversation"

    .prologue
    .line 1550
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->clearTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearUnreadByReceipt(ILjava/lang/String;J)Z
    .locals 1
    .parameter "conversationType"
    .parameter "targetId"
    .parameter "timestamp"

    .prologue
    .line 1726
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/NativeClient;->clearUnreadByReceipt(ILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public connect(Ljava/lang/String;Lio/rong/imlib/IStringCallback;)V
    .locals 3
    .parameter "token"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    const-string v1, "LibHandlerStub"

    const-string v2, "connect"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v2, Lio/rong/imlib/LibHandlerStub$1;

    invoke-direct {v2, p0, p2}, Lio/rong/imlib/LibHandlerStub$1;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IStringCallback;)V

    invoke-virtual {v1, p1, v2}, Lio/rong/imlib/NativeClient;->connect(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    if-eqz p2, :cond_0

    .line 108
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lio/rong/imlib/LibHandlerStub$2;

    invoke-direct {v2, p0, p2}, Lio/rong/imlib/LibHandlerStub$2;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IStringCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/IResultCallback;)V
    .locals 2
    .parameter "name"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lio/rong/imlib/IResultCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 704
    .local p2, userIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$12;

    invoke-direct {v1, p0, p3, p1, p2}, Lio/rong/imlib/LibHandlerStub$12;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 743
    return-void
.end method

.method public deleteConversationMessage(ILjava/lang/String;)Z
    .locals 2
    .parameter "conversationType"
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/rong/imlib/NativeClient;->deleteMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteMessage([I)Z
    .locals 1
    .parameter "ids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 458
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 459
    :cond_0
    const/4 v0, 0x0

    .line 460
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/NativeClient;->deleteMessages([I)Z

    move-result v0

    goto :goto_0
.end method

.method public disconnect(ZLio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "isReceivePush"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    if-nez v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lio/rong/common/WakeLockUtils;->cancelHeartbeat(Landroid/content/Context;)V

    .line 130
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, p1}, Lio/rong/imlib/NativeClient;->disconnect(Z)V

    .line 132
    if-eqz p2, :cond_0

    .line 134
    :try_start_0
    invoke-interface {p2}, Lio/rong/imlib/IOperationCallback;->onComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadMedia(Lio/rong/imlib/model/Conversation;ILjava/lang/String;Lio/rong/imlib/IDownloadMediaCallback;)V
    .locals 6
    .parameter "conversation"
    .parameter "type"
    .parameter "imageUrl"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1242
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lio/rong/imlib/LibHandlerStub$26;

    invoke-direct {v5, p0, p4}, Lio/rong/imlib/LibHandlerStub$26;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IDownloadMediaCallback;)V

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeClient;->downloadMedia(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILjava/lang/String;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V

    .line 1286
    return-void
.end method

.method public downloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/IDownloadMediaMessageCallback;)V
    .locals 2
    .parameter "message"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1290
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$27;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$27;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IDownloadMediaMessageCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->downloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/NativeClient$IDownloadMediaMessageCallback;)V

    .line 1327
    return-void
.end method

.method public getBlacklist(Lio/rong/imlib/IStringCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1503
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$33;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$33;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IStringCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeClient;->getBlacklist(Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 1535
    return-void
.end method

.method public getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/IIntegerCallback;)V
    .locals 2
    .parameter "userId"
    .parameter "callback"

    .prologue
    .line 1468
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$32;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$32;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IIntegerCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 1498
    return-void
.end method

.method public getCMPServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1789
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient;->getInstance()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/navigation/NavigationClient;->getCMPServer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChatRoomInfo(Ljava/lang/String;IILio/rong/imlib/IResultCallback;)V
    .locals 2
    .parameter "id"
    .parameter "count"
    .parameter "order"
    .parameter "callback"

    .prologue
    .line 926
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$17;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/LibHandlerStub$17;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeClient;->queryChatRoomInfo(Ljava/lang/String;IILio/rong/imlib/NativeClient$IResultCallback;)V

    .line 946
    return-void
.end method

.method public getConversation(ILjava/lang/String;)Lio/rong/imlib/model/Conversation;
    .locals 3
    .parameter "type"
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 521
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lio/rong/imlib/NativeClient;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v0

    .line 522
    .local v0, model:Lio/rong/imlib/model/Conversation;
    return-object v0
.end method

.method public getConversationDraft(Lio/rong/imlib/model/Conversation;)Ljava/lang/String;
    .locals 3
    .parameter "conversation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConversationList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 496
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1}, Lio/rong/imlib/NativeClient;->getConversationList()Ljava/util/List;

    move-result-object v0

    .line 497
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 498
    :cond_0
    const/4 v0, 0x0

    .line 500
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    :cond_1
    return-object v0
.end method

.method public getConversationListByType([I)Ljava/util/List;
    .locals 2
    .parameter "types"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, p1}, Lio/rong/imlib/NativeClient;->getConversationList([I)Ljava/util/List;

    move-result-object v0

    .line 513
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 514
    :cond_0
    const/4 v0, 0x0

    .line 516
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    :cond_1
    return-object v0
.end method

.method public getConversationNotificationStatus(ILjava/lang/String;Lio/rong/imlib/ILongCallback;)V
    .locals 3
    .parameter "type"
    .parameter "targetId"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 567
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    new-instance v2, Lio/rong/imlib/LibHandlerStub$9;

    invoke-direct {v2, p0, p3}, Lio/rong/imlib/LibHandlerStub$9;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/ILongCallback;)V

    invoke-virtual {v0, v1, p2, v2}, Lio/rong/imlib/NativeClient;->getConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 601
    return-void
.end method

.method public getConversationUnreadCount(Lio/rong/imlib/model/Conversation;)I
    .locals 3
    .parameter "conversation"

    .prologue
    .line 654
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0}, Lio/rong/imlib/NativeClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeltaTime()J
    .locals 2

    .prologue
    .line 1354
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0}, Lio/rong/imlib/NativeClient;->getDeltaTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDiscussion(Ljava/lang/String;Lio/rong/imlib/IResultCallback;)V
    .locals 2
    .parameter "id"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$11;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$11;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->getDiscussion(Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 695
    return-void
.end method

.method public getMessage(I)Lio/rong/imlib/model/Message;
    .locals 1
    .parameter "messageId"

    .prologue
    .line 233
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/NativeClient;->getMessage(I)Lio/rong/imlib/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessageByUid(Ljava/lang/String;)Lio/rong/imlib/model/Message;
    .locals 1
    .parameter "uid"

    .prologue
    .line 238
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/NativeClient;->getMessageByUid(Ljava/lang/String;)Lio/rong/imlib/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public getNaviCachedTime()J
    .locals 2

    .prologue
    .line 1784
    invoke-static {}, Lio/rong/imlib/navigation/NavigationClient;->getInstance()Lio/rong/imlib/navigation/NavigationClient;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/navigation/NavigationClient;->getLastCachedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNewestMessages(Lio/rong/imlib/model/Conversation;I)Ljava/util/List;
    .locals 4
    .parameter "conversation"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lio/rong/imlib/NativeClient;->getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 398
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 399
    :cond_0
    const/4 v0, 0x0

    .line 401
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_1
    return-object v0
.end method

.method public getNotificationQuietHours(Lio/rong/imlib/IGetNotificationQuietHoursCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1153
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$24;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$24;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IGetNotificationQuietHoursCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeClient;->getNotificationQuietHours(Lio/rong/imlib/NativeClient$GetNotificationQuietHoursCallback;)V

    .line 1182
    return-void
.end method

.method public getOlderMessages(Lio/rong/imlib/model/Conversation;JI)Ljava/util/List;
    .locals 6
    .parameter "conversation"
    .parameter "flagId"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation;",
            "JI)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v3

    long-to-int v4, p2

    invoke-virtual {v1, v2, v3, v4, p4}, Lio/rong/imlib/NativeClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 407
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 408
    :cond_0
    const/4 v0, 0x0

    .line 411
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_1
    return-object v0
.end method

.method public getOlderMessagesByObjectName(Lio/rong/imlib/model/Conversation;Ljava/lang/String;JIZ)Ljava/util/List;
    .locals 9
    .parameter "conversation"
    .parameter "objectName"
    .parameter "flagId"
    .parameter "count"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation;",
            "Ljava/lang/String;",
            "JIZ)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    long-to-int v4, p3

    move-object v3, p2

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lio/rong/imlib/NativeClient;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v7

    .line 450
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 451
    :cond_0
    const/4 v7, 0x0

    .line 453
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_1
    return-object v7
.end method

.method public getPCAuthConfig(Lio/rong/imlib/IStringCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1799
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$37;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$37;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IStringCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeClient;->getPCAuthConfig(Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 1816
    return-void
.end method

.method public getPublicServiceList(Lio/rong/imlib/IResultCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 859
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$16;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$16;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeClient;->getPublicServiceList(Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 891
    return-void
.end method

.method public getPublicServiceProfile(Ljava/lang/String;ILio/rong/imlib/IResultCallback;)V
    .locals 2
    .parameter "targetId"
    .parameter "conversationType"
    .parameter "callback"

    .prologue
    .line 819
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$15;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$15;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->getPublicServiceProfile(Ljava/lang/String;ILio/rong/imlib/NativeClient$IResultCallback;)V

    .line 854
    return-void
.end method

.method public getRealTimeLocationCurrentState(ILjava/lang/String;)I
    .locals 2
    .parameter "type"
    .parameter "targetId"

    .prologue
    .line 1659
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, p1, p2}, Lio/rong/imlib/NativeClient;->getRealTimeLocationCurrentState(ILjava/lang/String;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v0

    .line 1661
    .local v0, state:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    invoke-virtual {v0}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->getValue()I

    move-result v1

    return v1
.end method

.method public getRealTimeLocationParticipants(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "type"
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1654
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeClient;->getRealTimeLocationParticipants(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation;JILio/rong/imlib/IResultCallback;)V
    .locals 8
    .parameter "conversation"
    .parameter "dataTime"
    .parameter "count"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lio/rong/imlib/LibHandlerStub$8;

    invoke-direct {v7, p0, p5}, Lio/rong/imlib/LibHandlerStub$8;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/NativeClient;->getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/NativeClient$IResultCallback;)V

    .line 445
    return-void
.end method

.method public getSendTimeByMessageId(I)J
    .locals 2
    .parameter "messageId"

    .prologue
    .line 1730
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1}, Lio/rong/imlib/NativeClient;->getSendTimeByMessageId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTextMessageDraft(Lio/rong/imlib/model/Conversation;)Ljava/lang/String;
    .locals 3
    .parameter "conversation"

    .prologue
    .line 1540
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalUnreadCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0}, Lio/rong/imlib/NativeClient;->getTotalUnreadCount()I

    move-result v0

    return v0
.end method

.method public getUnreadCount([I)I
    .locals 3
    .parameter "types"

    .prologue
    .line 185
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 186
    :cond_0
    const/4 v2, 0x0

    .line 195
    :goto_0
    return v2

    .line 188
    :cond_1
    array-length v2, p1

    new-array v0, v2, [Lio/rong/imlib/model/Conversation$ConversationType;

    .line 190
    .local v0, conversationTypes:[Lio/rong/imlib/model/Conversation$ConversationType;
    const/4 v1, 0x0

    .line 191
    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 192
    aget v2, p1, v1

    invoke-static {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    aput-object v2, v0, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    :cond_2
    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v2, v0}, Lio/rong/imlib/NativeClient;->getUnreadCount([Lio/rong/imlib/model/Conversation$ConversationType;)I

    move-result v2

    goto :goto_0
.end method

.method public getUnreadCountById(ILjava/lang/String;)I
    .locals 2
    .parameter "type"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    .line 201
    .local v0, conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 202
    :cond_0
    const/4 v1, 0x0

    .line 203
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, v0, p2}, Lio/rong/imlib/NativeClient;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getUnreadMentionedMessages(ILjava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1827
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lio/rong/imlib/NativeClient;->getUnreadMentionedMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1829
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1830
    :cond_0
    const/4 v0, 0x0

    .line 1832
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    :cond_1
    return-object v0
.end method

.method public getVoIPCallInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0}, Lio/rong/imlib/NativeClient;->getVoIPCallInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoIPKey(ILjava/lang/String;Ljava/lang/String;Lio/rong/imlib/IStringCallback;)V
    .locals 2
    .parameter "engineType"
    .parameter "channelName"
    .parameter "extra"
    .parameter "callback"

    .prologue
    .line 1735
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$36;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/LibHandlerStub$36;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IStringCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeClient;->getVoIPKey(ILjava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 1770
    return-void
.end method

.method public insertMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;
    .locals 6
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/rong/imlib/NativeClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 228
    .local v0, result:Lio/rong/imlib/model/Message;
    return-object v0
.end method

.method public joinChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "id"
    .parameter "defMessageCount"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$18;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$18;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->joinChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V

    .line 979
    return-void
.end method

.method public joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "id"
    .parameter "defMessageCount"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1016
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$20;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$20;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->joinExistChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1045
    return-void
.end method

.method public joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "id"
    .parameter "name"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 916
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->joinGroup(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 917
    return-void
.end method

.method public joinRealTimeLocation(ILjava/lang/String;)I
    .locals 1
    .parameter "type"
    .parameter "targetId"

    .prologue
    .line 1644
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeClient;->joinRealTimeLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public quitChatRoom(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "id"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1049
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$21;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$21;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->quitChatRoom(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1078
    return-void
.end method

.method public quitDiscussion(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "id"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->quitDiscussion(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 907
    return-void
.end method

.method public quitGroup(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "id"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 921
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->quitGroup(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 922
    return-void
.end method

.method public quitRealTimeLocation(ILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "targetId"

    .prologue
    .line 1649
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeClient;->quitRealTimeLocation(ILjava/lang/String;)V

    .line 1650
    return-void
.end method

.method public reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "id"
    .parameter "defMessageCount"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 983
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$19;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$19;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->reJoinChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1012
    return-void
.end method

.method public registerMessageType(Ljava/lang/String;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 145
    .local v1, loader:Ljava/lang/Class;,"Ljava/lang/Class<+Lio/rong/imlib/model/MessageContent;>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 151
    :goto_0
    :try_start_1
    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {v1}, Lio/rong/imlib/NativeClient;->registerMessageType(Ljava/lang/Class;)V
    :try_end_1
    .catch Lio/rong/imlib/AnnotationNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :goto_1
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v2, "LibHandlerStub"

    const-string v3, "registerMessageType ClassNotFoundException"

    invoke-static {v2, v3, v0}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, e:Lio/rong/imlib/AnnotationNotFoundException;
    const-string v2, "LibHandlerStub"

    const-string v3, "registerMessageType AnnotationNotFoundException"

    invoke-static {v2, v3, v0}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public removeConversation(ILjava/lang/String;)Z
    .locals 3
    .parameter "typeValue"
    .parameter "targetId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    .line 528
    .local v0, conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    if-nez v0, :cond_0

    .line 529
    const-string v1, "LibHandlerStub"

    const-string v2, "removeConversation the conversation type is null"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v1, 0x0

    .line 532
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, v0, p2}, Lio/rong/imlib/NativeClient;->removeConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeDiscussionMember(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "id"
    .parameter "userId"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 901
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->removeMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 902
    return-void
.end method

.method public removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "userId"
    .parameter "callback"

    .prologue
    .line 1432
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$31;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$31;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->removeFromBlacklist(Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1463
    return-void
.end method

.method public removeNotificationQuietHours(Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1116
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$23;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$23;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, v1}, Lio/rong/imlib/NativeClient;->removeNotificationQuietHours(Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1149
    return-void
.end method

.method public saveConversationDraft(Lio/rong/imlib/model/Conversation;Ljava/lang/String;)Z
    .locals 3
    .parameter "conversation"
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    const-string v0, "LibHandlerStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveConversationDraft "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lio/rong/imlib/NativeClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveTextMessageDraft(Lio/rong/imlib/model/Conversation;Ljava/lang/String;)Z
    .locals 3
    .parameter "conversation"
    .parameter "content"

    .prologue
    .line 1545
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lio/rong/imlib/NativeClient;->saveTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public searchPublicService(Ljava/lang/String;IILio/rong/imlib/IResultCallback;)V
    .locals 2
    .parameter "keyWords"
    .parameter "businessType"
    .parameter "searchType"
    .parameter "callback"

    .prologue
    .line 748
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$13;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/LibHandlerStub$13;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeClient;->searchPublicService(Ljava/lang/String;IILio/rong/imlib/NativeClient$IResultCallback;)V

    .line 780
    return-void
.end method

.method public sendLocationMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/ISendMessageCallback;)V
    .locals 2
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$6;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/LibHandlerStub$6;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/ISendMessageCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeClient;->sendLocationMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$ISendMessageCallback;)V

    .line 346
    return-void
.end method

.method public sendMediaMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/ISendMediaMessageCallback;)V
    .locals 2
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "sendMediaMessageCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1837
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$38;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/LibHandlerStub$38;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/ISendMediaMessageCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeClient;->sendMediaMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$ISendMediaMessageCallback;)V

    .line 1882
    return-void
.end method

.method public sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/ISendMessageCallback;)V
    .locals 2
    .parameter "message"
    .parameter "pushContent"
    .parameter "pushData"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$5;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/LibHandlerStub$5;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/ISendMessageCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeClient;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$ISendMessageCallback;)V

    .line 293
    return-void
.end method

.method public sendStatusMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/ILongCallback;)Lio/rong/imlib/model/Message;
    .locals 7
    .parameter "message"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lio/rong/imlib/LibHandlerStub$7;

    invoke-direct {v5, p0, p2}, Lio/rong/imlib/LibHandlerStub$7;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/ILongCallback;)V

    invoke-virtual/range {v0 .. v5}, Lio/rong/imlib/NativeClient;->sendStatusMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;ILio/rong/imlib/NativeClient$IResultCallback;)Lio/rong/imlib/model/Message;

    move-result-object v6

    .line 390
    .local v6, result:Lio/rong/imlib/model/Message;
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 392
    return-object v6
.end method

.method public setConnectionStatusListener(Lio/rong/imlib/IConnectionStatusListener;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 159
    new-instance v0, Lio/rong/imlib/LibHandlerStub$3;

    invoke-direct {v0, p0, p1}, Lio/rong/imlib/LibHandlerStub$3;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IConnectionStatusListener;)V

    invoke-static {v0}, Lio/rong/imlib/NativeClient;->setConnectionStatusListener(Lio/rong/imlib/NativeClient$ICodeListener;)V

    .line 176
    return-void
.end method

.method public setConversationNotificationStatus(ILjava/lang/String;ILio/rong/imlib/ILongCallback;)V
    .locals 4
    .parameter "type"
    .parameter "targetId"
    .parameter "status"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-static {p3}, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    move-result-object v2

    new-instance v3, Lio/rong/imlib/LibHandlerStub$10;

    invoke-direct {v3, p0, p4}, Lio/rong/imlib/LibHandlerStub$10;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/ILongCallback;)V

    invoke-virtual {v0, v1, p2, v2, v3}, Lio/rong/imlib/NativeClient;->setConversationNotificationStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;Lio/rong/imlib/NativeClient$IResultCallback;)V

    .line 638
    return-void
.end method

.method public setConversationTopStatus(ILjava/lang/String;Z)Z
    .locals 3
    .parameter "typeValue"
    .parameter "targetId"
    .parameter "isTop"

    .prologue
    .line 642
    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    .line 644
    .local v0, conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    if-nez v0, :cond_0

    .line 645
    const-string v1, "LibHandlerStub"

    const-string v2, "setConversationTopStatus ConversationType is null"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v1, 0x0

    .line 649
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, v0, p2, p3}, Lio/rong/imlib/NativeClient;->setConversationToTop(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public setDiscussionInviteStatus(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "targetId"
    .parameter "status"
    .parameter "callback"

    .prologue
    .line 1359
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$29;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$29;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->setDiscussionInviteStatus(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1391
    return-void
.end method

.method public setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "id"
    .parameter "name"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->setDiscussionName(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 700
    return-void
.end method

.method public setMessageContent(I[BLjava/lang/String;)Z
    .locals 1
    .parameter "messageId"
    .parameter "messageContent"
    .parameter "objectName"

    .prologue
    .line 1819
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/rong/imlib/NativeClient;->setMessageContent(I[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMessageExtra(ILjava/lang/String;)Z
    .locals 1
    .parameter "messageId"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeClient;->setMessageExtra(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMessageReceivedStatus(II)Z
    .locals 2
    .parameter "messageId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/model/Message$ReceivedStatus;

    invoke-direct {v1, p2}, Lio/rong/imlib/model/Message$ReceivedStatus;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;)Z

    move-result v0

    return v0
.end method

.method public setMessageSentStatus(II)Z
    .locals 2
    .parameter "messageId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {p2}, Lio/rong/imlib/model/Message$SentStatus;->setValue(I)Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->setMessageSentStatus(ILio/rong/imlib/model/Message$SentStatus;)Z

    move-result v0

    return v0
.end method

.method public setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "startTime"
    .parameter "spanMinutes"
    .parameter "callback"

    .prologue
    .line 1083
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$22;

    invoke-direct {v1, p0, p3}, Lio/rong/imlib/LibHandlerStub$22;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lio/rong/imlib/NativeClient;->setNotificationQuietHours(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1112
    return-void
.end method

.method public setOnReceiveMessageListener(Lio/rong/imlib/OnReceiveMessageListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    new-instance v0, Lio/rong/imlib/LibHandlerStub$4;

    invoke-direct {v0, p0, p1}, Lio/rong/imlib/LibHandlerStub$4;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/OnReceiveMessageListener;)V

    .line 221
    .local v0, receiveMessageListener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v1, v0}, Lio/rong/imlib/NativeClient;->setOnReceiveMessageListener(Lio/rong/imlib/NativeClient$OnReceiveMessageListener;)V

    .line 223
    .end local v0           #receiveMessageListener:Lio/rong/imlib/NativeClient$OnReceiveMessageListener;
    :cond_0
    return-void
.end method

.method public setServerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "naviServer"
    .parameter "fileServer"

    .prologue
    .line 1779
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeClient;->setServerInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    return-void
.end method

.method public setUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "userData"
    .parameter "callback"

    .prologue
    .line 1555
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$34;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$34;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->setUserData(Lio/rong/imlib/model/UserData;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 1586
    return-void
.end method

.method public setupRealTimeLocation(ILjava/lang/String;)I
    .locals 3
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 1633
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2}, Lio/rong/imlib/NativeClient;->setupRealTimeLocation(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 1634
    .local v0, errorCode:I
    return v0
.end method

.method public startRealTimeLocation(ILjava/lang/String;)I
    .locals 1
    .parameter "type"
    .parameter "targetId"

    .prologue
    .line 1639
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/NativeClient;->startRealTimeLocation(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public subscribePublicService(Ljava/lang/String;IZLio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter "targetId"
    .parameter "categoryId"
    .parameter "subscribe"
    .parameter "callback"

    .prologue
    .line 784
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$14;

    invoke-direct {v1, p0, p4}, Lio/rong/imlib/LibHandlerStub$14;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lio/rong/imlib/NativeClient;->subscribePublicService(Ljava/lang/String;IZLio/rong/imlib/NativeClient$OperationCallback;)V

    .line 814
    return-void
.end method

.method public syncGroup(Ljava/util/List;Lio/rong/imlib/IOperationCallback;)V
    .locals 2
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Group;",
            ">;",
            "Lio/rong/imlib/IOperationCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 911
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Group;>;"
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$OperationCallback;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->syncGroup(Ljava/util/List;Lio/rong/imlib/NativeClient$OperationCallback;)V

    .line 912
    return-void
.end method

.method public updateConversationInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "targetId"
    .parameter "title"
    .parameter "portrait"

    .prologue
    .line 506
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-static {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lio/rong/imlib/NativeClient;->updateConversationInfo(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 507
    .local v0, result:Z
    return v0
.end method

.method public updateMessageReceiptStatus(Ljava/lang/String;IJ)Z
    .locals 1
    .parameter "targetId"
    .parameter "categoryId"
    .parameter "timestamp"

    .prologue
    .line 1722
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/rong/imlib/NativeClient;->updateMessageReceiptStatus(Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method public updateRealTimeLocationStatus(ILjava/lang/String;DD)V
    .locals 9
    .parameter "type"
    .parameter "targetId"
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 1717
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lio/rong/imlib/NativeClient;->updateRealTimeLocationStatus(ILjava/lang/String;DD)V

    .line 1718
    return-void
.end method

.method public uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/IUploadCallback;)V
    .locals 2
    .parameter "message"
    .parameter "callback"

    .prologue
    .line 1193
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub;->mClient:Lio/rong/imlib/NativeClient;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$25;

    invoke-direct {v1, p0, p2}, Lio/rong/imlib/LibHandlerStub$25;-><init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IUploadCallback;)V

    invoke-virtual {v0, p1, v1}, Lio/rong/imlib/NativeClient;->uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/NativeClient$IResultProgressCallback;)V

    .line 1237
    return-void
.end method

.method public validateAuth(Ljava/lang/String;)Z
    .locals 1
    .parameter "auth"

    .prologue
    .line 1186
    const/4 v0, 0x0

    return v0
.end method
