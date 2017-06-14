.class final Lio/rong/imkit/RongIM$5;
.super Ljava/lang/Object;
.source "RongIM.java"

# interfaces
.implements Lio/rong/imlib/RongIMClient$ReadReceiptListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIM;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadReceiptReceived(Lio/rong/imlib/model/Message;)V
    .locals 9
    .parameter "message"

    .prologue
    .line 380
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/ReadReceiptMessage;

    .line 381
    .local v0, content:Lio/rong/message/ReadReceiptMessage;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v1, v2}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    const/4 v8, 0x0

    .line 384
    .local v8, syncReadReceipt:Z
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$bool;->rc_enable_sync_unread_status:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 389
    :goto_0
    if-nez v8, :cond_0

    .line 416
    .end local v8           #syncReadReceipt:Z
    :goto_1
    return-void

    .line 385
    .restart local v8       #syncReadReceipt:Z
    :catch_0
    move-exception v7

    .line 386
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    invoke-static {}, Lio/rong/imkit/RongIM;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rc_enable_sync_unread_status not configure in rc_config.xml"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 392
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/rong/message/ReadReceiptMessage;->getLastMessageSendTime()J

    move-result-wide v4

    new-instance v6, Lio/rong/imkit/RongIM$5$1;

    invoke-direct {v6, p0, p1}, Lio/rong/imkit/RongIM$5$1;-><init>(Lio/rong/imkit/RongIM$5;Lio/rong/imlib/model/Message;)V

    invoke-virtual/range {v1 .. v6}, Lio/rong/imlib/RongIMClient;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JLio/rong/imlib/RongIMClient$OperationCallback;)V

    goto :goto_1

    .line 404
    .end local v8           #syncReadReceipt:Z
    :cond_1
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lio/rong/message/ReadReceiptMessage;->getLastMessageSendTime()J

    move-result-wide v4

    new-instance v6, Lio/rong/imkit/RongIM$5$2;

    invoke-direct {v6, p0, p1}, Lio/rong/imkit/RongIM$5$2;-><init>(Lio/rong/imkit/RongIM$5;Lio/rong/imlib/model/Message;)V

    invoke-virtual/range {v1 .. v6}, Lio/rong/imlib/RongIMClient;->updateMessageReceiptStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JLio/rong/imlib/RongIMClient$OperationCallback;)V

    goto :goto_1
.end method
