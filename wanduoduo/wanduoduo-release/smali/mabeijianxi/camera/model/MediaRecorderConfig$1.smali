.class final Lmabeijianxi/camera/model/MediaRecorderConfig$1;
.super Ljava/lang/Object;
.source "MediaRecorderConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmabeijianxi/camera/model/MediaRecorderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmabeijianxi/camera/model/MediaRecorderConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lmabeijianxi/camera/model/MediaRecorderConfig$1;->createFromParcel(Landroid/os/Parcel;)Lmabeijianxi/camera/model/MediaRecorderConfig;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmabeijianxi/camera/model/MediaRecorderConfig;
    .locals 1
    .parameter "in"

    .prologue
    .line 118
    new-instance v0, Lmabeijianxi/camera/model/MediaRecorderConfig;

    invoke-direct {v0, p1}, Lmabeijianxi/camera/model/MediaRecorderConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lmabeijianxi/camera/model/MediaRecorderConfig$1;->newArray(I)[Lmabeijianxi/camera/model/MediaRecorderConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmabeijianxi/camera/model/MediaRecorderConfig;
    .locals 1
    .parameter "size"

    .prologue
    .line 123
    new-array v0, p1, [Lmabeijianxi/camera/model/MediaRecorderConfig;

    return-object v0
.end method
