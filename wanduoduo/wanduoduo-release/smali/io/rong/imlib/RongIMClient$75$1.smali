.class Lio/rong/imlib/RongIMClient$75$1;
.super Lio/rong/imlib/IResultCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$75;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$75;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$75;)V
    .locals 0
    .parameter

    .prologue
    .line 4358
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$75$1;->this$1:Lio/rong/imlib/RongIMClient$75;

    invoke-direct {p0}, Lio/rong/imlib/IResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lio/rong/imlib/model/RemoteModelWrap;)V
    .locals 2
    .parameter "model"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4361
    const/4 v0, 0x0

    .line 4362
    .local v0, info:Lio/rong/imlib/model/ChatRoomInfo;
    if-eqz p1, :cond_0

    .line 4363
    invoke-virtual {p1}, Lio/rong/imlib/model/RemoteModelWrap;->getContent()Landroid/os/Parcelable;

    move-result-object v0

    .end local v0           #info:Lio/rong/imlib/model/ChatRoomInfo;
    check-cast v0, Lio/rong/imlib/model/ChatRoomInfo;

    .line 4364
    .restart local v0       #info:Lio/rong/imlib/model/ChatRoomInfo;
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$75$1;->this$1:Lio/rong/imlib/RongIMClient$75;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$75;->val$order:Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/ChatRoomInfo;->setMemberOrder(Lio/rong/imlib/model/ChatRoomInfo$ChatRoomMemberOrder;)V

    .line 4366
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$75$1;->this$1:Lio/rong/imlib/RongIMClient$75;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$75;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v1, :cond_1

    .line 4367
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$75$1;->this$1:Lio/rong/imlib/RongIMClient$75;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$75;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v1, v0}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V

    .line 4369
    :cond_1
    return-void
.end method

.method public onFailure(I)V
    .locals 1
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4373
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$75$1;->this$1:Lio/rong/imlib/RongIMClient$75;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$75;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v0, :cond_0

    .line 4374
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$75$1;->this$1:Lio/rong/imlib/RongIMClient$75;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$75;->val$callback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(I)V

    .line 4376
    :cond_0
    return-void
.end method
