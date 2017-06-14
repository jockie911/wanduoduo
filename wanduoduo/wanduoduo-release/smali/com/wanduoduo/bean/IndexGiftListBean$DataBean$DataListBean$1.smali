.class final Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$1;
.super Ljava/lang/Object;
.source "IndexGiftListBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;
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
        "Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;
    .locals 1
    .parameter "source"

    .prologue
    .line 738
    new-instance v0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-direct {v0, p1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 735
    invoke-virtual {p0, p1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;
    .locals 1
    .parameter "size"

    .prologue
    .line 743
    new-array v0, p1, [Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 735
    invoke-virtual {p0, p1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$1;->newArray(I)[Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    move-result-object v0

    return-object v0
.end method
