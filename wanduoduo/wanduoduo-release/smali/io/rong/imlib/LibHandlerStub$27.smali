.class Lio/rong/imlib/LibHandlerStub$27;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IDownloadMediaMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->downloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/IDownloadMediaMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/rong/imlib/NativeClient$IDownloadMediaMessageCallback",
        "<",
        "Lio/rong/imlib/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$callback:Lio/rong/imlib/IDownloadMediaMessageCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IDownloadMediaMessageCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1290
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$27;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$27;->val$callback:Lio/rong/imlib/IDownloadMediaMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled()V
    .locals 2

    .prologue
    .line 1312
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$27;->val$callback:Lio/rong/imlib/IDownloadMediaMessageCallback;

    invoke-interface {v1}, Lio/rong/imlib/IDownloadMediaMessageCallback;->onCanceled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    :goto_0
    return-void

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 1321
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$27;->val$callback:Lio/rong/imlib/IDownloadMediaMessageCallback;

    invoke-interface {v1, p1}, Lio/rong/imlib/IDownloadMediaMessageCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    :goto_0
    return-void

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 1303
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$27;->val$callback:Lio/rong/imlib/IDownloadMediaMessageCallback;

    invoke-interface {v1, p1}, Lio/rong/imlib/IDownloadMediaMessageCallback;->onProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :goto_0
    return-void

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(Lio/rong/imlib/model/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 1294
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$27;->val$callback:Lio/rong/imlib/IDownloadMediaMessageCallback;

    invoke-interface {v1, p1}, Lio/rong/imlib/IDownloadMediaMessageCallback;->onComplete(Lio/rong/imlib/model/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    :goto_0
    return-void

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1290
    check-cast p1, Lio/rong/imlib/model/Message;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imlib/LibHandlerStub$27;->onSuccess(Lio/rong/imlib/model/Message;)V

    return-void
.end method
