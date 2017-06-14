.class Lio/rong/imlib/RongIMClient$65$1;
.super Lio/rong/imlib/IDownloadMediaCallback$Stub;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$65;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$65;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$65;)V
    .locals 0
    .parameter

    .prologue
    .line 3798
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$65$1;->this$1:Lio/rong/imlib/RongIMClient$65;

    invoke-direct {p0}, Lio/rong/imlib/IDownloadMediaCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3802
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$65$1;->this$1:Lio/rong/imlib/RongIMClient$65;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$65;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    if-eqz v0, :cond_0

    .line 3803
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$65$1;->this$1:Lio/rong/imlib/RongIMClient$65;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$65;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onCallback(Ljava/lang/Object;)V

    .line 3805
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
    .line 3809
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$65$1;->this$1:Lio/rong/imlib/RongIMClient$65;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$65;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    if-eqz v0, :cond_0

    .line 3810
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$65$1;->this$1:Lio/rong/imlib/RongIMClient$65;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$65;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    invoke-static {p1}, Lio/rong/imlib/RongIMClient$ErrorCode;->valueOf(I)Lio/rong/imlib/RongIMClient$ErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3812
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 1
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3816
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$65$1;->this$1:Lio/rong/imlib/RongIMClient$65;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$65;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    if-eqz v0, :cond_0

    .line 3817
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$65$1;->this$1:Lio/rong/imlib/RongIMClient$65;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$65;->val$callback:Lio/rong/imlib/RongIMClient$DownloadMediaCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$DownloadMediaCallback;->onProgressCallback(I)V

    .line 3819
    :cond_0
    return-void
.end method
