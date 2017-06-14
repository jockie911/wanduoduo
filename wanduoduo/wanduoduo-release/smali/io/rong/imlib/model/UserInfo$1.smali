.class final Lio/rong/imlib/model/UserInfo$1;
.super Ljava/lang/Object;
.source "UserInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/UserInfo;
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
        "Lio/rong/imlib/model/UserInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lio/rong/imlib/model/UserInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 119
    new-instance v0, Lio/rong/imlib/model/UserInfo;

    invoke-direct {v0, p1}, Lio/rong/imlib/model/UserInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lio/rong/imlib/model/UserInfo$1;->createFromParcel(Landroid/os/Parcel;)Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lio/rong/imlib/model/UserInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 124
    new-array v0, p1, [Lio/rong/imlib/model/UserInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lio/rong/imlib/model/UserInfo$1;->newArray(I)[Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    return-object v0
.end method
