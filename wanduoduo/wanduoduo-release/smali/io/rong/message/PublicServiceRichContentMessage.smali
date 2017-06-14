.class public Lio/rong/message/PublicServiceRichContentMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "PublicServiceRichContentMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x3
    value = "RC:PSImgTxtMsg"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/PublicServiceRichContentMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRichContentItem:Lio/rong/message/RichContentItem;

.field private mUser:Lio/rong/imlib/model/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lio/rong/message/PublicServiceRichContentMessage$1;

    invoke-direct {v0}, Lio/rong/message/PublicServiceRichContentMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/PublicServiceRichContentMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 70
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 72
    const-class v0, Lio/rong/message/RichContentItem;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/message/RichContentItem;

    iput-object v0, p0, Lio/rong/message/PublicServiceRichContentMessage;->mRichContentItem:Lio/rong/message/RichContentItem;

    .line 73
    return-void
.end method

.method public constructor <init>([B)V
    .locals 9
    .parameter "data"

    .prologue
    .line 26
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 27
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    .line 30
    .local v3, jsonStr:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v2, jsonObj:Lorg/json/JSONObject;
    const-string v6, "articles"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 33
    .local v1, items:Lorg/json/JSONArray;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #jsonObj:Lorg/json/JSONObject;
    check-cast v2, Lorg/json/JSONObject;

    .line 34
    .restart local v2       #jsonObj:Lorg/json/JSONObject;
    new-instance v6, Lio/rong/message/RichContentItem;

    invoke-direct {v6, v2}, Lio/rong/message/RichContentItem;-><init>(Lorg/json/JSONObject;)V

    iput-object v6, p0, Lio/rong/message/PublicServiceRichContentMessage;->mRichContentItem:Lio/rong/message/RichContentItem;

    .line 36
    const-string v6, "user"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 37
    .local v5, user:Lorg/json/JSONObject;
    const-string v6, "portrait"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 38
    const-string v6, "portrait"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 39
    .local v4, uri:Landroid/net/Uri;
    new-instance v6, Lio/rong/imlib/model/UserInfo;

    const-string v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8, v4}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, p0, Lio/rong/message/PublicServiceRichContentMessage;->mUser:Lio/rong/imlib/model/UserInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1           #items:Lorg/json/JSONArray;
    .end local v2           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #user:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage()Lio/rong/message/RichContentItem;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/rong/message/PublicServiceRichContentMessage;->mRichContentItem:Lio/rong/message/RichContentItem;

    return-object v0
.end method

.method public getPublicServiceUserInfo()Lio/rong/imlib/model/UserInfo;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/rong/message/PublicServiceRichContentMessage;->mUser:Lio/rong/imlib/model/UserInfo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    iget-object v0, p0, Lio/rong/message/PublicServiceRichContentMessage;->mRichContentItem:Lio/rong/message/RichContentItem;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 68
    return-void
.end method
