.class Lio/rong/imlib/LibHandlerStub$1$2;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub$1;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/LibHandlerStub$1;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$1$2;->this$1:Lio/rong/imlib/LibHandlerStub$1;

    iput p2, p0, Lio/rong/imlib/LibHandlerStub$1$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$1$2;->this$1:Lio/rong/imlib/LibHandlerStub$1;

    iget-object v1, v1, Lio/rong/imlib/LibHandlerStub$1;->val$callback:Lio/rong/imlib/IStringCallback;

    iget v2, p0, Lio/rong/imlib/LibHandlerStub$1$2;->val$code:I

    invoke-interface {v1, v2}, Lio/rong/imlib/IStringCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
