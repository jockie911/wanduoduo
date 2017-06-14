.class public Lio/rong/message/CSChangeModeMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "CSChangeModeMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x0
    value = "RC:CSCha"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/CSChangeModeMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CSChangeModeMessage"


# instance fields
.field private groupid:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lio/rong/message/CSChangeModeMessage$1;

    invoke-direct {v0}, Lio/rong/message/CSChangeModeMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/CSChangeModeMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 59
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 60
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSChangeModeMessage;->sid:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSChangeModeMessage;->uid:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSChangeModeMessage;->pid:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSChangeModeMessage;->groupid:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 34
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 36
    return-void
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/message/CSChangeModeMessage;
    .locals 1
    .parameter "sid"
    .parameter "uid"
    .parameter "pid"
    .parameter "groupid"

    .prologue
    .line 51
    new-instance v0, Lio/rong/message/CSChangeModeMessage;

    invoke-direct {v0}, Lio/rong/message/CSChangeModeMessage;-><init>()V

    .line 52
    .local v0, message:Lio/rong/message/CSChangeModeMessage;
    iput-object p0, v0, Lio/rong/message/CSChangeModeMessage;->sid:Ljava/lang/String;

    .line 53
    iput-object p1, v0, Lio/rong/message/CSChangeModeMessage;->uid:Ljava/lang/String;

    .line 54
    iput-object p2, v0, Lio/rong/message/CSChangeModeMessage;->pid:Ljava/lang/String;

    .line 55
    iput-object p3, v0, Lio/rong/message/CSChangeModeMessage;->groupid:Ljava/lang/String;

    .line 56
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 5

    .prologue
    .line 97
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "uid"

    iget-object v3, p0, Lio/rong/message/CSChangeModeMessage;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v2, "sid"

    iget-object v3, p0, Lio/rong/message/CSChangeModeMessage;->sid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v2, "pid"

    iget-object v3, p0, Lio/rong/message/CSChangeModeMessage;->pid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    iget-object v2, p0, Lio/rong/message/CSChangeModeMessage;->groupid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    const-string v2, "groupid"

    iget-object v3, p0, Lio/rong/message/CSChangeModeMessage;->groupid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
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

    .line 114
    :goto_1
    return-object v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "CSChangeModeMessage"

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

    .line 111
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 114
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 84
    iget-object v0, p0, Lio/rong/message/CSChangeModeMessage;->sid:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lio/rong/message/CSChangeModeMessage;->uid:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lio/rong/message/CSChangeModeMessage;->pid:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lio/rong/message/CSChangeModeMessage;->groupid:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 88
    return-void
.end method
