.class Lio/rong/imlib/RongIMClient$105;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Lio/rong/imlib/IRongCallback$ISendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->recallMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ResultCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7626
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$105;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$105;->val$message:Lio/rong/imlib/model/Message;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$105;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 7629
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .parameter "msg"
    .parameter "errorCode"

    .prologue
    .line 7652
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$105;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 7653
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$105;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v0, p2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 7655
    :cond_0
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 7633
    new-instance v2, Lio/rong/message/RecallNotificationMessage;

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$105;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v6

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$105;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v6, v7, v5}, Lio/rong/message/RecallNotificationMessage;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 7634
    .local v2, recallNotificationMessage:Lio/rong/message/RecallNotificationMessage;
    invoke-virtual {v2}, Lio/rong/message/RecallNotificationMessage;->encode()[B

    move-result-object v0

    .line 7635
    .local v0, data:[B
    const-class v4, Lio/rong/message/RecallNotificationMessage;

    const-class v5, Lio/rong/imlib/MessageTag;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/MessageTag;

    .line 7637
    .local v3, recallNotificationTag:Lio/rong/imlib/MessageTag;
    :try_start_0
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$105;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$105;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    invoke-interface {v3}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v0, v6}, Lio/rong/imlib/IHandler;->setMessageContent(I[BLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7645
    :cond_0
    :goto_0
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$105;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v4, :cond_1

    .line 7646
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$105;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v4, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onSuccess(Ljava/lang/Object;)V

    .line 7648
    :cond_1
    return-void

    .line 7638
    :catch_0
    move-exception v1

    .line 7639
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 7641
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$105;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v4, :cond_0

    .line 7642
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$105;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v5, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v4, v5}, Lio/rong/imlib/RongIMClient$ResultCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
