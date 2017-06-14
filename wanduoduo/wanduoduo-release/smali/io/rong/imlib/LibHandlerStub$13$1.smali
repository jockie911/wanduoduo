.class Lio/rong/imlib/LibHandlerStub$13$1;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub$13;->onSuccess(Lio/rong/imlib/model/PublicServiceProfileList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/LibHandlerStub$13;

.field final synthetic val$result:Lio/rong/imlib/model/RemoteModelWrap;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub$13;Lio/rong/imlib/model/RemoteModelWrap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$13$1;->this$1:Lio/rong/imlib/LibHandlerStub$13;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$13$1;->val$result:Lio/rong/imlib/model/RemoteModelWrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 758
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$13$1;->this$1:Lio/rong/imlib/LibHandlerStub$13;

    iget-object v1, v1, Lio/rong/imlib/LibHandlerStub$13;->val$callback:Lio/rong/imlib/IResultCallback;

    iget-object v2, p0, Lio/rong/imlib/LibHandlerStub$13$1;->val$result:Lio/rong/imlib/model/RemoteModelWrap;

    invoke-interface {v1, v2}, Lio/rong/imlib/IResultCallback;->onComplete(Lio/rong/imlib/model/RemoteModelWrap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
