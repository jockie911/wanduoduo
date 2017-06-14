.class final Lcom/wanduoduo/bean/PlayerInfoBean$1;
.super Ljava/lang/Object;
.source "PlayerInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/PlayerInfoBean;
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
        "Lcom/wanduoduo/bean/PlayerInfoBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/wanduoduo/bean/PlayerInfoBean;
    .locals 1
    .parameter "source"

    .prologue
    .line 196
    new-instance v0, Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-direct {v0, p1}, Lcom/wanduoduo/bean/PlayerInfoBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/wanduoduo/bean/PlayerInfoBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/wanduoduo/bean/PlayerInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/wanduoduo/bean/PlayerInfoBean;
    .locals 1
    .parameter "size"

    .prologue
    .line 201
    new-array v0, p1, [Lcom/wanduoduo/bean/PlayerInfoBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 193
    invoke-virtual {p0, p1}, Lcom/wanduoduo/bean/PlayerInfoBean$1;->newArray(I)[Lcom/wanduoduo/bean/PlayerInfoBean;

    move-result-object v0

    return-object v0
.end method
