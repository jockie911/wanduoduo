.class public Lio/rong/imlib/model/UserData$ClientInfo;
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
    name = "ClientInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/UserData$ClientInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field carrier:Ljava/lang/String;

.field device:Ljava/lang/String;

.field mobilePhoneManufacturers:Ljava/lang/String;

.field network:Ljava/lang/String;

.field os:Ljava/lang/String;

.field systemVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 488
    new-instance v0, Lio/rong/imlib/model/UserData$ClientInfo$1;

    invoke-direct {v0}, Lio/rong/imlib/model/UserData$ClientInfo$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/UserData$ClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const-string v0, "Android"

    iput-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->os:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const-string v3, "Android"

    iput-object v3, p0, Lio/rong/imlib/model/UserData$ClientInfo;->os:Ljava/lang/String;

    .line 395
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 396
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 399
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 400
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imlib/model/UserData$ClientInfo;->network:Ljava/lang/String;

    .line 403
    :cond_0
    if-eqz v2, :cond_1

    .line 404
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imlib/model/UserData$ClientInfo;->carrier:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v3, p0, Lio/rong/imlib/model/UserData$ClientInfo;->mobilePhoneManufacturers:Ljava/lang/String;

    .line 411
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, p0, Lio/rong/imlib/model/UserData$ClientInfo;->device:Ljava/lang/String;

    .line 412
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imlib/model/UserData$ClientInfo;->systemVersion:Ljava/lang/String;

    .line 414
    return-void

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const-string v0, "Android"

    iput-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->os:Ljava/lang/String;

    .line 417
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ClientInfo;->setNetwork(Ljava/lang/String;)V

    .line 418
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ClientInfo;->setCarrier(Ljava/lang/String;)V

    .line 419
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ClientInfo;->setSystemVersion(Ljava/lang/String;)V

    .line 420
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ClientInfo;->setOs(Ljava/lang/String;)V

    .line 421
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ClientInfo;->setDevice(Ljava/lang/String;)V

    .line 422
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$ClientInfo;->setMobilePhoneManufacturers(Ljava/lang/String;)V

    .line 423
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getMobilePhoneManufacturers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->mobilePhoneManufacturers:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->network:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->systemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0
    .parameter "carrier"

    .prologue
    .line 438
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ClientInfo;->carrier:Ljava/lang/String;

    .line 439
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 462
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ClientInfo;->device:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public setMobilePhoneManufacturers(Ljava/lang/String;)V
    .locals 0
    .parameter "mobilePhoneManufacturers"

    .prologue
    .line 470
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ClientInfo;->mobilePhoneManufacturers:Ljava/lang/String;

    .line 471
    return-void
.end method

.method public setNetwork(Ljava/lang/String;)V
    .locals 0
    .parameter "network"

    .prologue
    .line 430
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ClientInfo;->network:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0
    .parameter "os"

    .prologue
    .line 454
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ClientInfo;->os:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public setSystemVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "systemVersion"

    .prologue
    .line 446
    iput-object p1, p0, Lio/rong/imlib/model/UserData$ClientInfo;->systemVersion:Ljava/lang/String;

    .line 447
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 480
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->network:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->carrier:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->systemVersion:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->os:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->device:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lio/rong/imlib/model/UserData$ClientInfo;->mobilePhoneManufacturers:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 486
    return-void
.end method
