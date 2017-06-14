.class final Lio/rong/imlib/model/Discussion$1;
.super Ljava/lang/Object;
.source "Discussion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/Discussion;
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
        "Lio/rong/imlib/model/Discussion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/rong/imlib/model/Discussion;
    .locals 1
    .parameter "source"

    .prologue
    .line 200
    new-instance v0, Lio/rong/imlib/model/Discussion;

    invoke-direct {v0, p1}, Lio/rong/imlib/model/Discussion;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lio/rong/imlib/model/Discussion$1;->createFromParcel(Landroid/os/Parcel;)Lio/rong/imlib/model/Discussion;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lio/rong/imlib/model/Discussion;
    .locals 1
    .parameter "size"

    .prologue
    .line 205
    new-array v0, p1, [Lio/rong/imlib/model/Discussion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lio/rong/imlib/model/Discussion$1;->newArray(I)[Lio/rong/imlib/model/Discussion;

    move-result-object v0

    return-object v0
.end method
