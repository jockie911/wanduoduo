.class Lio/rong/imlib/LibHandlerStub$32$2;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub$32;->onSuccess(Lio/rong/imlib/NativeClient$BlacklistStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/LibHandlerStub$32;

.field final synthetic val$blacklistStatus:Lio/rong/imlib/NativeClient$BlacklistStatus;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub$32;Lio/rong/imlib/NativeClient$BlacklistStatus;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1486
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$32$2;->this$1:Lio/rong/imlib/LibHandlerStub$32;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$32$2;->val$blacklistStatus:Lio/rong/imlib/NativeClient$BlacklistStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1490
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$32$2;->this$1:Lio/rong/imlib/LibHandlerStub$32;

    iget-object v1, v1, Lio/rong/imlib/LibHandlerStub$32;->val$callback:Lio/rong/imlib/IIntegerCallback;

    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub$32$2;->val$blacklistStatus:Lio/rong/imlib/NativeClient$BlacklistStatus;

    invoke-virtual {v2}, Lio/rong/imlib/NativeClient$BlacklistStatus;->getValue()I

    move-result v2

    invoke-interface {v1, v2}, Lio/rong/imlib/IIntegerCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1494
    :goto_0
    return-void

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
