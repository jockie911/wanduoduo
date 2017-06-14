.class Lio/rong/imkit/RongIM$5$2;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "RongIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIM$5;->onReadReceiptReceived(Lio/rong/imlib/model/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIM$5;

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIM$5;Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lio/rong/imkit/RongIM$5$2;->this$0:Lio/rong/imkit/RongIM$5;

    iput-object p2, p0, Lio/rong/imkit/RongIM$5$2;->val$message:Lio/rong/imlib/model/Message;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 412
    invoke-static {}, Lio/rong/imkit/RongIM;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RongIM : updateMessageReceiptStatus fail"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 407
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/model/Event$ReadReceiptEvent;

    iget-object v2, p0, Lio/rong/imkit/RongIM$5$2;->val$message:Lio/rong/imlib/model/Message;

    invoke-direct {v1, v2}, Lio/rong/imkit/model/Event$ReadReceiptEvent;-><init>(Lio/rong/imlib/model/Message;)V

    invoke-virtual {v0, v1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 408
    return-void
.end method
