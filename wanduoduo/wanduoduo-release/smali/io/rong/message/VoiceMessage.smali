.class public Lio/rong/message/VoiceMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "VoiceMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x3
    messageHandler = Lio/rong/message/VoiceMessageHandler;
    value = "RC:VcMsg"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/VoiceMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected extra:Ljava/lang/String;

.field private mBase64:Ljava/lang/String;

.field private mDuration:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lio/rong/message/VoiceMessage$1;

    invoke-direct {v0}, Lio/rong/message/VoiceMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/VoiceMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;I)V
    .locals 0
    .parameter "uri"
    .parameter "duration"

    .prologue
    .line 84
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 85
    iput-object p1, p0, Lio/rong/message/VoiceMessage;->mUri:Landroid/net/Uri;

    .line 86
    iput p2, p0, Lio/rong/message/VoiceMessage;->mDuration:I

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 46
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 47
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/message/VoiceMessage;->setExtra(Ljava/lang/String;)V

    .line 48
    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lio/rong/message/VoiceMessage;->mUri:Landroid/net/Uri;

    .line 49
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/rong/message/VoiceMessage;->mDuration:I

    .line 50
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lio/rong/message/VoiceMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 51
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .parameter "data"

    .prologue
    .line 53
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 55
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 58
    .local v2, jsonStr:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v3, "duration"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const-string v3, "duration"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lio/rong/message/VoiceMessage;->setDuration(I)V

    .line 63
    :cond_0
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/message/VoiceMessage;->setBase64(Ljava/lang/String;)V

    .line 66
    :cond_1
    const-string v3, "extra"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    const-string v3, "extra"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/message/VoiceMessage;->setExtra(Ljava/lang/String;)V

    .line 69
    :cond_2
    const-string v3, "user"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    const-string v3, "user"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/message/VoiceMessage;->parseJsonToUserInfo(Lorg/json/JSONObject;)Lio/rong/imlib/model/UserInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/message/VoiceMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_3
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static obtain(Landroid/net/Uri;I)Lio/rong/message/VoiceMessage;
    .locals 1
    .parameter "uri"
    .parameter "duration"

    .prologue
    .line 90
    new-instance v0, Lio/rong/message/VoiceMessage;

    invoke-direct {v0, p0, p1}, Lio/rong/message/VoiceMessage;-><init>(Landroid/net/Uri;I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 140
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "content"

    iget-object v3, p0, Lio/rong/message/VoiceMessage;->mBase64:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v2, "duration"

    iget v3, p0, Lio/rong/message/VoiceMessage;->mDuration:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    invoke-virtual {p0}, Lio/rong/message/VoiceMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    const-string v2, "extra"

    iget-object v3, p0, Lio/rong/message/VoiceMessage;->extra:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_0
    invoke-virtual {p0}, Lio/rong/message/VoiceMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 150
    const-string v2, "user"

    invoke-virtual {p0}, Lio/rong/message/VoiceMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_1
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lio/rong/message/VoiceMessage;->mBase64:Ljava/lang/String;

    .line 157
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lio/rong/message/VoiceMessage;->mBase64:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lio/rong/message/VoiceMessage;->mDuration:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/rong/message/VoiceMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lio/rong/message/VoiceMessage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setBase64(Ljava/lang/String;)V
    .locals 0
    .parameter "base64"

    .prologue
    .line 135
    iput-object p1, p0, Lio/rong/message/VoiceMessage;->mBase64:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 126
    iput p1, p0, Lio/rong/message/VoiceMessage;->mDuration:I

    .line 127
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 38
    iput-object p1, p0, Lio/rong/message/VoiceMessage;->extra:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 108
    iput-object p1, p0, Lio/rong/message/VoiceMessage;->mUri:Landroid/net/Uri;

    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 178
    iget-object v0, p0, Lio/rong/message/VoiceMessage;->extra:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lio/rong/message/VoiceMessage;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 180
    iget v0, p0, Lio/rong/message/VoiceMessage;->mDuration:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 181
    invoke-virtual {p0}, Lio/rong/message/VoiceMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 182
    return-void
.end method
