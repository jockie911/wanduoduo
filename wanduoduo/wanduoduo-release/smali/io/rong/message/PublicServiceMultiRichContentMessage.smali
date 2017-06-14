.class public Lio/rong/message/PublicServiceMultiRichContentMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "PublicServiceMultiRichContentMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x3
    value = "RC:PSMultiImgTxtMsg"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/PublicServiceMultiRichContentMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRichContentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/message/RichContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUser:Lio/rong/imlib/model/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lio/rong/message/PublicServiceMultiRichContentMessage$1;

    invoke-direct {v0}, Lio/rong/message/PublicServiceMultiRichContentMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/PublicServiceMultiRichContentMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/message/PublicServiceMultiRichContentMessage;->mRichContentItems:Ljava/util/ArrayList;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 75
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/message/PublicServiceMultiRichContentMessage;->mRichContentItems:Ljava/util/ArrayList;

    .line 76
    const-class v0, Lio/rong/message/RichContentItem;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readListFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/PublicServiceMultiRichContentMessage;->mRichContentItems:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method public constructor <init>([B)V
    .locals 11
    .parameter "data"

    .prologue
    .line 28
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 21
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lio/rong/message/PublicServiceMultiRichContentMessage;->mRichContentItems:Ljava/util/ArrayList;

    .line 29
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 32
    .local v4, jsonStr:Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v3, jsonObj:Lorg/json/JSONObject;
    const-string v8, "articles"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 35
    .local v2, items:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 36
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #jsonObj:Lorg/json/JSONObject;
    check-cast v3, Lorg/json/JSONObject;

    .line 38
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    new-instance v5, Lio/rong/message/RichContentItem;

    invoke-direct {v5, v3}, Lio/rong/message/RichContentItem;-><init>(Lorg/json/JSONObject;)V

    .line 39
    .local v5, richContentItem:Lio/rong/message/RichContentItem;
    iget-object v8, p0, Lio/rong/message/PublicServiceMultiRichContentMessage;->mRichContentItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v5           #richContentItem:Lio/rong/message/RichContentItem;
    :cond_0
    const-string v8, "user"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 43
    .local v7, user:Lorg/json/JSONObject;
    const-string v8, "portrait"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 44
    const-string v8, "portrait"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 45
    .local v6, uri:Landroid/net/Uri;
    new-instance v8, Lio/rong/imlib/model/UserInfo;

    const-string v9, "id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v6}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v8, p0, Lio/rong/message/PublicServiceMultiRichContentMessage;->mUser:Lio/rong/imlib/model/UserInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1           #i:I
    .end local v2           #items:Lorg/json/JSONArray;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #user:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Lorg/json/JSONException;
    const-string v8, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/message/RichContentItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lio/rong/message/PublicServiceMultiRichContentMessage;->mRichContentItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPublicServiceUserInfo()Lio/rong/imlib/model/UserInfo;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lio/rong/message/PublicServiceMultiRichContentMessage;->mUser:Lio/rong/imlib/model/UserInfo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 64
    iget-object v0, p0, Lio/rong/message/PublicServiceMultiRichContentMessage;->mRichContentItems:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeListToParcel(Landroid/os/Parcel;Ljava/util/List;)V

    .line 65
    return-void
.end method
