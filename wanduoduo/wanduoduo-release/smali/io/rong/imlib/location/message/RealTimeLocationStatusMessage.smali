.class public Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "RealTimeLocationStatusMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x0
    value = "RC:RL"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private latitude:D

.field private longitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage$1;

    invoke-direct {v0}, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage$1;-><init>()V

    sput-object v0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 22
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 19
    iput-wide v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->latitude:D

    .line 20
    iput-wide v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->longitude:D

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const-wide/16 v0, 0x0

    .line 48
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 19
    iput-wide v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->latitude:D

    .line 20
    iput-wide v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->longitude:D

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->latitude:D

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->longitude:D

    .line 51
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .parameter "data"

    .prologue
    const-wide/16 v4, 0x0

    .line 26
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 19
    iput-wide v4, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->latitude:D

    .line 20
    iput-wide v4, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->longitude:D

    .line 27
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 29
    .local v2, jsonStr:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v3, "latitude"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    const-string v3, "latitude"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->latitude:D

    .line 33
    :cond_0
    const-string v3, "longitude"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    const-string v3, "longitude"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->longitude:D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static obtain(DD)Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;
    .locals 2
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 42
    new-instance v0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;

    invoke-direct {v0}, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;-><init>()V

    .line 43
    .local v0, model:Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;
    iput-wide p0, v0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->latitude:D

    .line 44
    iput-wide p2, v0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->longitude:D

    .line 45
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 6

    .prologue
    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "latitude"

    iget-wide v4, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->latitude:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 77
    const-string v2, "longitude"

    iget-wide v4, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->longitude:D

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->longitude:D

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 68
    iget-wide v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 69
    iget-wide v0, p0, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 70
    return-void
.end method
