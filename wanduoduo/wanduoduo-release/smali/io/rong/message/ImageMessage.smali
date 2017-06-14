.class public Lio/rong/message/ImageMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "ImageMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x3
    messageHandler = Lio/rong/message/ImageMessageHandler;
    value = "RC:ImgMsg"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/ImageMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected extra:Ljava/lang/String;

.field private mBase64:Ljava/lang/String;

.field mIsFull:Z

.field private mLocalUri:Landroid/net/Uri;

.field private mRemoteUri:Landroid/net/Uri;

.field private mThumUri:Landroid/net/Uri;

.field private mUpLoadExp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lio/rong/message/ImageMessage$1;

    invoke-direct {v0}, Lio/rong/message/ImageMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/ImageMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/message/ImageMessage;->mUpLoadExp:Z

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .parameter "thumbUri"
    .parameter "localUri"

    .prologue
    .line 85
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/message/ImageMessage;->mUpLoadExp:Z

    .line 86
    iput-object p1, p0, Lio/rong/message/ImageMessage;->mThumUri:Landroid/net/Uri;

    .line 87
    iput-object p2, p0, Lio/rong/message/ImageMessage;->mLocalUri:Landroid/net/Uri;

    .line 88
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Z)V
    .locals 1
    .parameter "thumbUri"
    .parameter "localUri"
    .parameter "original"

    .prologue
    .line 90
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/message/ImageMessage;->mUpLoadExp:Z

    .line 91
    iput-object p1, p0, Lio/rong/message/ImageMessage;->mThumUri:Landroid/net/Uri;

    .line 92
    iput-object p2, p0, Lio/rong/message/ImageMessage;->mLocalUri:Landroid/net/Uri;

    .line 93
    iput-boolean p3, p0, Lio/rong/message/ImageMessage;->mIsFull:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 283
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 23
    iput-boolean v2, p0, Lio/rong/message/ImageMessage;->mUpLoadExp:Z

    .line 284
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/message/ImageMessage;->setExtra(Ljava/lang/String;)V

    .line 285
    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lio/rong/message/ImageMessage;->mLocalUri:Landroid/net/Uri;

    .line 286
    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lio/rong/message/ImageMessage;->mRemoteUri:Landroid/net/Uri;

    .line 287
    const-class v0, Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lio/rong/message/ImageMessage;->mThumUri:Landroid/net/Uri;

    .line 288
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lio/rong/message/ImageMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 289
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/rong/message/ImageMessage;->mIsFull:Z

    .line 290
    return-void

    :cond_0
    move v0, v2

    .line 289
    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 6
    .parameter "data"

    .prologue
    .line 46
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 23
    const/4 v4, 0x0

    iput-boolean v4, p0, Lio/rong/message/ImageMessage;->mUpLoadExp:Z

    .line 47
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 50
    .local v2, jsonStr:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v4, "imageUri"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    const-string v4, "imageUri"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, uri:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ImageMessage;->setRemoteUri(Landroid/net/Uri;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lio/rong/message/ImageMessage;->getRemoteUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lio/rong/message/ImageMessage;->getRemoteUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lio/rong/message/ImageMessage;->getRemoteUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    invoke-virtual {p0}, Lio/rong/message/ImageMessage;->getRemoteUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ImageMessage;->setLocalUri(Landroid/net/Uri;)V

    .line 61
    .end local v3           #uri:Ljava/lang/String;
    :cond_1
    const-string v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    const-string v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ImageMessage;->setBase64(Ljava/lang/String;)V

    .line 64
    :cond_2
    const-string v4, "extra"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 65
    const-string v4, "extra"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ImageMessage;->setExtra(Ljava/lang/String;)V

    .line 67
    :cond_3
    const-string v4, "exp"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 68
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lio/rong/message/ImageMessage;->setUpLoadExp(Z)V

    .line 70
    :cond_4
    const-string v4, "isFull"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 71
    const-string v4, "isFull"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Lio/rong/message/ImageMessage;->setIsFull(Z)V

    .line 73
    :cond_5
    const-string v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 74
    const-string v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ImageMessage;->parseJsonToUserInfo(Lorg/json/JSONObject;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/ImageMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_6
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static obtain()Lio/rong/message/ImageMessage;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lio/rong/message/ImageMessage;

    invoke-direct {v0}, Lio/rong/message/ImageMessage;-><init>()V

    return-object v0
.end method

.method public static obtain(Landroid/net/Uri;Landroid/net/Uri;)Lio/rong/message/ImageMessage;
    .locals 1
    .parameter "thumUri"
    .parameter "localUri"

    .prologue
    .line 104
    new-instance v0, Lio/rong/message/ImageMessage;

    invoke-direct {v0, p0, p1}, Lio/rong/message/ImageMessage;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static obtain(Landroid/net/Uri;Landroid/net/Uri;Z)Lio/rong/message/ImageMessage;
    .locals 1
    .parameter "thumUri"
    .parameter "localUri"
    .parameter "isFull"

    .prologue
    .line 116
    new-instance v0, Lio/rong/message/ImageMessage;

    invoke-direct {v0, p0, p1, p2}, Lio/rong/message/ImageMessage;-><init>(Landroid/net/Uri;Landroid/net/Uri;Z)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 238
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 241
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lio/rong/message/ImageMessage;->mBase64:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 242
    const-string v2, "content"

    iget-object v3, p0, Lio/rong/message/ImageMessage;->mBase64:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :goto_0
    iget-object v2, p0, Lio/rong/message/ImageMessage;->mRemoteUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 248
    const-string v2, "imageUri"

    iget-object v3, p0, Lio/rong/message/ImageMessage;->mRemoteUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lio/rong/message/ImageMessage;->mUpLoadExp:Z

    if-eqz v2, :cond_1

    .line 254
    const-string v2, "exp"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 256
    :cond_1
    const-string v2, "isFull"

    iget-boolean v3, p0, Lio/rong/message/ImageMessage;->mIsFull:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 257
    invoke-virtual {p0}, Lio/rong/message/ImageMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 258
    const-string v2, "extra"

    invoke-virtual {p0}, Lio/rong/message/ImageMessage;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_2
    invoke-virtual {p0}, Lio/rong/message/ImageMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 260
    const-string v2, "user"

    invoke-virtual {p0}, Lio/rong/message/ImageMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_3
    :goto_2
    const/4 v2, 0x0

    iput-object v2, p0, Lio/rong/message/ImageMessage;->mBase64:Ljava/lang/String;

    .line 265
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 244
    :cond_4
    :try_start_1
    const-string v2, "ImageMessage"

    const-string v3, "base64 is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 249
    .end local v0           #e:Lorg/json/JSONException;
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lio/rong/message/ImageMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 250
    const-string v2, "imageUri"

    invoke-virtual {p0}, Lio/rong/message/ImageMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public getBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lio/rong/message/ImageMessage;->mBase64:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lio/rong/message/ImageMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lio/rong/message/ImageMessage;->mLocalUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRemoteUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lio/rong/message/ImageMessage;->mRemoteUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getThumUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lio/rong/message/ImageMessage;->mThumUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lio/rong/message/ImageMessage;->mIsFull:Z

    return v0
.end method

.method public isUpLoadExp()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lio/rong/message/ImageMessage;->mUpLoadExp:Z

    return v0
.end method

.method public setBase64(Ljava/lang/String;)V
    .locals 0
    .parameter "base64"

    .prologue
    .line 206
    iput-object p1, p0, Lio/rong/message/ImageMessage;->mBase64:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 43
    iput-object p1, p0, Lio/rong/message/ImageMessage;->extra:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setIsFull(Z)V
    .locals 0
    .parameter "isFull"

    .prologue
    .line 152
    iput-boolean p1, p0, Lio/rong/message/ImageMessage;->mIsFull:Z

    .line 153
    return-void
.end method

.method public setLocalUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "localUri"

    .prologue
    .line 179
    iput-object p1, p0, Lio/rong/message/ImageMessage;->mLocalUri:Landroid/net/Uri;

    .line 180
    return-void
.end method

.method public setRemoteUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "remoteUri"

    .prologue
    .line 197
    iput-object p1, p0, Lio/rong/message/ImageMessage;->mRemoteUri:Landroid/net/Uri;

    .line 198
    return-void
.end method

.method public setThumUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "thumUri"

    .prologue
    .line 161
    iput-object p1, p0, Lio/rong/message/ImageMessage;->mThumUri:Landroid/net/Uri;

    .line 162
    return-void
.end method

.method public setUpLoadExp(Z)V
    .locals 0
    .parameter "upLoadExp"

    .prologue
    .line 233
    iput-boolean p1, p0, Lio/rong/message/ImageMessage;->mUpLoadExp:Z

    .line 234
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 300
    invoke-virtual {p0}, Lio/rong/message/ImageMessage;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lio/rong/message/ImageMessage;->mLocalUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 302
    iget-object v0, p0, Lio/rong/message/ImageMessage;->mRemoteUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 303
    iget-object v0, p0, Lio/rong/message/ImageMessage;->mThumUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 304
    invoke-virtual {p0}, Lio/rong/message/ImageMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 305
    iget-boolean v0, p0, Lio/rong/message/ImageMessage;->mIsFull:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 306
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
