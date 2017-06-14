.class public final Lio/rong/imlib/model/UserData;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/model/UserData$ClientInfo;,
        Lio/rong/imlib/model/UserData$ContactInfo;,
        Lio/rong/imlib/model/UserData$AccountInfo;,
        Lio/rong/imlib/model/UserData$PersonalInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/UserData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field accountInfo:Lio/rong/imlib/model/UserData$AccountInfo;

.field appVersion:Ljava/lang/String;

.field clientInfo:Lio/rong/imlib/model/UserData$ClientInfo;

.field contactInfo:Lio/rong/imlib/model/UserData$ContactInfo;

.field extra:Ljava/lang/String;

.field personalInfo:Lio/rong/imlib/model/UserData$PersonalInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lio/rong/imlib/model/UserData$1;

    invoke-direct {v0}, Lio/rong/imlib/model/UserData$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lio/rong/imlib/model/UserData$ClientInfo;

    invoke-direct {v0, p1}, Lio/rong/imlib/model/UserData$ClientInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/rong/imlib/model/UserData;->clientInfo:Lio/rong/imlib/model/UserData$ClientInfo;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lio/rong/imlib/model/UserData$PersonalInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserData$PersonalInfo;

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData;->setPersonalInfo(Lio/rong/imlib/model/UserData$PersonalInfo;)V

    .line 31
    const-class v0, Lio/rong/imlib/model/UserData$AccountInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserData$AccountInfo;

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData;->setAccountInfo(Lio/rong/imlib/model/UserData$AccountInfo;)V

    .line 32
    const-class v0, Lio/rong/imlib/model/UserData$ContactInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserData$ContactInfo;

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData;->setContactInfo(Lio/rong/imlib/model/UserData$ContactInfo;)V

    .line 33
    const-class v0, Lio/rong/imlib/model/UserData$ClientInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserData$ClientInfo;

    iput-object v0, p0, Lio/rong/imlib/model/UserData;->clientInfo:Lio/rong/imlib/model/UserData$ClientInfo;

    .line 34
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData;->setAppVersion(Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData;->setExtra(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountInfo()Lio/rong/imlib/model/UserData$AccountInfo;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/rong/imlib/model/UserData;->accountInfo:Lio/rong/imlib/model/UserData$AccountInfo;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/rong/imlib/model/UserData;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getClientInfo()Lio/rong/imlib/model/UserData$ClientInfo;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lio/rong/imlib/model/UserData;->clientInfo:Lio/rong/imlib/model/UserData$ClientInfo;

    return-object v0
.end method

.method public getContactInfo()Lio/rong/imlib/model/UserData$ContactInfo;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lio/rong/imlib/model/UserData;->contactInfo:Lio/rong/imlib/model/UserData$ContactInfo;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lio/rong/imlib/model/UserData;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonalInfo()Lio/rong/imlib/model/UserData$PersonalInfo;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lio/rong/imlib/model/UserData;->personalInfo:Lio/rong/imlib/model/UserData$PersonalInfo;

    return-object v0
.end method

.method public setAccountInfo(Lio/rong/imlib/model/UserData$AccountInfo;)V
    .locals 0
    .parameter "accountInfo"

    .prologue
    .line 51
    iput-object p1, p0, Lio/rong/imlib/model/UserData;->accountInfo:Lio/rong/imlib/model/UserData$AccountInfo;

    .line 52
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "appVersion"

    .prologue
    .line 67
    iput-object p1, p0, Lio/rong/imlib/model/UserData;->appVersion:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setContactInfo(Lio/rong/imlib/model/UserData$ContactInfo;)V
    .locals 0
    .parameter "contactInfo"

    .prologue
    .line 59
    iput-object p1, p0, Lio/rong/imlib/model/UserData;->contactInfo:Lio/rong/imlib/model/UserData$ContactInfo;

    .line 60
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 79
    iput-object p1, p0, Lio/rong/imlib/model/UserData;->extra:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPersonalInfo(Lio/rong/imlib/model/UserData$PersonalInfo;)V
    .locals 0
    .parameter "personalInfo"

    .prologue
    .line 43
    iput-object p1, p0, Lio/rong/imlib/model/UserData;->personalInfo:Lio/rong/imlib/model/UserData$PersonalInfo;

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 89
    iget-object v0, p0, Lio/rong/imlib/model/UserData;->personalInfo:Lio/rong/imlib/model/UserData$PersonalInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 90
    iget-object v0, p0, Lio/rong/imlib/model/UserData;->accountInfo:Lio/rong/imlib/model/UserData$AccountInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 91
    iget-object v0, p0, Lio/rong/imlib/model/UserData;->contactInfo:Lio/rong/imlib/model/UserData$ContactInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 92
    iget-object v0, p0, Lio/rong/imlib/model/UserData;->clientInfo:Lio/rong/imlib/model/UserData$ClientInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 93
    iget-object v0, p0, Lio/rong/imlib/model/UserData;->appVersion:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lio/rong/imlib/model/UserData;->extra:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 95
    return-void
.end method
