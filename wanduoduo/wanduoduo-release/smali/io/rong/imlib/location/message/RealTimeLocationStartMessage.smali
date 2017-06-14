.class public Lio/rong/imlib/location/message/RealTimeLocationStartMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "RealTimeLocationStartMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x3
    value = "RC:RLStart"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/location/message/RealTimeLocationStartMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RealTimeLocationStartMessage"


# instance fields
.field private content:Ljava/lang/String;

.field private extra:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage$1;

    invoke-direct {v0}, Lio/rong/imlib/location/message/RealTimeLocationStartMessage$1;-><init>()V

    sput-object v0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 65
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->content:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->extra:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->content:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->extra:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 25
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->content:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->extra:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->content:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7
    .parameter "data"

    .prologue
    .line 29
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 22
    const-string v4, ""

    iput-object v4, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->content:Ljava/lang/String;

    .line 23
    const-string v4, ""

    iput-object v4, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->extra:Ljava/lang/String;

    .line 30
    const/4 v2, 0x0

    .line 32
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

    .line 38
    .end local v3           #jsonStr:Ljava/lang/String;
    .restart local v2       #jsonStr:Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    const-string v4, "content"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->content:Ljava/lang/String;

    .line 41
    :cond_0
    const-string v4, "extra"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 42
    const-string v4, "extra"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->extra:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "RealTimeLocationStartMessage"

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
.end method

.method public static obtain(Ljava/lang/String;)Lio/rong/imlib/location/message/RealTimeLocationStartMessage;
    .locals 1
    .parameter "content"

    .prologue
    .line 49
    new-instance v0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;

    invoke-direct {v0, p0}, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, model:Lio/rong/imlib/location/message/RealTimeLocationStartMessage;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 83
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "content"

    iget-object v3, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    iget-object v2, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->extra:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 87
    const-string v2, "extra"

    iget-object v3, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->extra:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
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

    .line 97
    :goto_1
    return-object v2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 93
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 94
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 97
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 62
    iput-object p1, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->extra:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 77
    iget-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStartMessage;->extra:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    return-void
.end method
