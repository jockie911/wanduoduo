.class Lio/rong/imlib/LibHandlerStub$6$3;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub$6;->onError(Lio/rong/imlib/model/Message;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/LibHandlerStub$6;

.field final synthetic val$code:I

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub$6;Lio/rong/imlib/model/Message;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$6$3;->this$1:Lio/rong/imlib/LibHandlerStub$6;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$6$3;->val$message:Lio/rong/imlib/model/Message;

    iput p3, p0, Lio/rong/imlib/LibHandlerStub$6$3;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 337
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$6$3;->this$1:Lio/rong/imlib/LibHandlerStub$6;

    iget-object v1, v1, Lio/rong/imlib/LibHandlerStub$6;->val$callback:Lio/rong/imlib/ISendMessageCallback;

    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub$6$3;->val$message:Lio/rong/imlib/model/Message;

    iget v3, p0, Lio/rong/imlib/LibHandlerStub$6$3;->val$code:I

    invoke-interface {v1, v2, v3}, Lio/rong/imlib/ISendMessageCallback;->onError(Lio/rong/imlib/model/Message;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method