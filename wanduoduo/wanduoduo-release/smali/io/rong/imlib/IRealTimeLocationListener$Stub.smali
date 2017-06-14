.class public abstract Lio/rong/imlib/IRealTimeLocationListener$Stub;
.super Landroid/os/Binder;
.source "IRealTimeLocationListener.java"

# interfaces
.implements Lio/rong/imlib/IRealTimeLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/IRealTimeLocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/IRealTimeLocationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "io.rong.imlib.IRealTimeLocationListener"

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onParticipantsJoin:I = 0x3

.field static final TRANSACTION_onParticipantsQuit:I = 0x4

.field static final TRANSACTION_onReceiveLocation:I = 0x2

.field static final TRANSACTION_onStatusChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "io.rong.imlib.IRealTimeLocationListener"

    invoke-virtual {p0, p0, v0}, Lio/rong/imlib/IRealTimeLocationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IRealTimeLocationListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "io.rong.imlib.IRealTimeLocationListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lio/rong/imlib/IRealTimeLocationListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lio/rong/imlib/IRealTimeLocationListener;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lio/rong/imlib/IRealTimeLocationListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lio/rong/imlib/IRealTimeLocationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v1, "io.rong.imlib.IRealTimeLocationListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "io.rong.imlib.IRealTimeLocationListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 50
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lio/rong/imlib/IRealTimeLocationListener$Stub;->onStatusChange(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v2           #_arg0:I
    :sswitch_2
    const-string v1, "io.rong.imlib.IRealTimeLocationListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 60
    .local v2, _arg0:D
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 62
    .local v4, _arg1:D
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg2:Ljava/lang/String;
    move-object v1, p0

    .line 63
    invoke-virtual/range {v1 .. v6}, Lio/rong/imlib/IRealTimeLocationListener$Stub;->onReceiveLocation(DDLjava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 69
    .end local v2           #_arg0:D
    .end local v4           #_arg1:D
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_3
    const-string v1, "io.rong.imlib.IRealTimeLocationListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lio/rong/imlib/IRealTimeLocationListener$Stub;->onParticipantsJoin(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_4
    const-string v1, "io.rong.imlib.IRealTimeLocationListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lio/rong/imlib/IRealTimeLocationListener$Stub;->onParticipantsQuit(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v1, "io.rong.imlib.IRealTimeLocationListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lio/rong/imlib/IRealTimeLocationListener$Stub;->onError(I)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
