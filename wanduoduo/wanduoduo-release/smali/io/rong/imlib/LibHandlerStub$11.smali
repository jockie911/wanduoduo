.class Lio/rong/imlib/LibHandlerStub$11;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->getDiscussion(Ljava/lang/String;Lio/rong/imlib/IResultCallback;)V
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
        "Lio/rong/imlib/model/Discussion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$callback:Lio/rong/imlib/IResultCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$11;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$11;->val$callback:Lio/rong/imlib/IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 680
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$11;->val$callback:Lio/rong/imlib/IResultCallback;

    if-nez v0, :cond_0

    .line 693
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$11;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$11$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$11$2;-><init>(Lio/rong/imlib/LibHandlerStub$11;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSuccess(Lio/rong/imlib/model/Discussion;)V
    .locals 2
    .parameter "discussion"

    .prologue
    .line 662
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$11;->val$callback:Lio/rong/imlib/IResultCallback;

    if-nez v0, :cond_0

    .line 676
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$11;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$11$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$11$1;-><init>(Lio/rong/imlib/LibHandlerStub$11;Lio/rong/imlib/model/Discussion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 659
    check-cast p1, Lio/rong/imlib/model/Discussion;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imlib/LibHandlerStub$11;->onSuccess(Lio/rong/imlib/model/Discussion;)V

    return-void
.end method
