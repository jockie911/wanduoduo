.class public Lio/rong/message/GroupNotificationMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "GroupNotificationMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x1
    value = "RC:GrpNtf"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/GroupNotificationMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP_OPERATION_ADD:Ljava/lang/String; = "Add"

.field public static final GROUP_OPERATION_BULLETIN:Ljava/lang/String; = "Bulletin"

.field public static final GROUP_OPERATION_KICKED:Ljava/lang/String; = "Kicked"

.field public static final GROUP_OPERATION_QUIT:Ljava/lang/String; = "Quit"

.field public static final GROUP_OPERATION_RENAME:Ljava/lang/String; = "Rename"

.field private static final TAG:Ljava/lang/String; = "GroupNotificationMessage"


# instance fields
.field private data:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private operation:Ljava/lang/String;

.field private operatorUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lio/rong/message/GroupNotificationMessage$1;

    invoke-direct {v0}, Lio/rong/message/GroupNotificationMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/GroupNotificationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 103
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 104
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/GroupNotificationMessage;->operatorUserId:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/GroupNotificationMessage;->operation:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/GroupNotificationMessage;->data:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/GroupNotificationMessage;->message:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/GroupNotificationMessage;->extra:Ljava/lang/String;

    .line 109
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lio/rong/message/GroupNotificationMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 110
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7
    .parameter "data"

    .prologue
    .line 158
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 159
    const/4 v2, 0x0

    .line 161
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

    .line 167
    .end local v3           #jsonStr:Ljava/lang/String;
    .restart local v2       #jsonStr:Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v4, "operatorUserId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/GroupNotificationMessage;->setOperatorUserId(Ljava/lang/String;)V

    .line 169
    const-string v4, "operation"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/GroupNotificationMessage;->setOperation(Ljava/lang/String;)V

    .line 170
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/GroupNotificationMessage;->setData(Ljava/lang/String;)V

    .line 171
    const-string v4, "message"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/GroupNotificationMessage;->setMessage(Ljava/lang/String;)V

    .line 172
    const-string v4, "extra"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/GroupNotificationMessage;->setExtra(Ljava/lang/String;)V

    .line 174
    const-string v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    const-string v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/GroupNotificationMessage;->parseJsonToUserInfo(Lorg/json/JSONObject;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/GroupNotificationMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "GroupNotificationMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSONException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 162
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/message/GroupNotificationMessage;
    .locals 1
    .parameter "operatorUserId"
    .parameter "operation"
    .parameter "data"
    .parameter "message"

    .prologue
    .line 113
    new-instance v0, Lio/rong/message/GroupNotificationMessage;

    invoke-direct {v0}, Lio/rong/message/GroupNotificationMessage;-><init>()V

    .line 114
    .local v0, obj:Lio/rong/message/GroupNotificationMessage;
    iput-object p0, v0, Lio/rong/message/GroupNotificationMessage;->operatorUserId:Ljava/lang/String;

    .line 115
    iput-object p1, v0, Lio/rong/message/GroupNotificationMessage;->operation:Ljava/lang/String;

    .line 116
    iput-object p2, v0, Lio/rong/message/GroupNotificationMessage;->data:Ljava/lang/String;

    .line 117
    iput-object p3, v0, Lio/rong/message/GroupNotificationMessage;->message:Ljava/lang/String;

    .line 118
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 5

    .prologue
    .line 127
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "operatorUserId"

    iget-object v3, p0, Lio/rong/message/GroupNotificationMessage;->operatorUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v2, "operation"

    iget-object v3, p0, Lio/rong/message/GroupNotificationMessage;->operation:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    iget-object v2, p0, Lio/rong/message/GroupNotificationMessage;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    const-string v2, "data"

    iget-object v3, p0, Lio/rong/message/GroupNotificationMessage;->data:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_0
    iget-object v2, p0, Lio/rong/message/GroupNotificationMessage;->message:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    const-string v2, "message"

    iget-object v3, p0, Lio/rong/message/GroupNotificationMessage;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    :cond_1
    invoke-virtual {p0}, Lio/rong/message/GroupNotificationMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 140
    const-string v2, "extra"

    invoke-virtual {p0}, Lio/rong/message/GroupNotificationMessage;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    :cond_2
    invoke-virtual {p0}, Lio/rong/message/GroupNotificationMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 143
    const-string v2, "user"

    invoke-virtual {p0}, Lio/rong/message/GroupNotificationMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 154
    :goto_1
    return-object v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "GroupNotificationMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 154
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lio/rong/message/GroupNotificationMessage;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lio/rong/message/GroupNotificationMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lio/rong/message/GroupNotificationMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lio/rong/message/GroupNotificationMessage;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lio/rong/message/GroupNotificationMessage;->operatorUserId:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 84
    iput-object p1, p0, Lio/rong/message/GroupNotificationMessage;->data:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 100
    iput-object p1, p0, Lio/rong/message/GroupNotificationMessage;->extra:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 92
    iput-object p1, p0, Lio/rong/message/GroupNotificationMessage;->message:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0
    .parameter "operation"

    .prologue
    .line 76
    iput-object p1, p0, Lio/rong/message/GroupNotificationMessage;->operation:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setOperatorUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "operatorUserId"

    .prologue
    .line 68
    iput-object p1, p0, Lio/rong/message/GroupNotificationMessage;->operatorUserId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 185
    iget-object v0, p0, Lio/rong/message/GroupNotificationMessage;->operatorUserId:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lio/rong/message/GroupNotificationMessage;->operation:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lio/rong/message/GroupNotificationMessage;->data:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lio/rong/message/GroupNotificationMessage;->message:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lio/rong/message/GroupNotificationMessage;->extra:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lio/rong/message/GroupNotificationMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 191
    return-void
.end method
