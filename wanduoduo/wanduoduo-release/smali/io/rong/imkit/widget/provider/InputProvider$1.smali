.class Lio/rong/imkit/widget/provider/InputProvider$1;
.super Ljava/lang/Object;
.source "InputProvider.java"

# interfaces
.implements Lio/rong/imlib/IRongCallback$ISendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/InputProvider;->publish(Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/InputProvider;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/InputProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lio/rong/imkit/widget/provider/InputProvider$1;->this$0:Lio/rong/imkit/widget/provider/InputProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 156
    return-void
.end method

.method public onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "message"
    .parameter "errorCode"

    .prologue
    .line 166
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 161
    return-void
.end method
