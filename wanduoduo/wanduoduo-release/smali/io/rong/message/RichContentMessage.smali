.class public Lio/rong/message/RichContentMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "RichContentMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x3
    value = "RC:ImgTextMsg"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/RichContentMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private extra:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lio/rong/message/RichContentMessage$1;

    invoke-direct {v0}, Lio/rong/message/RichContentMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/RichContentMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->url:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->extra:Ljava/lang/String;

    .line 102
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 88
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->url:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->extra:Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->title:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->content:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->imgUrl:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->url:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->extra:Ljava/lang/String;

    .line 94
    const-class v0, Lio/rong/imlib/model/UserInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/UserInfo;

    invoke-virtual {p0, v0}, Lio/rong/message/RichContentMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "content"
    .parameter "imageUrl"

    .prologue
    .line 36
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->url:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->extra:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lio/rong/message/RichContentMessage;->title:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lio/rong/message/RichContentMessage;->content:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lio/rong/message/RichContentMessage;->imgUrl:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "content"
    .parameter "imageUrl"
    .parameter "url"

    .prologue
    .line 51
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->url:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lio/rong/message/RichContentMessage;->extra:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lio/rong/message/RichContentMessage;->title:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lio/rong/message/RichContentMessage;->content:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lio/rong/message/RichContentMessage;->imgUrl:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lio/rong/message/RichContentMessage;->url:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .parameter "data"

    .prologue
    .line 109
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 25
    const-string v3, ""

    iput-object v3, p0, Lio/rong/message/RichContentMessage;->url:Ljava/lang/String;

    .line 26
    const-string v3, ""

    iput-object v3, p0, Lio/rong/message/RichContentMessage;->extra:Ljava/lang/String;

    .line 111
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 115
    .local v2, jsonStr:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v3, "title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/message/RichContentMessage;->title:Ljava/lang/String;

    .line 117
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/message/RichContentMessage;->content:Ljava/lang/String;

    .line 118
    const-string v3, "imageUri"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/message/RichContentMessage;->imgUrl:Ljava/lang/String;

    .line 119
    const-string v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/message/RichContentMessage;->url:Ljava/lang/String;

    .line 120
    const-string v3, "extra"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/rong/message/RichContentMessage;->extra:Ljava/lang/String;

    .line 122
    const-string v3, "user"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    const-string v3, "user"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/message/RichContentMessage;->parseJsonToUserInfo(Lorg/json/JSONObject;)Lio/rong/imlib/model/UserInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/rong/message/RichContentMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "content"

    .prologue
    .line 212
    const-string v3, "\\[/u([0-9A-Fa-f]+)\\]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 213
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 215
    .local v0, matcher:Ljava/util/regex/Matcher;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 217
    .local v2, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/rong/message/RichContentMessage;->toExpressionChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 222
    const-string v3, "getExpression--"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/message/RichContentMessage;
    .locals 1
    .parameter "title"
    .parameter "content"
    .parameter "imageUrl"

    .prologue
    .line 67
    new-instance v0, Lio/rong/message/RichContentMessage;

    invoke-direct {v0, p0, p1, p2}, Lio/rong/message/RichContentMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/rong/message/RichContentMessage;
    .locals 1
    .parameter "title"
    .parameter "content"
    .parameter "imageUrl"
    .parameter "url"

    .prologue
    .line 80
    new-instance v0, Lio/rong/message/RichContentMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/rong/message/RichContentMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private toExpressionChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "expChar"

    .prologue
    .line 228
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 229
    .local v0, inthex:I
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .locals 4

    .prologue
    .line 139
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .local v1, jsonObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "title"

    invoke-virtual {p0}, Lio/rong/message/RichContentMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/rong/message/RichContentMessage;->getExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v2, "content"

    invoke-virtual {p0}, Lio/rong/message/RichContentMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lio/rong/message/RichContentMessage;->getExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v2, "imageUri"

    invoke-virtual {p0}, Lio/rong/message/RichContentMessage;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v2, "url"

    invoke-virtual {p0}, Lio/rong/message/RichContentMessage;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v2, "extra"

    invoke-virtual {p0}, Lio/rong/message/RichContentMessage;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    invoke-virtual {p0}, Lio/rong/message/RichContentMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 150
    const-string v2, "user"

    invoke-virtual {p0}, Lio/rong/message/RichContentMessage;->getJSONUserInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
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

    .line 163
    :goto_1
    return-object v2

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "JSONException"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 161
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 163
    const/4 v2, 0x0

    new-array v2, v2, [B

    goto :goto_1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lio/rong/message/RichContentMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lio/rong/message/RichContentMessage;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lio/rong/message/RichContentMessage;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lio/rong/message/RichContentMessage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lio/rong/message/RichContentMessage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 265
    iput-object p1, p0, Lio/rong/message/RichContentMessage;->content:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .parameter "extra"

    .prologue
    .line 319
    iput-object p1, p0, Lio/rong/message/RichContentMessage;->extra:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 283
    iput-object p1, p0, Lio/rong/message/RichContentMessage;->imgUrl:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 247
    iput-object p1, p0, Lio/rong/message/RichContentMessage;->title:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 301
    iput-object p1, p0, Lio/rong/message/RichContentMessage;->url:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 185
    iget-object v0, p0, Lio/rong/message/RichContentMessage;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lio/rong/message/RichContentMessage;->content:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lio/rong/message/RichContentMessage;->imgUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lio/rong/message/RichContentMessage;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lio/rong/message/RichContentMessage;->extra:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lio/rong/message/RichContentMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 191
    return-void
.end method
