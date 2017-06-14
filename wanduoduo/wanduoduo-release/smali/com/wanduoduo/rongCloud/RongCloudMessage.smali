.class public Lcom/wanduoduo/rongCloud/RongCloudMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "RongCloudMessage.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wanduoduo/rongCloud/RongCloudMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private friendId:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/wanduoduo/rongCloud/RongCloudMessage$1;

    invoke-direct {v0}, Lcom/wanduoduo/rongCloud/RongCloudMessage$1;-><init>()V

    sput-object v0, Lcom/wanduoduo/rongCloud/RongCloudMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 83
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 84
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wanduoduo/rongCloud/RongCloudMessage;->setFriendId(Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wanduoduo/rongCloud/RongCloudMessage;->setMessage(Ljava/lang/String;)V

    .line 86
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lcom/wanduoduo/rongCloud/RongCloudMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "friendId"
    .parameter "message"

    .prologue
    .line 28
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wanduoduo/rongCloud/RongCloudMessage;->friendId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/wanduoduo/rongCloud/RongCloudMessage;->message:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .parameter "data"

    .prologue
    .line 33
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 34
    const/4 v2, 0x0

    .line 37
    .local v2, jsonStr:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #jsonStr:Ljava/lang/String;
    .local v3, jsonStr:Ljava/lang/String;
    move-object v2, v3

    .line 43
    .end local v3           #jsonStr:Ljava/lang/String;
    .restart local v2       #jsonStr:Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v4, "friendId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/wanduoduo/rongCloud/RongCloudMessage;->setFriendId(Ljava/lang/String;)V

    .line 45
    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/wanduoduo/rongCloud/RongCloudMessage;->setMessage(Ljava/lang/String;)V

    .line 46
    const-string v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    const-string v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/wanduoduo/rongCloud/RongCloudMessage;->parseJsonToUserInfo(Lorg/json/JSONObject;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/wanduoduo/rongCloud/RongCloudMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 38
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 56
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 59
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "friendId"

    iget-object v3, p0, Lcom/wanduoduo/rongCloud/RongCloudMessage;->friendId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v2, "message"

    iget-object v3, p0, Lcom/wanduoduo/rongCloud/RongCloudMessage;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    invoke-virtual {p0}, Lcom/wanduoduo/rongCloud/RongCloudMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 63
    const-string v2, "user"

    invoke-virtual {p0}, Lcom/wanduoduo/rongCloud/RongCloudMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 75
    :goto_1
    return-object v2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 75
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getFriendId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/wanduoduo/rongCloud/RongCloudMessage;->friendId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/wanduoduo/rongCloud/RongCloudMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setFriendId(Ljava/lang/String;)V
    .locals 0
    .parameter "friendId"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/wanduoduo/rongCloud/RongCloudMessage;->friendId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/wanduoduo/rongCloud/RongCloudMessage;->message:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/wanduoduo/rongCloud/RongCloudMessage;->message:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/wanduoduo/rongCloud/RongCloudMessage;->friendId:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/wanduoduo/rongCloud/RongCloudMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 114
    return-void
.end method
