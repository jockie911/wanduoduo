.class public Lio/rong/message/StickerMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "StickerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/message/StickerMessage$Builder;
    }
.end annotation

.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x3
    value = "RC:StkMsg"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/StickerMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "StickerMessage"


# instance fields
.field private category:Ljava/lang/String;

.field private isInstalled:Z

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lio/rong/message/StickerMessage$1;

    invoke-direct {v0}, Lio/rong/message/StickerMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/StickerMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 120
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 121
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/StickerMessage;->category:Ljava/lang/String;

    .line 122
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/StickerMessage;->name:Ljava/lang/String;

    .line 123
    return-void
.end method

.method private constructor <init>(Lio/rong/message/StickerMessage$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 59
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 60
    #getter for: Lio/rong/message/StickerMessage$Builder;->category:Ljava/lang/String;
    invoke-static {p1}, Lio/rong/message/StickerMessage$Builder;->access$000(Lio/rong/message/StickerMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/StickerMessage;->category:Ljava/lang/String;

    .line 61
    #getter for: Lio/rong/message/StickerMessage$Builder;->name:Ljava/lang/String;
    invoke-static {p1}, Lio/rong/message/StickerMessage$Builder;->access$100(Lio/rong/message/StickerMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/StickerMessage;->name:Ljava/lang/String;

    .line 62
    #getter for: Lio/rong/message/StickerMessage$Builder;->isInstalled:Z
    invoke-static {p1}, Lio/rong/message/StickerMessage$Builder;->access$200(Lio/rong/message/StickerMessage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/message/StickerMessage;->isInstalled:Z

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/message/StickerMessage$Builder;Lio/rong/message/StickerMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lio/rong/message/StickerMessage;-><init>(Lio/rong/message/StickerMessage$Builder;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .parameter "data"

    .prologue
    .line 65
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 66
    const/4 v2, 0x0

    .line 68
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

    .line 73
    .end local v3           #jsonStr:Ljava/lang/String;
    .restart local v2       #jsonStr:Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v4, "category"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/rong/message/StickerMessage;->category:Ljava/lang/String;

    .line 75
    const-string v4, "name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/rong/message/StickerMessage;->name:Ljava/lang/String;

    .line 76
    const-string v4, "isInstalled"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lio/rong/message/StickerMessage;->isInstalled:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 5

    .prologue
    .line 41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "category"

    iget-object v3, p0, Lio/rong/message/StickerMessage;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v2, "name"

    iget-object v3, p0, Lio/rong/message/StickerMessage;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v2, "isInstalled"

    iget-boolean v3, p0, Lio/rong/message/StickerMessage;->isInstalled:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 56
    :goto_1
    return-object v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "StickerMessage"

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

    .line 53
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 54
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 56
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/rong/message/StickerMessage;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lio/rong/message/StickerMessage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 127
    iget-object v0, p0, Lio/rong/message/StickerMessage;->category:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lio/rong/message/StickerMessage;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 129
    return-void
.end method
