.class Lio/rong/imlib/RongIMClient$64$1;
.super Lio/rong/imlib/IUploadCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$64;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$64;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$64;)V
    .locals 0
    .parameter

    .prologue
    .line 3729
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$64$1;->this$1:Lio/rong/imlib/RongIMClient$64;

    invoke-direct {p0}, Lio/rong/imlib/IUploadCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3732
    const-string v1, "RongIMClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadMedia onComplete url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$64$1;->this$1:Lio/rong/imlib/RongIMClient$64;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$64;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 3735
    .local v0, content:Lio/rong/imlib/model/MessageContent;
    instance-of v1, v0, Lio/rong/message/ImageMessage;

    if-eqz v1, :cond_0

    .line 3736
    check-cast v0, Lio/rong/message/ImageMessage;

    .end local v0           #content:Lio/rong/imlib/model/MessageContent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/message/ImageMessage;->setRemoteUri(Landroid/net/Uri;)V

    .line 3739
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$64$1;->this$1:Lio/rong/imlib/RongIMClient$64;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$64;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    if-eqz v1, :cond_1

    .line 3740
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$64$1;->this$1:Lio/rong/imlib/RongIMClient$64;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$64;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$64$1;->this$1:Lio/rong/imlib/RongIMClient$64;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient$64;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onCallback(Ljava/lang/Object;)V

    .line 3741
    :cond_1
    return-void
.end method

.method public onFailure(I)V
    .locals 3
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3745
    const-string v0, "RongIMClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadMedia onFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$64$1;->this$1:Lio/rong/imlib/RongIMClient$64;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$64;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    if-eqz v0, :cond_0

    .line 3748
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$64$1;->this$1:Lio/rong/imlib/RongIMClient$64;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$64;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$64$1;->this$1:Lio/rong/imlib/RongIMClient$64;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$64;->val$message:Lio/rong/imlib/model/Message;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onFail(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3749
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 2
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3753
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$64$1;->this$1:Lio/rong/imlib/RongIMClient$64;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$64;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    if-eqz v0, :cond_0

    .line 3754
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$64$1;->this$1:Lio/rong/imlib/RongIMClient$64;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$64;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$64$1;->this$1:Lio/rong/imlib/RongIMClient$64;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$64;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v0, v1, p1}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onProgressCallback(Lio/rong/imlib/model/Message;I)V

    .line 3755
    :cond_0
    return-void
.end method
