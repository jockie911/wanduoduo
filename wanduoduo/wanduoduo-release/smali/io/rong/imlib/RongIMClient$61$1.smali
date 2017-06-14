.class Lio/rong/imlib/RongIMClient$61$1;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Lio/rong/imlib/IRongCallback$ISendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$61;->onSuccess(Lio/rong/imlib/model/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$61;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$61;)V
    .locals 0
    .parameter

    .prologue
    .line 3561
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 3565
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .parameter "message"
    .parameter "errorCode"

    .prologue
    .line 3575
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    if-eqz v0, :cond_0

    .line 3576
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3577
    :cond_0
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 3569
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    if-eqz v0, :cond_0

    .line 3570
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$61$1;->this$1:Lio/rong/imlib/RongIMClient$61;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$61;->val$callback:Lio/rong/imlib/RongIMClient$SendImageMessageCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$SendImageMessageCallback;->onSuccess(Lio/rong/imlib/model/Message;)V

    .line 3571
    :cond_0
    return-void
.end method
