.class Lio/rong/imlib/LibHandlerStub$10$2;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub$10;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/LibHandlerStub$10;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub$10;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$10$2;->this$1:Lio/rong/imlib/LibHandlerStub$10;

    iput p2, p0, Lio/rong/imlib/LibHandlerStub$10$2;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 630
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$10$2;->this$1:Lio/rong/imlib/LibHandlerStub$10;

    iget-object v1, v1, Lio/rong/imlib/LibHandlerStub$10;->val$callback:Lio/rong/imlib/ILongCallback;

    iget v2, p0, Lio/rong/imlib/LibHandlerStub$10$2;->val$errorCode:I

    invoke-interface {v1, v2}, Lio/rong/imlib/ILongCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_0
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
