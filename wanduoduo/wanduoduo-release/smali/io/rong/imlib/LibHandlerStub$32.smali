.class Lio/rong/imlib/LibHandlerStub$32;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->getBlacklistStatus(Ljava/lang/String;Lio/rong/imlib/IIntegerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/rong/imlib/NativeClient$IResultCallback",
        "<",
        "Lio/rong/imlib/NativeClient$BlacklistStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$callback:Lio/rong/imlib/IIntegerCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IIntegerCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1468
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$32;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$32;->val$callback:Lio/rong/imlib/IIntegerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 1472
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$32;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$32$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$32$1;-><init>(Lio/rong/imlib/LibHandlerStub$32;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1482
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/NativeClient$BlacklistStatus;)V
    .locals 2
    .parameter "blacklistStatus"

    .prologue
    .line 1486
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$32;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$32$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$32$2;-><init>(Lio/rong/imlib/LibHandlerStub$32;Lio/rong/imlib/NativeClient$BlacklistStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1496
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1468
    check-cast p1, Lio/rong/imlib/NativeClient$BlacklistStatus;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imlib/LibHandlerStub$32;->onSuccess(Lio/rong/imlib/NativeClient$BlacklistStatus;)V

    return-void
.end method
