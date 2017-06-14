.class public Lio/rong/message/CSSuspendMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "CSSuspendMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x0
    value = "RC:CsSp"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/CSSuspendMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CSSuspendMessage"


# instance fields
.field private pid:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lio/rong/message/CSSuspendMessage$1;

    invoke-direct {v0}, Lio/rong/message/CSSuspendMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/CSSuspendMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 54
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 55
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSSuspendMessage;->sid:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSSuspendMessage;->uid:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/CSSuspendMessage;->pid:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 30
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 32
    return-void
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/message/CSSuspendMessage;
    .locals 1
    .parameter "sid"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 47
    new-instance v0, Lio/rong/message/CSSuspendMessage;

    invoke-direct {v0}, Lio/rong/message/CSSuspendMessage;-><init>()V

    .line 48
    .local v0, message:Lio/rong/message/CSSuspendMessage;
    iput-object p0, v0, Lio/rong/message/CSSuspendMessage;->sid:Ljava/lang/String;

    .line 49
    iput-object p1, v0, Lio/rong/message/CSSuspendMessage;->uid:Ljava/lang/String;

    .line 50
    iput-object p2, v0, Lio/rong/message/CSSuspendMessage;->pid:Ljava/lang/String;

    .line 51
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 5

    .prologue
    .line 90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "uid"

    iget-object v3, p0, Lio/rong/message/CSSuspendMessage;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v2, "sid"

    iget-object v3, p0, Lio/rong/message/CSSuspendMessage;->sid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v2, "pid"

    iget-object v3, p0, Lio/rong/message/CSSuspendMessage;->pid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 104
    :goto_1
    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "CSSuspendMessage"

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

    .line 101
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 104
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 78
    iget-object v0, p0, Lio/rong/message/CSSuspendMessage;->sid:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lio/rong/message/CSSuspendMessage;->uid:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lio/rong/message/CSSuspendMessage;->pid:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 81
    return-void
.end method
