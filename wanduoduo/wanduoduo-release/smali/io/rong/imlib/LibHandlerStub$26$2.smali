.class Lio/rong/imlib/LibHandlerStub$26$2;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub$26;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/LibHandlerStub$26;

.field final synthetic val$localMediaPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub$26;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$26$2;->this$1:Lio/rong/imlib/LibHandlerStub$26;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$26$2;->val$localMediaPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1264
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$26$2;->this$1:Lio/rong/imlib/LibHandlerStub$26;

    iget-object v1, v1, Lio/rong/imlib/LibHandlerStub$26;->val$callback:Lio/rong/imlib/IDownloadMediaCallback;

    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub$26$2;->val$localMediaPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Lio/rong/imlib/IDownloadMediaCallback;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    :goto_0
    return-void

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
