.class Lio/rong/imlib/NativeClient$14;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/message/IHandleMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->sendLocationMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$ISendMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$ISendMessageCallback;

.field final synthetic val$msgTag:Lio/rong/imlib/MessageTag;

.field final synthetic val$pushContent:Ljava/lang/String;

.field final synthetic val$pushData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/MessageTag;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/NativeClient$ISendMessageCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1408
    iput-object p1, p0, Lio/rong/imlib/NativeClient$14;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$14;->val$msgTag:Lio/rong/imlib/MessageTag;

    iput-object p3, p0, Lio/rong/imlib/NativeClient$14;->val$pushContent:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/NativeClient$14;->val$pushData:Ljava/lang/String;

    iput-object p5, p0, Lio/rong/imlib/NativeClient$14;->val$callback:Lio/rong/imlib/NativeClient$ISendMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleResult(Lio/rong/imlib/model/Message;I)V
    .locals 11
    .parameter "message"
    .parameter "resultCode"

    .prologue
    const/4 v7, 0x0

    .line 1411
    const-string v1, "NativeClient"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleResult "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/LocationMessage;

    invoke-virtual {v0}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    if-nez p2, :cond_3

    .line 1413
    iget-object v0, p0, Lio/rong/imlib/NativeClient$14;->this$0:Lio/rong/imlib/NativeClient;

    #calls: Lio/rong/imlib/NativeClient;->isMentionedMessage(Lio/rong/imlib/model/Message;)Z
    invoke-static {v0, p1}, Lio/rong/imlib/NativeClient;->access$500(Lio/rong/imlib/NativeClient;Lio/rong/imlib/model/Message;)Z

    move-result v10

    .line 1414
    .local v10, isMentioned:Z
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/MessageContent;->encode()[B

    move-result-object v5

    .line 1415
    .local v5, data:[B
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Lio/rong/imlib/NativeObject;->SetMessageContent(I[BLjava/lang/String;)Z

    .line 1416
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v2

    const/4 v3, 0x3

    iget-object v4, p0, Lio/rong/imlib/NativeClient$14;->val$msgTag:Lio/rong/imlib/MessageTag;

    invoke-interface {v4}, Lio/rong/imlib/MessageTag;->value()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lio/rong/imlib/NativeClient$14;->val$pushContent:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v7

    :goto_0
    iget-object v8, p0, Lio/rong/imlib/NativeClient$14;->val$pushData:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v8

    new-instance v9, Lio/rong/imlib/NativeClient$14$1;

    invoke-direct {v9, p0, p1}, Lio/rong/imlib/NativeClient$14$1;-><init>(Lio/rong/imlib/NativeClient$14;Lio/rong/imlib/model/Message;)V

    invoke-virtual/range {v0 .. v10}, Lio/rong/imlib/NativeObject;->SendMessage(Ljava/lang/String;IILjava/lang/String;[B[B[BILio/rong/imlib/NativeObject$PublishAckListener;Z)V

    .line 1449
    .end local v5           #data:[B
    .end local v10           #isMentioned:Z
    :cond_0
    :goto_2
    return-void

    .line 1416
    .restart local v5       #data:[B
    .restart local v10       #isMentioned:Z
    :cond_1
    iget-object v6, p0, Lio/rong/imlib/NativeClient$14;->val$pushContent:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lio/rong/imlib/NativeClient$14;->val$pushData:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    goto :goto_1

    .line 1444
    .end local v5           #data:[B
    .end local v10           #isMentioned:Z
    :cond_3
    sget-object v0, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {p1, v0}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 1445
    sget-object v0, Lio/rong/imlib/NativeClient;->nativeObj:Lio/rong/imlib/NativeObject;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v1

    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v2}, Lio/rong/imlib/model/Message$SentStatus;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/NativeObject;->SetSendStatus(II)Z

    .line 1446
    iget-object v0, p0, Lio/rong/imlib/NativeClient$14;->val$callback:Lio/rong/imlib/NativeClient$ISendMessageCallback;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lio/rong/imlib/NativeClient$14;->val$callback:Lio/rong/imlib/NativeClient$ISendMessageCallback;

    const/16 v1, 0x753e

    invoke-interface {v0, p1, v1}, Lio/rong/imlib/NativeClient$ISendMessageCallback;->onError(Ljava/lang/Object;I)V

    goto :goto_2
.end method
