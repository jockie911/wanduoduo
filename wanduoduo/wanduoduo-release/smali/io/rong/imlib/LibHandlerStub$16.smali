.class Lio/rong/imlib/LibHandlerStub$16;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->getPublicServiceList(Lio/rong/imlib/IResultCallback;)V
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
        "Lio/rong/imlib/model/PublicServiceProfileList;",
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
    .line 859
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$16;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$16;->val$callback:Lio/rong/imlib/IResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 879
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$16;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$16$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$16$2;-><init>(Lio/rong/imlib/LibHandlerStub$16;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 889
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/PublicServiceProfileList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 864
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$16;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$16$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$16$1;-><init>(Lio/rong/imlib/LibHandlerStub$16;Lio/rong/imlib/model/PublicServiceProfileList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 875
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 859
    check-cast p1, Lio/rong/imlib/model/PublicServiceProfileList;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imlib/LibHandlerStub$16;->onSuccess(Lio/rong/imlib/model/PublicServiceProfileList;)V

    return-void
.end method
