.class Lio/rong/imlib/LibHandlerStub$3;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$ICodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->setConnectionStatusListener(Lio/rong/imlib/IConnectionStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$callback:Lio/rong/imlib/IConnectionStatusListener;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IConnectionStatusListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$3;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$3;->val$callback:Lio/rong/imlib/IConnectionStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 163
    :try_start_0
    const-string v1, "LibHandlerStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConnectionStatusListener : onChanged status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const v1, 0x80ed

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 166
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$3;->this$0:Lio/rong/imlib/LibHandlerStub;

    iget-object v1, v1, Lio/rong/imlib/LibHandlerStub;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lio/rong/common/WakeLockUtils;->cancelHeartbeat(Landroid/content/Context;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$3;->val$callback:Lio/rong/imlib/IConnectionStatusListener;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$3;->val$callback:Lio/rong/imlib/IConnectionStatusListener;

    invoke-interface {v1, p1}, Lio/rong/imlib/IConnectionStatusListener;->onChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 172
    const-string v1, "LibHandlerStub"

    const-string v2, "setConnectionStatusListener : onChanged RemoteException"

    invoke-static {v1, v2, v0}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
