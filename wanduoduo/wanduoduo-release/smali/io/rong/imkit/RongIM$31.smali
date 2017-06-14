.class Lio/rong/imkit/RongIM$31;
.super Ljava/lang/Object;
.source "RongIM.java"

# interfaces
.implements Lio/rong/imlib/IRongCallback$ISendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIM;->sendLocationMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIM;

.field final synthetic val$sendMessageCallback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2773
    iput-object p1, p0, Lio/rong/imkit/RongIM$31;->this$0:Lio/rong/imkit/RongIM;

    iput-object p2, p0, Lio/rong/imkit/RongIM$31;->val$sendMessageCallback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 2776
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lio/rong/imlib/MessageTag;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/MessageTag;

    .line 2777
    .local v0, tag:Lio/rong/imlib/MessageTag;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2778
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2781
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/RongIM$31;->val$sendMessageCallback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;

    if-eqz v1, :cond_1

    .line 2782
    iget-object v1, p0, Lio/rong/imkit/RongIM$31;->val$sendMessageCallback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;

    invoke-interface {v1, p1}, Lio/rong/imlib/IRongCallback$ISendMessageCallback;->onAttached(Lio/rong/imlib/model/Message;)V

    .line 2784
    :cond_1
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .parameter "message"
    .parameter "errorCode"

    .prologue
    .line 2796
    iget-object v0, p0, Lio/rong/imkit/RongIM$31;->this$0:Lio/rong/imkit/RongIM;

    #calls: Lio/rong/imkit/RongIM;->filterSentMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    invoke-static {v0, p1, p2}, Lio/rong/imkit/RongIM;->access$600(Lio/rong/imkit/RongIM;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2797
    iget-object v0, p0, Lio/rong/imkit/RongIM$31;->val$sendMessageCallback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;

    if-eqz v0, :cond_0

    .line 2798
    iget-object v0, p0, Lio/rong/imkit/RongIM$31;->val$sendMessageCallback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;

    invoke-interface {v0, p1, p2}, Lio/rong/imlib/IRongCallback$ISendMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2800
    :cond_0
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 2788
    iget-object v0, p0, Lio/rong/imkit/RongIM$31;->this$0:Lio/rong/imkit/RongIM;

    const/4 v1, 0x0

    #calls: Lio/rong/imkit/RongIM;->filterSentMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    invoke-static {v0, p1, v1}, Lio/rong/imkit/RongIM;->access$600(Lio/rong/imkit/RongIM;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2789
    iget-object v0, p0, Lio/rong/imkit/RongIM$31;->val$sendMessageCallback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;

    if-eqz v0, :cond_0

    .line 2790
    iget-object v0, p0, Lio/rong/imkit/RongIM$31;->val$sendMessageCallback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/IRongCallback$ISendMessageCallback;->onSuccess(Lio/rong/imlib/model/Message;)V

    .line 2792
    :cond_0
    return-void
.end method
