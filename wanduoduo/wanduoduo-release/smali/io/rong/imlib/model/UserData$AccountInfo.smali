.class public Lio/rong/imlib/model/UserData$AccountInfo;
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
    name = "AccountInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/UserData$AccountInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field appUserId:Ljava/lang/String;

.field nickName:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lio/rong/imlib/model/UserData$AccountInfo$1;

    invoke-direct {v0}, Lio/rong/imlib/model/UserData$AccountInfo$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/UserData$AccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$AccountInfo;->setAppUserId(Ljava/lang/String;)V

    .line 229
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$AccountInfo;->setUserName(Ljava/lang/String;)V

    .line 230
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$AccountInfo;->setNickName(Ljava/lang/String;)V

    .line 231
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public getAppUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lio/rong/imlib/model/UserData$AccountInfo;->appUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lio/rong/imlib/model/UserData$AccountInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lio/rong/imlib/model/UserData$AccountInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "appUserId"

    .prologue
    .line 254
    iput-object p1, p0, Lio/rong/imlib/model/UserData$AccountInfo;->appUserId:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .parameter "nickName"

    .prologue
    .line 246
    iput-object p1, p0, Lio/rong/imlib/model/UserData$AccountInfo;->nickName:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 238
    iput-object p1, p0, Lio/rong/imlib/model/UserData$AccountInfo;->userName:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 264
    iget-object v0, p0, Lio/rong/imlib/model/UserData$AccountInfo;->appUserId:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lio/rong/imlib/model/UserData$AccountInfo;->userName:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lio/rong/imlib/model/UserData$AccountInfo;->nickName:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 267
    return-void
.end method
