.class public Lio/rong/imlib/model/UserData$ContactInfo;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/UserData$ContactInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field address:Ljava/lang/String;

.field email:Ljava/lang/String;

.field qq:Ljava/lang/String;

.field tel:Ljava/lang/String;

.field weibo:Ljava/lang/String;

.field weixin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lio/rong/imlib/model/UserData$ContactInfo$1;

    invoke-direct {v0}, Lio/rong/imlib/model/UserData$ContactInfo$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/UserData$ContactInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ContactInfo;->setTel(Ljava/lang/String;)V

    .line 297
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ContactInfo;->setEmail(Ljava/lang/String;)V

    .line 298
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ContactInfo;->setAddress(Ljava/lang/String;)V

    .line 299
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ContactInfo;->setQQ(Ljava/lang/String;)V

    .line 300
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ContactInfo;->setWeibo(Ljava/lang/String;)V

    .line 301
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ContactInfo;->setWeixin(Ljava/lang/String;)V

    .line 302
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ContactInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ContactInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getQQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ContactInfo;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ContactInfo;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public getWeibo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ContactInfo;->weibo:Ljava/lang/String;

    return-object v0
.end method

.method public getWeixin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ContactInfo;->weixin:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 325
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ContactInfo;->address:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 317
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ContactInfo;->email:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setQQ(Ljava/lang/String;)V
    .locals 0
    .parameter "qq"

    .prologue
    .line 333
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ContactInfo;->qq:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0
    .parameter "tel"

    .prologue
    .line 309
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ContactInfo;->tel:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setWeibo(Ljava/lang/String;)V
    .locals 0
    .parameter "weibo"

    .prologue
    .line 341
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ContactInfo;->weibo:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setWeixin(Ljava/lang/String;)V
    .locals 0
    .parameter "weixin"

    .prologue
    .line 349
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ContactInfo;->weixin:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 359
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ContactInfo;->tel:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ContactInfo;->email:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ContactInfo;->address:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ContactInfo;->qq:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ContactInfo;->weibo:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ContactInfo;->weixin:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 365
    return-void
.end method
