.class Lio/rong/imlib/RongIMClient$107$1;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$107;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$107;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$107;)V
    .locals 0
    .parameter

    .prologue
    .line 7766
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$107$1;->this$1:Lio/rong/imlib/RongIMClient$107;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7769
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$107$1;->this$1:Lio/rong/imlib/RongIMClient$107;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$107;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$107$1;->this$1:Lio/rong/imlib/RongIMClient$107;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$107;->val$message:Lio/rong/imlib/model/Message;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-interface {v0, v1, v2}, Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 7770
    return-void
.end method
