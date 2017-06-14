.class Lio/rong/imlib/LibHandlerStub$12;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$IResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->createDiscussion(Ljava/lang/String;Ljava/util/List;Lio/rong/imlib/IResultCallback;)V
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

.field final synthetic val$callback:Lio/rong/imlib/IResultCallback;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$userIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IResultCallback;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$12;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$12;->val$callback:Lio/rong/imlib/IResultCallback;

    iput-object p3, p0, Lio/rong/imlib/LibHandlerStub$12;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/LibHandlerStub$12;->val$userIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 728
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$12;->val$callback:Lio/rong/imlib/IResultCallback;

    if-nez v0, :cond_0

    .line 741
    :goto_0
    return-void

    .line 731
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$12;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$12$2;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$12$2;-><init>(Lio/rong/imlib/LibHandlerStub$12;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 704
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imlib/LibHandlerStub$12;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "discussionId"

    .prologue
    .line 707
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$12;->val$callback:Lio/rong/imlib/IResultCallback;

    if-nez v0, :cond_0

    .line 724
    :goto_0
    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$12;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$12$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$12$1;-><init>(Lio/rong/imlib/LibHandlerStub$12;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
