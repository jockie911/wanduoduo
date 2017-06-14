.class Lio/rong/imlib/LibHandlerStub$35;
.super Ljava/lang/Object;
.source "LibHandlerStub.java"

# interfaces
.implements Lio/rong/imlib/NativeClient$RealTimeLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/LibHandlerStub;->addRealTimeLocationListener(ILjava/lang/String;Lio/rong/imlib/IRealTimeLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/LibHandlerStub;

.field final synthetic val$listener:Lio/rong/imlib/IRealTimeLocationListener;


# direct methods
.method constructor <init>(Lio/rong/imlib/LibHandlerStub;Lio/rong/imlib/IRealTimeLocationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1666
    iput-object p1, p0, Lio/rong/imlib/LibHandlerStub$35;->this$0:Lio/rong/imlib/LibHandlerStub;

    iput-object p2, p0, Lio/rong/imlib/LibHandlerStub$35;->val$listener:Lio/rong/imlib/IRealTimeLocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 1706
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$35;->val$listener:Lio/rong/imlib/IRealTimeLocationListener;

    invoke-virtual {p1}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->getValue()I

    move-result v2

    invoke-interface {v1, v2}, Lio/rong/imlib/IRealTimeLocationListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1710
    :goto_0
    return-void

    .line 1707
    :catch_0
    move-exception v0

    .line 1708
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onParticipantsJoin(Ljava/lang/String;)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 1688
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$35;->val$listener:Lio/rong/imlib/IRealTimeLocationListener;

    invoke-interface {v1, p1}, Lio/rong/imlib/IRealTimeLocationListener;->onParticipantsJoin(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1692
    :goto_0
    return-void

    .line 1689
    :catch_0
    move-exception v0

    .line 1690
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onParticipantsQuit(Ljava/lang/String;)V
    .locals 2
    .parameter "userId"

    .prologue
    .line 1697
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$35;->val$listener:Lio/rong/imlib/IRealTimeLocationListener;

    invoke-interface {v1, p1}, Lio/rong/imlib/IRealTimeLocationListener;->onParticipantsQuit(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1701
    :goto_0
    return-void

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceiveLocation(DDLjava/lang/String;)V
    .locals 7
    .parameter "latitude"
    .parameter "longitude"
    .parameter "userId"

    .prologue
    .line 1679
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$35;->val$listener:Lio/rong/imlib/IRealTimeLocationListener;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lio/rong/imlib/IRealTimeLocationListener;->onReceiveLocation(DDLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    :goto_0
    return-void

    .line 1680
    :catch_0
    move-exception v0

    .line 1681
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onStatusChange(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1670
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/LibHandlerStub$35;->val$listener:Lio/rong/imlib/IRealTimeLocationListener;

    invoke-virtual {p1}, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->getValue()I

    move-result v2

    invoke-interface {v1, v2}, Lio/rong/imlib/IRealTimeLocationListener;->onStatusChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    :goto_0
    return-void

    .line 1671
    :catch_0
    move-exception v0

    .line 1672
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
