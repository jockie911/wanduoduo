.class Lio/rong/imlib/IIntegerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIntegerCallback.java"

# interfaces
.implements Lio/rong/imlib/IIntegerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/IIntegerCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lio/rong/imlib/IIntegerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lio/rong/imlib/IIntegerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "io.rong.imlib.IIntegerCallback"

    return-object v0
.end method

.method public onComplete(I)V
    .locals 5
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 88
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "io.rong.imlib.IIntegerCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-object v2, p0, Lio/rong/imlib/IIntegerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 91
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 97
    return-void

    .line 94
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 95
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onFailure(I)V
    .locals 5
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 103
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "io.rong.imlib.IIntegerCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object v2, p0, Lio/rong/imlib/IIntegerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 106
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 112
    return-void

    .line 109
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
