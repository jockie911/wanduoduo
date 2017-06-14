.class public Lio/rong/imlib/model/PublicServiceProfile;
.super Ljava/lang/Object;
.source "PublicServiceProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/model/PublicServiceProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private introduction:Ljava/lang/String;

.field private isFollowed:Z

.field private isGlobal:Z

.field private menu:Lio/rong/imlib/model/PublicServiceMenu;

.field private name:Ljava/lang/String;

.field private portraitUri:Landroid/net/Uri;

.field private publicServiceId:Ljava/lang/String;

.field private publicServiceType:Lio/rong/imlib/model/Conversation$ConversationType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lio/rong/imlib/model/PublicServiceProfile$1;

    invoke-direct {v0}, Lio/rong/imlib/model/PublicServiceProfile$1;-><init>()V

    sput-object v0, Lio/rong/imlib/model/PublicServiceProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->name:Ljava/lang/String;

    .line 85
    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->portraitUri:Landroid/net/Uri;

    .line 86
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->publicServiceId:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->publicServiceType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 88
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->introduction:Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->isFollowed:Z

    .line 90
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lio/rong/imlib/model/PublicServiceProfile;->isGlobal:Z

    .line 91
    const-class v0, Lio/rong/imlib/model/PublicServiceMenu;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/PublicServiceMenu;

    iput-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->menu:Lio/rong/imlib/model/PublicServiceMenu;

    .line 92
    return-void

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    :cond_1
    move v1, v2

    .line 90
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->publicServiceType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method public getIntroduction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->introduction:Ljava/lang/String;

    return-object v0
.end method

.method public getMenu()Lio/rong/imlib/model/PublicServiceMenu;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->menu:Lio/rong/imlib/model/PublicServiceMenu;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->portraitUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->publicServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public isFollow()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->isFollowed:Z

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->isGlobal:Z

    return v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 4
    .parameter "extra"

    .prologue
    .line 58
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 59
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v2, "introduction"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const-string v2, "introduction"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/rong/imlib/model/PublicServiceProfile;->setIntroduction(Ljava/lang/String;)V

    .line 64
    :cond_0
    const-string v2, "follow"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    const-string v2, "follow"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lio/rong/imlib/model/PublicServiceProfile;->setIsFollow(Z)V

    .line 67
    :cond_1
    const-string v2, "isGlobal"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    const-string v2, "isGlobal"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lio/rong/imlib/model/PublicServiceProfile;->setIsGlobal(Z)V

    .line 70
    :cond_2
    const-string v2, "menu"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "menu"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_3

    .line 72
    :try_start_1
    new-instance v2, Lio/rong/imlib/model/PublicServiceMenu;

    const-string v3, "menu"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/rong/imlib/model/PublicServiceMenu;-><init>(Lorg/json/JSONArray;)V

    iput-object v2, p0, Lio/rong/imlib/model/PublicServiceProfile;->menu:Lio/rong/imlib/model/PublicServiceMenu;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_3
    :goto_0
    return-void

    .line 73
    .restart local v1       #jsonObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "DecodePSMenu"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 78
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 79
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIntroduction(Ljava/lang/String;)V
    .locals 0
    .parameter "intro"

    .prologue
    .line 168
    iput-object p1, p0, Lio/rong/imlib/model/PublicServiceProfile;->introduction:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setIsFollow(Z)V
    .locals 0
    .parameter "isFollow"

    .prologue
    .line 184
    iput-boolean p1, p0, Lio/rong/imlib/model/PublicServiceProfile;->isFollowed:Z

    .line 185
    return-void
.end method

.method public setIsGlobal(Z)V
    .locals 0
    .parameter "global"

    .prologue
    .line 112
    iput-boolean p1, p0, Lio/rong/imlib/model/PublicServiceProfile;->isGlobal:Z

    .line 113
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 144
    iput-object p1, p0, Lio/rong/imlib/model/PublicServiceProfile;->name:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPortraitUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "portraitUri"

    .prologue
    .line 128
    iput-object p1, p0, Lio/rong/imlib/model/PublicServiceProfile;->portraitUri:Landroid/net/Uri;

    .line 129
    return-void
.end method

.method public setPublicServiceType(Lio/rong/imlib/model/Conversation$ConversationType;)V
    .locals 0
    .parameter "publicServiceType"

    .prologue
    .line 200
    iput-object p1, p0, Lio/rong/imlib/model/PublicServiceProfile;->publicServiceType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 201
    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0
    .parameter "targetId"

    .prologue
    .line 160
    iput-object p1, p0, Lio/rong/imlib/model/PublicServiceProfile;->publicServiceId:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->portraitUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 39
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->publicServiceId:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->publicServiceType:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->publicServiceType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 47
    :goto_0
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->introduction:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->isFollowed:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 49
    iget-boolean v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->isGlobal:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 50
    iget-object v0, p0, Lio/rong/imlib/model/PublicServiceProfile;->menu:Lio/rong/imlib/model/PublicServiceMenu;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 51
    return-void

    .line 44
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 48
    goto :goto_1

    :cond_2
    move v1, v2

    .line 49
    goto :goto_2
.end method
