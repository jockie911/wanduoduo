.class public Lio/rong/message/DiscussionNotificationMessage;
.super Lio/rong/message/NotificationMessage;
.source "DiscussionNotificationMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x1
    value = "RC:DizNtf"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/DiscussionNotificationMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extension:Ljava/lang/String;

.field private hasReceived:Z

.field private operator:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lio/rong/message/DiscussionNotificationMessage$1;

    invoke-direct {v0}, Lio/rong/message/DiscussionNotificationMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/DiscussionNotificationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lio/rong/message/NotificationMessage;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 31
    invoke-direct {p0}, Lio/rong/message/NotificationMessage;-><init>()V

    .line 32
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readIntFromParcel(Landroid/os/Parcel;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/rong/message/DiscussionNotificationMessage;->type:I

    .line 33
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/DiscussionNotificationMessage;->extension:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/DiscussionNotificationMessage;->operator:Ljava/lang/String;

    .line 35
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lio/rong/message/DiscussionNotificationMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 36
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .parameter "data"

    .prologue
    .line 38
    invoke-direct {p0}, Lio/rong/message/NotificationMessage;-><init>()V

    .line 39
    const/4 v2, 0x0

    .line 42
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

    .line 48
    .end local v3           #jsonStr:Ljava/lang/String;
    .restart local v2       #jsonStr:Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lio/rong/message/DiscussionNotificationMessage;->setType(I)V

    .line 50
    const-string v4, "extension"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/DiscussionNotificationMessage;->setExtension(Ljava/lang/String;)V

    .line 51
    const-string v4, "operator"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/DiscussionNotificationMessage;->setOperator(Ljava/lang/String;)V

    .line 53
    const-string v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    const-string v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/DiscussionNotificationMessage;->parseJsonToUserInfo(Lorg/json/JSONObject;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/DiscussionNotificationMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 43
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 125
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "type"

    iget v3, p0, Lio/rong/message/DiscussionNotificationMessage;->type:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string v2, "extension"

    iget-object v3, p0, Lio/rong/message/DiscussionNotificationMessage;->extension:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-virtual {p0}, Lio/rong/message/DiscussionNotificationMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 133
    const-string v2, "user"

    invoke-virtual {p0}, Lio/rong/message/DiscussionNotificationMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
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

    .line 145
    :goto_1
    return-object v2

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 145
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lio/rong/message/DiscussionNotificationMessage;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lio/rong/message/DiscussionNotificationMessage;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lio/rong/message/DiscussionNotificationMessage;->type:I

    return v0
.end method

.method public isHasReceived()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lio/rong/message/DiscussionNotificationMessage;->hasReceived:Z

    return v0
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .parameter "extension"

    .prologue
    .line 179
    iput-object p1, p0, Lio/rong/message/DiscussionNotificationMessage;->extension:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setHasReceived(Z)V
    .locals 0
    .parameter "hasReceived"

    .prologue
    .line 113
    iput-boolean p1, p0, Lio/rong/message/DiscussionNotificationMessage;->hasReceived:Z

    .line 114
    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0
    .parameter "operator"

    .prologue
    .line 195
    iput-object p1, p0, Lio/rong/message/DiscussionNotificationMessage;->operator:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 163
    iput p1, p0, Lio/rong/message/DiscussionNotificationMessage;->type:I

    .line 164
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 79
    iget v0, p0, Lio/rong/message/DiscussionNotificationMessage;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Integer;)V

    .line 80
    iget-object v0, p0, Lio/rong/message/DiscussionNotificationMessage;->extension:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lio/rong/message/DiscussionNotificationMessage;->operator:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lio/rong/message/DiscussionNotificationMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 83
    return-void
.end method
