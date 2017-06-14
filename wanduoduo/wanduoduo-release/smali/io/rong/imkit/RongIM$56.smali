.class Lio/rong/imkit/RongIM$56;
.super Ljava/lang/Object;
.source "RongIM.java"

# interfaces
.implements Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIM;->sendMediaMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIM;

.field final synthetic val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

.field final synthetic val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3908
    iput-object p1, p0, Lio/rong/imkit/RongIM$56;->this$0:Lio/rong/imkit/RongIM;

    iput-object p2, p0, Lio/rong/imkit/RongIM$56;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iput-object p3, p0, Lio/rong/imkit/RongIM$56;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 3923
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3925
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    if-eqz v0, :cond_0

    .line 3926
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;->onAttached(Lio/rong/imlib/model/Message;)V

    .line 3927
    :cond_0
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .parameter "message"
    .parameter "errorCode"

    .prologue
    .line 3939
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->this$0:Lio/rong/imkit/RongIM;

    #calls: Lio/rong/imkit/RongIM;->filterSentMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    invoke-static {v0, p1, p2}, Lio/rong/imkit/RongIM;->access$600(Lio/rong/imkit/RongIM;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3941
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    if-eqz v0, :cond_0

    .line 3942
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    invoke-interface {v0, p1, p2}, Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3943
    :cond_0
    return-void
.end method

.method public onProgress(Lio/rong/imlib/model/Message;I)V
    .locals 2
    .parameter "message"
    .parameter "progress"

    .prologue
    .line 3911
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 3919
    :cond_0
    :goto_0
    return-void

    .line 3913
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-virtual {v0, p1}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->setMessage(Lio/rong/imlib/model/Message;)V

    .line 3914
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;

    invoke-virtual {v0, p2}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->setProgress(I)V

    .line 3915
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/RongIM$56;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3917
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    if-eqz v0, :cond_0

    .line 3918
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    invoke-interface {v0, p1, p2}, Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;->onProgress(Lio/rong/imlib/model/Message;I)V

    goto :goto_0
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 3931
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->this$0:Lio/rong/imkit/RongIM;

    const/4 v1, 0x0

    #calls: Lio/rong/imkit/RongIM;->filterSentMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    invoke-static {v0, p1, v1}, Lio/rong/imkit/RongIM;->access$600(Lio/rong/imkit/RongIM;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3933
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    if-eqz v0, :cond_0

    .line 3934
    iget-object v0, p0, Lio/rong/imkit/RongIM$56;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;->onSuccess(Lio/rong/imlib/model/Message;)V

    .line 3935
    :cond_0
    return-void
.end method
