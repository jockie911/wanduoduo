.class Lio/rong/imlib/LibHandlerStub$24;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$GetNotificationQuietHoursCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->getNotificationQuietHours(Lio/rong/imlib/IGetNotificationQuietHoursCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$callback:Lio/rong/imlib/IGetNotificationQuietHoursCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IGetNotificationQuietHoursCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$24;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$24;->val$callback:Lio/rong/imlib/IGetNotificationQuietHoursCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 1156
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$24;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$24$1;

    invoke-direct {v1, p0, p1}, Lio/rong/imlib/LibHandlerStub$24$1;-><init>(Lio/rong/imlib/LibHandlerStub$24;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1166
    return-void
.end method

.method public onSuccess(Ljava/lang/String;I)V
    .locals 2
    .parameter "start"
    .parameter "min"

    .prologue
    .line 1170
    iget-object v0, p0, Lio/rong/imlib/LibHandlerStub$24;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v0, v0, Lio/rong/imlib/LibHandlerStub;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lio/rong/imlib/LibHandlerStub$24$2;

    invoke-direct {v1, p0, p1, p2}, Lio/rong/imlib/LibHandlerStub$24$2;-><init>(Lio/rong/imlib/LibHandlerStub$24;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1180
    return-void
.end method
