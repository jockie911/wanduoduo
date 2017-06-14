.class public Lio/rong/message/RecallCommandMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "RecallCommandMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    value = "RC:RcCmd"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/RecallCommandMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RecallCommandMessage"


# instance fields
.field private extra:Ljava/lang/String;

.field private messageUId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lio/rong/message/RecallCommandMessage$1;

    invoke-direct {v0}, Lio/rong/message/RecallCommandMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/RecallCommandMessage;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p0, v0}, Lio/rong/message/RecallCommandMessage;->setMessageUId(Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/message/RecallCommandMessage;->setExtra(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "UId"

    .prologue
    .line 51
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lio/rong/message/RecallCommandMessage;->setMessageUId(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "UId"
    .parameter "ex"

    .prologue
    .line 55
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lio/rong/message/RecallCommandMessage;->setMessageUId(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p2}, Lio/rong/message/RecallCommandMessage;->setExtra(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .parameter "data"

    .prologue
    .line 60
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 61
    const/4 v2, 0x0

    .line 64
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

    .line 70
    .end local v3           #jsonStr:Ljava/lang/String;
    .restart local v2       #jsonStr:Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v4, "messageUId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const-string v4, "messageUId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/RecallCommandMessage;->setMessageUId(Ljava/lang/String;)V

    .line 75
    :cond_0
    const-string v4, "extra"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    const-string v4, "extra"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/rong/message/RecallCommandMessage;->setExtra(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "RecallCommandMessage"

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
    const-string v4, "RecallCommandMessage"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 95
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lio/rong/message/RecallCommandMessage;->getMessageUId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    const-string v2, "messageUId"

    invoke-virtual {p0}, Lio/rong/message/RecallCommandMessage;->getMessageUId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_0
    invoke-virtual {p0}, Lio/rong/message/RecallCommandMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    const-string v2, "extra"

    invoke-virtual {p0}, Lio/rong/message/RecallCommandMessage;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
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

    .line 114
    :goto_1
    return-object v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "RecallCommandMessage"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 114
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lio/rong/message/RecallCommandMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageUId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/rong/message/RecallCommandMessage;->messageUId:Ljava/lang/String;

    return-object v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 48
    iput-object p1, p0, Lio/rong/message/RecallCommandMessage;->extra:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setMessageUId(Ljava/lang/String;)V
    .locals 0
    .parameter "messageUId"

    .prologue
    .line 40
    iput-object p1, p0, Lio/rong/message/RecallCommandMessage;->messageUId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 124
    invoke-virtual {p0}, Lio/rong/message/RecallCommandMessage;->getMessageUId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lio/rong/message/RecallCommandMessage;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 126
    return-void
.end method
