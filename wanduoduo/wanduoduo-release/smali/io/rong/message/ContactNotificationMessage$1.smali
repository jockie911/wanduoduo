.class final Lio/rong/message/ContactNotificationMessage$1;
.super Ljava/lang/Object;
.source "ContactNotificationMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/message/ContactNotificationMessage;
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
        "Lio/rong/message/ContactNotificationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lio/rong/message/ContactNotificationMessage;
    .locals 1
    .parameter "source"

    .prologue
    .line 250
    new-instance v0, Lio/rong/message/ContactNotificationMessage;

    invoke-direct {v0, p1}, Lio/rong/message/ContactNotificationMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lio/rong/message/ContactNotificationMessage$1;->createFromParcel(Landroid/os/Parcel;)Lio/rong/message/ContactNotificationMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lio/rong/message/ContactNotificationMessage;
    .locals 1
    .parameter "size"

    .prologue
    .line 255
    new-array v0, p1, [Lio/rong/message/ContactNotificationMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lio/rong/message/ContactNotificationMessage$1;->newArray(I)[Lio/rong/message/ContactNotificationMessage;

    move-result-object v0

    return-object v0
.end method
