.class public Lio/rong/message/CSHandShakeMessage;
.super Lio/rong/imlib/model/MessageContent;
.source "CSHandShakeMessage.java"


# annotations
.annotation runtime Lio/rong/imlib/MessageTag;
    flag = 0x0
    value = "RC:CsHs"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lio/rong/message/CSHandShakeMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lio/rong/message/CSHandShakeMessage$1;

    invoke-direct {v0}, Lio/rong/message/CSHandShakeMessage$1;-><init>()V

    sput-object v0, Lio/rong/message/CSHandShakeMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 52
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 53
    const-class v0, Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->readFromParcel(Landroid/os/Parcel;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/CSCustomServiceInfo;

    iput-object v0, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    .line 54
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 40
    invoke-direct {p0}, Lio/rong/imlib/model/MessageContent;-><init>()V

    .line 42
    return-void
.end method

.method public static obtain()Lio/rong/message/CSHandShakeMessage;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lio/rong/message/CSHandShakeMessage;

    invoke-direct {v0}, Lio/rong/message/CSHandShakeMessage;-><init>()V

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
    .locals 12

    .prologue
    .line 85
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v4, jsonObj:Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v6, jsonObj_UserInfo:Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 88
    .local v5, jsonObj_ContactInfo:Lorg/json/JSONObject;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v7, jsonObj_requestInfo:Lorg/json/JSONObject;
    :try_start_0
    const-string v10, "userId"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v10, "nickName"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getNickName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v10, "loginName"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getLoginName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v10, "name"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v10, "grade"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getGrade()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v10, "gender"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getGender()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v10, "birthday"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getBirthday()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v10, "age"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getAge()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v10, "profession"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getProfession()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v10, "portraitUrl"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getPortraitUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v10, "province"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getProvince()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v10, "city"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getCity()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v10, "memo"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getMemo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v10, "userInfo"

    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v10, "mobileNo"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getMobileNo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v10, "email"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getEmail()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v10, "address"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v10, "QQ"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getQQ()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v10, "weibo"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getWeibo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v10, "weixin"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getWeixin()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v10, "contactInfo"

    invoke-virtual {v4, v10, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v10, "page"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getPage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v10, "referrer"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getReferrer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v10, "enterUrl"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getEnterUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v10, "skillId"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getSkillId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 123
    .local v3, jsonListUrl:Lorg/json/JSONArray;
    iget-object v10, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v10}, Lio/rong/imlib/model/CSCustomServiceInfo;->getListUrl()Ljava/util/List;

    move-result-object v8

    .line 124
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, i:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 128
    .local v9, u:Ljava/lang/String;
    invoke-virtual {v3, v1, v9}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    goto :goto_0

    .line 132
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v9           #u:Ljava/lang/String;
    :cond_0
    const-string v10, "listUrl"

    invoke-virtual {v7, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v10, "define"

    iget-object v11, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-virtual {v11}, Lio/rong/imlib/model/CSCustomServiceInfo;->getDefine()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v10, "requestInfo"

    invoke-virtual {v4, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    .end local v3           #jsonListUrl:Lorg/json/JSONArray;
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 144
    :goto_2
    return-object v10

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 144
    const/4 v10, 0x0

    new-array v10, v10, [B

    goto :goto_2

    .line 136
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method public setCustomInfo(Lio/rong/imlib/model/CSCustomServiceInfo;)V
    .locals 0
    .parameter "customInfo"

    .prologue
    .line 37
    iput-object p1, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 74
    iget-object v0, p0, Lio/rong/message/CSHandShakeMessage;->customServiceInfo:Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-static {p1, v0}, Lio/rong/common/ParcelUtils;->writeToParcel(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 75
    return-void
.end method
