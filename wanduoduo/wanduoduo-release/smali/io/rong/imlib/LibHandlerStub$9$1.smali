.class Lio/rong/imlib/LibHandlerStub$9$1;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub$9;->onSuccess(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/LibHandlerStub$9;

.field final synthetic val$status:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub$9;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$9$1;->this$1:Lio/rong/imlib/LibHandlerStub$9;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$9$1;->val$status:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 576
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$9$1;->this$1:Lio/rong/imlib/LibHandlerStub$9;

    iget-object v1, v1, Lio/rong/imlib/LibHandlerStub$9;->val$callback:Lio/rong/imlib/ILongCallback;

    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub$9$1;->val$status:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lio/rong/imlib/ILongCallback;->onComplete(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
