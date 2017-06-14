.class public Lcom/wanduoduo/bean/PubSelectPlaceBean;
.super Ljava/lang/Object;
.source "PubSelectPlaceBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wanduoduo/bean/PubSelectPlaceBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lat:D

.field private lng:D

.field private place:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/wanduoduo/bean/PubSelectPlaceBean$1;

    invoke-direct {v0}, Lcom/wanduoduo/bean/PubSelectPlaceBean$1;-><init>()V

    sput-object v0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->lat:D

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->lng:D

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->place:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->lng:D

    return-wide v0
.end method

.method public getPlace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->place:Ljava/lang/String;

    return-object v0
.end method

.method public setLat(D)V
    .locals 1
    .parameter "lat"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->lat:D

    .line 20
    return-void
.end method

.method public setLng(D)V
    .locals 1
    .parameter "lng"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->lng:D

    .line 28
    return-void
.end method

.method public setPlace(Ljava/lang/String;)V
    .locals 0
    .parameter "place"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->place:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->lat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 46
    iget-wide v0, p0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->lng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 47
    iget-object v0, p0, Lcom/wanduoduo/bean/PubSelectPlaceBean;->place:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
