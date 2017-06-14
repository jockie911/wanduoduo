.class public Lio/rong/message/RecallNotificationMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "RecallNotificationMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x1
    value = "RC:RcNtf"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/RecallNotificationMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RecallNotificationMessage"


# instance fields
.field private mOperatorId:Ljava/lang/String;

.field private mOriginalObjectName:Ljava/lang/String;

.field private mRecallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lio/rong/message/RecallNotificationMessage$1;

    invoke-direct {v0}, Lio/rong/message/RecallNotificationMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/RecallNotificationMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 83
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 84
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/RecallNotificationMessage;->mOperatorId:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readLongFromParcel(Landroid/os/Parcel;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/message/RecallNotificationMessage;->mRecallTime:J

    .line 86
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/RecallNotificationMessage;->mOriginalObjectName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "operatorId"
    .parameter "recallTime"
    .parameter "originalObjectName"

    .prologue
    .line 51
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 52
    iput-object p1, p0, Lio/rong/message/RecallNotificationMessage;->mOperatorId:Ljava/lang/String;

    .line 53
    iput-wide p2, p0, Lio/rong/message/RecallNotificationMessage;->mRecallTime:J

    .line 54
    iput-object p4, p0, Lio/rong/message/RecallNotificationMessage;->mOriginalObjectName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .parameter "data"

    .prologue
    .line 57
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 58
    const/4 v2, 0x0

    .line 61
    .local v2, jsonStr:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #jsonStr:Ljava/lang/String;
    .local v3, jsonStr:Ljava/lang/String;
    move-object v2, v3

    .line 67
    .end local v3           #jsonStr:Ljava/lang/String;
    .restart local v2       #jsonStr:Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v4, "operatorId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    const-string v4, "operatorId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/rong/message/RecallNotificationMessage;->mOperatorId:Ljava/lang/String;

    .line 72
    :cond_0
    const-string v4, "recallTime"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    const-string v4, "recallTime"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lio/rong/message/RecallNotificationMessage;->mRecallTime:J

    .line 75
    :cond_1
    const-string v4, "originalObjectName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    const-string v4, "originalObjectName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/rong/message/RecallNotificationMessage;->mOriginalObjectName:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_2
    :goto_1
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "RecallNotificationMessage"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "RecallNotificationMessage"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 6

    .prologue
    .line 96
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lio/rong/message/RecallNotificationMessage;->getOperatorId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    const-string v2, "operatorId"

    invoke-virtual {p0}, Lio/rong/message/RecallNotificationMessage;->getOperatorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    :cond_0
    const-string v2, "recallTime"

    invoke-virtual {p0}, Lio/rong/message/RecallNotificationMessage;->getRecallTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    invoke-virtual {p0}, Lio/rong/message/RecallNotificationMessage;->getOriginalObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    const-string v2, "originalObjectName"

    invoke-virtual {p0}, Lio/rong/message/RecallNotificationMessage;->getOriginalObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 116
    :goto_1
    return-object v2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "RecallNotificationMessage"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 116
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getOperatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lio/rong/message/RecallNotificationMessage;->mOperatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/rong/message/RecallNotificationMessage;->mOriginalObjectName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecallTime()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lio/rong/message/RecallNotificationMessage;->mRecallTime:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 126
    invoke-virtual {p0}, Lio/rong/message/RecallNotificationMessage;->getOperatorId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lio/rong/message/RecallNotificationMessage;->getRecallTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Long;)V

    .line 128
    invoke-virtual {p0}, Lio/rong/message/RecallNotificationMessage;->getOriginalObjectName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 129
    return-void
.end method
