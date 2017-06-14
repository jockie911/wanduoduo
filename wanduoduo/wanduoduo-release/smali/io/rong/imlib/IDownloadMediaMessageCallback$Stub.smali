.class public abstract Lio/rong/imlib/IDownloadMediaMessageCallback$Stub;
.super Landroid/os/Binder;
.source "IDownloadMediaMessageCallback.java"

# interfaces
.implements Lio/rong/imlib/IDownloadMediaMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/IDownloadMediaMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/IDownloadMediaMessageCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "io.rong.imlib.IDownloadMediaMessageCallback"

.field static final TRANSACTION_onCanceled:I = 0x4

.field static final TRANSACTION_onComplete:I = 0x1

.field static final TRANSACTION_onFailure:I = 0x2

.field static final TRANSACTION_onProgress:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "io.rong.imlib.IDownloadMediaMessageCallback"

    invoke-virtual {p0, p0, v0}, Lio/rong/imlib/IDownloadMediaMessageCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IDownloadMediaMessageCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "io.rong.imlib.IDownloadMediaMessageCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lio/rong/imlib/IDownloadMediaMessageCallback;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lio/rong/imlib/IDownloadMediaMessageCallback;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lio/rong/imlib/IDownloadMediaMessageCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lio/rong/imlib/IDownloadMediaMessageCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 44
    :sswitch_0
    const-string v2, "io.rong.imlib.IDownloadMediaMessageCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v2, "io.rong.imlib.IDownloadMediaMessageCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    sget-object v2, Lio/rong/imlib/model/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Message;

    .line 57
    .local v0, _arg0:Lio/rong/imlib/model/Message;
    :goto_1
    invoke-virtual {p0, v0}, Lio/rong/imlib/IDownloadMediaMessageCallback$Stub;->onComplete(Lio/rong/imlib/model/Message;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 55
    .end local v0           #_arg0:Lio/rong/imlib/model/Message;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lio/rong/imlib/model/Message;
    goto :goto_1

    .line 63
    .end local v0           #_arg0:Lio/rong/imlib/model/Message;
    :sswitch_2
    const-string v2, "io.rong.imlib.IDownloadMediaMessageCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lio/rong/imlib/IDownloadMediaMessageCallback$Stub;->onFailure(I)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v2, "io.rong.imlib.IDownloadMediaMessageCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lio/rong/imlib/IDownloadMediaMessageCallback$Stub;->onProgress(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    .end local v0           #_arg0:I
    :sswitch_4
    const-string v2, "io.rong.imlib.IDownloadMediaMessageCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lio/rong/imlib/IDownloadMediaMessageCallback$Stub;->onCanceled()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
