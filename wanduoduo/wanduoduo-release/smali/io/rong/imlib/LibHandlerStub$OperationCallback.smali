.class Lio/rong/imlib/LibHandlerStub$OperationCallback;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/LibHandlerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OperationCallback"
.end annotation


# instance fields
.field callback:Lio/rong/imlib/IOperationCallback;

.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;


# direct methods
.method public constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IOperationCallback;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 1592
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$OperationCallback;->this$0:Lio/rong/imlib/LibHandlerStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$OperationCallback;->callback:Lio/rong/imlib/IOperationCallback;

    .line 1594
    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 1615
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$OperationCallback;->callback:Lio/rong/imlib/IOperationCallback;

    if-nez v0, :cond_0

    .line 1628
    :goto_0
    return-void

    .line 1618
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$OperationCallback;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$OperationCallback$2;-><init>(Lio/rong/imlib/LibHandlerStub$OperationCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 1598
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$OperationCallback;->callback:Lio/rong/imlib/IOperationCallback;

    if-nez v0, :cond_0

    .line 1611
    :goto_0
    return-void

    .line 1601
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$OperationCallback;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$OperationCallback$1;

    invoke-direct {v1, p0}, Lio/rong/imlib/LibHandlerStub$OperationCallback$1;-><init>(Lio/rong/imlib/LibHandlerStub$OperationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
