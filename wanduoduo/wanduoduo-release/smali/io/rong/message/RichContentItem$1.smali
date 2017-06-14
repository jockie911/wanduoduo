.class final Lio/rong/message/RichContentItem$1;
.super Ljava/lang/Object;
.source "RichContentItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/message/RichContentItem;
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
        "Lio/rong/message/RichContentItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/rong/message/RichContentItem;
    .locals 1
    .parameter "source"

    .prologue
    .line 43
    new-instance v0, Lio/rong/message/RichContentItem;

    invoke-direct {v0, p1}, Lio/rong/message/RichContentItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lio/rong/message/RichContentItem$1;->createFromParcel(Landroid/os/Parcel;)Lio/rong/message/RichContentItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lio/rong/message/RichContentItem;
    .locals 1
    .parameter "size"

    .prologue
    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Lio/rong/message/RichContentItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lio/rong/message/RichContentItem$1;->newArray(I)[Lio/rong/message/RichContentItem;

    move-result-object v0

    return-object v0
.end method
