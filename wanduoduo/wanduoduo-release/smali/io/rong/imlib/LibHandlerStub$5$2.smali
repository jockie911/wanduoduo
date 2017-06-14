.class Lio/rong/imlib/LibHandlerStub$5$2;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub$5;->onSuccess(Lio/rong/imlib/model/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/LibHandlerStub$5;

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub$5;Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$5$2;->this$1:Lio/rong/imlib/LibHandlerStub$5;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$5$2;->val$message:Lio/rong/imlib/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 268
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$5$2;->this$1:Lio/rong/imlib/LibHandlerStub$5;

    iget-object v1, v1, Lio/rong/imlib/LibHandlerStub$5;->val$callback:Lio/rong/imlib/ISendMessageCallback;

    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub$5$2;->val$message:Lio/rong/imlib/model/Message;

    invoke-interface {v1, v2}, Lio/rong/imlib/ISendMessageCallback;->onSuccess(Lio/rong/imlib/model/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
