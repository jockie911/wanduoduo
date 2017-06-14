.class public Lio/rong/imlib/model/UserData$PersonalInfo;
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
    name = "PersonalInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/UserData$PersonalInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field age:Ljava/lang/String;

.field birthday:Ljava/lang/String;

.field comment:Ljava/lang/String;

.field job:Ljava/lang/String;

.field portraitUri:Ljava/lang/String;

.field realName:Ljava/lang/String;

.field sex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lio/rong/imlib/model/UserData$PersonalInfo$1;

    invoke-direct {v0}, Lio/rong/imlib/model/UserData$PersonalInfo$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/UserData$PersonalInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$PersonalInfo;->setRealName(Ljava/lang/String;)V

    .line 124
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$PersonalInfo;->setSex(Ljava/lang/String;)V

    .line 125
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$PersonalInfo;->setBirthday(Ljava/lang/String;)V

    .line 126
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$PersonalInfo;->setAge(Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$PersonalInfo;->setJob(Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$PersonalInfo;->setPortraitUri(Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imlib/model/UserData$PersonalInfo;->setComment(Ljava/lang/String;)V

    .line 130
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getJob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->job:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->portraitUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 161
    iput-object p1, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->age:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 153
    iput-object p1, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->birthday:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 185
    iput-object p1, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->comment:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setJob(Ljava/lang/String;)V
    .locals 0
    .parameter "job"

    .prologue
    .line 169
    iput-object p1, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->job:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setPortraitUri(Ljava/lang/String;)V
    .locals 0
    .parameter "portraitUri"

    .prologue
    .line 177
    iput-object p1, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->portraitUri:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0
    .parameter "realName"

    .prologue
    .line 137
    iput-object p1, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->realName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0
    .parameter "sex"

    .prologue
    .line 145
    iput-object p1, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->sex:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 195
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->realName:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->sex:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->birthday:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->age:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->job:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->portraitUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lio/rong/imlib/model/UserData$PersonalInfo;->comment:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 203
    return-void
.end method
