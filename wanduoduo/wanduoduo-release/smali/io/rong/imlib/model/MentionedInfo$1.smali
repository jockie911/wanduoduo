.class final Lio/rong/imlib/model/MentionedInfo$1;
.super Ljava/lang/Object;
.source "MentionedInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/MentionedInfo;
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
        "Lio/rong/imlib/model/MentionedInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/rong/imlib/model/MentionedInfo;
    .locals 1
    .parameter "source"

    .prologue
    .line 77
    new-instance v0, Lio/rong/imlib/model/MentionedInfo;

    invoke-direct {v0, p1}, Lio/rong/imlib/model/MentionedInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lio/rong/imlib/model/MentionedInfo$1;->createFromParcel(Landroid/os/Parcel;)Lio/rong/imlib/model/MentionedInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lio/rong/imlib/model/MentionedInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 82
    new-array v0, p1, [Lio/rong/imlib/model/MentionedInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lio/rong/imlib/model/MentionedInfo$1;->newArray(I)[Lio/rong/imlib/model/MentionedInfo;

    move-result-object v0

    return-object v0
.end method
