.class Lio/rong/imlib/RongIMClient$69$1;
.super Lio/rong/imlib/ILongCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$69;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$69;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$69;)V
    .locals 0
    .parameter

    .prologue
    .line 4048
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$69$1;->this$1:Lio/rong/imlib/RongIMClient$69;

    invoke-direct {p0}, Lio/rong/imlib/ILongCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(J)V
    .locals 3
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4051
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$69$1;->this$1:Lio/rong/imlib/RongIMClient$69;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$69;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 4052
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$69$1;->this$1:Lio/rong/imlib/RongIMClient$69;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$69;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    long-to-int v1, p1

    invoke-static {v1}, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V

    .line 4054
    :cond_0
    return-void
.end method

.method public onFailure(I)V
    .locals 2
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4058
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$69$1;->this$1:Lio/rong/imlib/RongIMClient$69;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$69;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 4059
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$69$1;->this$1:Lio/rong/imlib/RongIMClient$69;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$69;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 4061
    :cond_0
    return-void
.end method
