.class Lio/rong/imlib/RongIMClient$58$1;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$58;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$58;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$58;)V
    .locals 0
    .parameter

    .prologue
    .line 3350
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$58$1;->this$1:Lio/rong/imlib/RongIMClient$58;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3353
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58$1;->this$1:Lio/rong/imlib/RongIMClient$58;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$58;->val$callback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;

    if-eqz v0, :cond_0

    .line 3354
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$58$1;->this$1:Lio/rong/imlib/RongIMClient$58;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$58;->val$callback:Lio/rong/imlib/IRongCallback$ISendMessageCallback;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$58$1;->this$1:Lio/rong/imlib/RongIMClient$58;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$58;->val$message:Lio/rong/imlib/model/Message;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-interface {v0, v1, v2}, Lio/rong/imlib/IRongCallback$ISendMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3355
    :cond_0
    return-void
.end method
