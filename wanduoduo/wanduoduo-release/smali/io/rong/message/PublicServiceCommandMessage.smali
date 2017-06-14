.class public Lio/rong/message/PublicServiceCommandMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "PublicServiceCommandMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    value = "RC:PSCmd"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/PublicServiceCommandMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PublicServiceCommandMessage"


# instance fields
.field private command:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field protected extra:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lio/rong/message/PublicServiceCommandMessage$1;

    invoke-direct {v0}, Lio/rong/message/PublicServiceCommandMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/PublicServiceCommandMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 128
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 129
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/PublicServiceCommandMessage;->command:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/PublicServiceCommandMessage;->data:Ljava/lang/String;

    .line 131
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/message/PublicServiceCommandMessage;->setExtra(Ljava/lang/String;)V

    .line 132
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lio/rong/message/PublicServiceCommandMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 133
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 79
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 81
    return-void
.end method

.method public static obtain(Lio/rong/imlib/model/PublicServiceMenuItem;)Lio/rong/message/PublicServiceCommandMessage;
    .locals 2
    .parameter "item"

    .prologue
    .line 84
    new-instance v0, Lio/rong/message/PublicServiceCommandMessage;

    invoke-direct {v0}, Lio/rong/message/PublicServiceCommandMessage;-><init>()V

    .line 85
    .local v0, model:Lio/rong/message/PublicServiceCommandMessage;
    invoke-virtual {p0}, Lio/rong/imlib/model/PublicServiceMenuItem;->getType()Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lio/rong/imlib/model/PublicServiceMenuItem;->getType()Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceMenu$PublicServiceMenuItemType;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/rong/message/PublicServiceCommandMessage;->command:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lio/rong/imlib/model/PublicServiceMenuItem;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/rong/message/PublicServiceCommandMessage;->data:Ljava/lang/String;

    .line 89
    :cond_0
    return-object v0
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
    .locals 5

    .prologue
    .line 52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "cmd"

    iget-object v3, p0, Lio/rong/message/PublicServiceCommandMessage;->command:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v2, "data"

    iget-object v3, p0, Lio/rong/message/PublicServiceCommandMessage;->data:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {p0}, Lio/rong/message/PublicServiceCommandMessage;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    const-string v2, "extra"

    invoke-virtual {p0}, Lio/rong/message/PublicServiceCommandMessage;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :cond_0
    invoke-virtual {p0}, Lio/rong/message/PublicServiceCommandMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 61
    const-string v2, "user"

    invoke-virtual {p0}, Lio/rong/message/PublicServiceCommandMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
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

    .line 72
    :goto_1
    return-object v2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "PublicServiceCommandMessage"

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

    .line 69
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 72
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/rong/message/PublicServiceCommandMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 97
    iput-object p1, p0, Lio/rong/message/PublicServiceCommandMessage;->command:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 93
    iput-object p1, p0, Lio/rong/message/PublicServiceCommandMessage;->data:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 41
    iput-object p1, p0, Lio/rong/message/PublicServiceCommandMessage;->extra:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 117
    iget-object v0, p0, Lio/rong/message/PublicServiceCommandMessage;->command:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lio/rong/message/PublicServiceCommandMessage;->data:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lio/rong/message/PublicServiceCommandMessage;->getExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lio/rong/message/PublicServiceCommandMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 121
    return-void
.end method
