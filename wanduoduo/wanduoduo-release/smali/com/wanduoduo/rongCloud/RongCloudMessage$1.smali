.class final Lcom/wanduoduo/rongCloud/RongCloudMessage$1;
.super Ljava/lang/Object;
.source "RongCloudMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/rongCloud/RongCloudMessage;
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
        "Lcom/wanduoduo/rongCloud/RongCloudMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/wanduoduo/rongCloud/RongCloudMessage;
    .locals 1
    .parameter "source"

    .prologue
    .line 96
    new-instance v0, Lcom/wanduoduo/rongCloud/RongCloudMessage;

    invoke-direct {v0, p1}, Lcom/wanduoduo/rongCloud/RongCloudMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/wanduoduo/rongCloud/RongCloudMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/wanduoduo/rongCloud/RongCloudMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/wanduoduo/rongCloud/RongCloudMessage;
    .locals 1
    .parameter "size"

    .prologue
    .line 101
    new-array v0, p1, [Lcom/wanduoduo/rongCloud/RongCloudMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/wanduoduo/rongCloud/RongCloudMessage$1;->newArray(I)[Lcom/wanduoduo/rongCloud/RongCloudMessage;

    move-result-object v0

    return-object v0
.end method
