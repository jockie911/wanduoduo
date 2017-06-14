.class Lio/rong/imlib/RongIMClient$98$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$98;->onReceived(Lio/rong/imlib/model/Message;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$98;

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$98;Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5533
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$98$1;->this$1:Lio/rong/imlib/RongIMClient$98;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$98$1;->val$message:Lio/rong/imlib/model/Message;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 5555
    const-string v0, "RongIMClient"

    const-string v1, "recall message received, but getMessageByUid failed"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5556
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 5536
    if-nez p1, :cond_1

    .line 5551
    :cond_0
    :goto_0
    return-void

    .line 5539
    :cond_1
    new-instance v2, Lio/rong/message/RecallNotificationMessage;

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$98$1;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v6, v7, v5}, Lio/rong/message/RecallNotificationMessage;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 5540
    .local v2, recallNotificationMessage:Lio/rong/message/RecallNotificationMessage;
    invoke-virtual {v2}, Lio/rong/message/RecallNotificationMessage;->encode()[B

    move-result-object v0

    .line 5542
    .local v0, data:[B
    :try_start_0
    const-class v4, Lio/rong/message/RecallNotificationMessage;

    const-class v5, Lio/rong/imlib/MessageTag;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/MessageTag;

    .line 5543
    .local v3, recallNotificationTag:Lio/rong/imlib/MessageTag;
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$98$1;->this$1:Lio/rong/imlib/RongIMClient$98;

    iget-object v4, v4, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    invoke-interface {v3}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v0, v6}, Lio/rong/imlib/IHandler;->setMessageContent(I[BLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5548
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$3000()Lio/rong/imlib/RongIMClient$RecallMessageListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5549
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$3000()Lio/rong/imlib/RongIMClient$RecallMessageListener;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    invoke-interface {v4, v5, v2}, Lio/rong/imlib/RongIMClient$RecallMessageListener;->onMessageRecalled(ILio/rong/message/RecallNotificationMessage;)V

    goto :goto_0

    .line 5544
    .end local v3           #recallNotificationTag:Lio/rong/imlib/MessageTag;
    :catch_0
    move-exception v1

    .line 5545
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5533
    check-cast p1, Lio/rong/imlib/model/Message;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imlib/RongIMClient$98$1;->onSuccess(Lio/rong/imlib/model/Message;)V

    return-void
.end method
