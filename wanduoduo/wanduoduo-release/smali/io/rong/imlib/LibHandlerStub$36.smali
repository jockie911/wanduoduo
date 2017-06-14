.class Lio/rong/imlib/LibHandlerStub$36;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->getVoIPKey(ILjava/lang/String;Ljava/lang/String;Lio/rong/imlib/IStringCallback;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$callback:Lio/rong/imlib/IStringCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IStringCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1735
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$36;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$36;->val$callback:Lio/rong/imlib/IStringCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 1756
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$36;->val$callback:Lio/rong/imlib/IStringCallback;

    if-nez v0, :cond_0

    .line 1768
    :goto_0
    return-void

    .line 1758
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$36;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$36$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$36$2;-><init>(Lio/rong/imlib/LibHandlerStub$36;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1735
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imlib/LibHandlerStub$36;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1738
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$36;->val$callback:Lio/rong/imlib/IStringCallback;

    if-nez v0, :cond_0

    .line 1752
    :goto_0
    return-void

    .line 1741
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$36;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$36$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$36$1;-><init>(Lio/rong/imlib/LibHandlerStub$36;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
