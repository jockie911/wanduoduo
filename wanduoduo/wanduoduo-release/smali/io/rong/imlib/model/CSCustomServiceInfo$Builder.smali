.class public Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
.super Ljava/lang/Object;
.source "CSCustomServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/model/CSCustomServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private QQ:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private age:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private define:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private enterUrl:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private grade:Ljava/lang/String;

.field private listUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loginName:Ljava/lang/String;

.field private memo:Ljava/lang/String;

.field private mobileNo:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private page:Ljava/lang/String;

.field private portraitUrl:Ljava/lang/String;

.field private profession:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private referrer:Ljava/lang/String;

.field private skillId:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private weibo:Ljava/lang/String;

.field private weixin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->page:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->referrer:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->enterUrl:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->skillId:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->listUrl:Ljava/util/List;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->define:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public QQ(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "QQ"

    .prologue
    .line 376
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->QQ:Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method public address(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "address"

    .prologue
    .line 365
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->address:Ljava/lang/String;

    .line 366
    return-object p0
.end method

.method public age(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "age"

    .prologue
    .line 321
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->age:Ljava/lang/String;

    .line 322
    return-object p0
.end method

.method public birthday(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "birthday"

    .prologue
    .line 310
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->birthday:Ljava/lang/String;

    .line 311
    return-object p0
.end method

.method public build()Lio/rong/imlib/model/CSCustomServiceInfo;
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    if-nez v1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 97
    :cond_0
    new-instance v0, Lio/rong/imlib/model/CSCustomServiceInfo;

    invoke-direct {v0}, Lio/rong/imlib/model/CSCustomServiceInfo;-><init>()V

    .line 98
    .local v0, message:Lio/rong/imlib/model/CSCustomServiceInfo;
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->userId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->userId:Ljava/lang/String;

    :goto_1
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->userId:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$002(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->nickName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->nickName:Ljava/lang/String;

    :goto_2
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->nickName:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$102(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->loginName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->loginName:Ljava/lang/String;

    :goto_3
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->loginName:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$202(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->name:Ljava/lang/String;

    :goto_4
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$302(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->grade:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->grade:Ljava/lang/String;

    :goto_5
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->grade:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$402(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->gender:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->gender:Ljava/lang/String;

    :goto_6
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->gender:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$502(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->birthday:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->birthday:Ljava/lang/String;

    :goto_7
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->birthday:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$602(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->age:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->age:Ljava/lang/String;

    :goto_8
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->age:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$702(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->profession:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->profession:Ljava/lang/String;

    :goto_9
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->profession:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$802(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->portraitUrl:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->portraitUrl:Ljava/lang/String;

    :goto_a
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->portraitUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$902(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->province:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->province:Ljava/lang/String;

    :goto_b
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->province:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$1002(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->city:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->city:Ljava/lang/String;

    :goto_c
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->city:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$1102(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->memo:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->memo:Ljava/lang/String;

    :goto_d
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->memo:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$1202(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->mobileNo:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->mobileNo:Ljava/lang/String;

    :goto_e
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->mobileNo:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$1302(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->email:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->email:Ljava/lang/String;

    :goto_f
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->email:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$1402(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->address:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->address:Ljava/lang/String;

    :goto_10
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->address:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$1502(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->QQ:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->QQ:Ljava/lang/String;

    :goto_11
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->QQ:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$1602(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->weibo:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->weibo:Ljava/lang/String;

    :goto_12
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->weibo:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$1702(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->weixin:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->weixin:Ljava/lang/String;

    :goto_13
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->weixin:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$1802(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->page:Ljava/lang/String;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->page:Ljava/lang/String;

    :goto_14
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->page:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$1902(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->referrer:Ljava/lang/String;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->referrer:Ljava/lang/String;

    :goto_15
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->referrer:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$2002(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->enterUrl:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->enterUrl:Ljava/lang/String;

    :goto_16
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->enterUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$2102(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->skillId:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->skillId:Ljava/lang/String;

    :goto_17
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->skillId:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$2202(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->listUrl:Ljava/util/List;

    iput-object v1, v0, Lio/rong/imlib/model/CSCustomServiceInfo;->listUrl:Ljava/util/List;

    .line 125
    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->define:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->define:Ljava/lang/String;

    :goto_18
    #setter for: Lio/rong/imlib/model/CSCustomServiceInfo;->define:Ljava/lang/String;
    invoke-static {v0, v1}, Lio/rong/imlib/model/CSCustomServiceInfo;->access$2302(Lio/rong/imlib/model/CSCustomServiceInfo;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 98
    :cond_1
    const-string v1, ""

    goto/16 :goto_1

    .line 99
    :cond_2
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 100
    :cond_3
    const-string v1, ""

    goto/16 :goto_3

    .line 101
    :cond_4
    const-string v1, ""

    goto/16 :goto_4

    .line 102
    :cond_5
    const-string v1, ""

    goto/16 :goto_5

    .line 103
    :cond_6
    const-string v1, ""

    goto/16 :goto_6

    .line 104
    :cond_7
    const-string v1, ""

    goto/16 :goto_7

    .line 105
    :cond_8
    const-string v1, ""

    goto/16 :goto_8

    .line 107
    :cond_9
    const-string v1, ""

    goto/16 :goto_9

    .line 108
    :cond_a
    const-string v1, ""

    goto/16 :goto_a

    .line 109
    :cond_b
    const-string v1, ""

    goto/16 :goto_b

    .line 110
    :cond_c
    const-string v1, ""

    goto/16 :goto_c

    .line 111
    :cond_d
    const-string v1, ""

    goto/16 :goto_d

    .line 113
    :cond_e
    const-string v1, ""

    goto/16 :goto_e

    .line 114
    :cond_f
    const-string v1, ""

    goto/16 :goto_f

    .line 115
    :cond_10
    const-string v1, ""

    goto/16 :goto_10

    .line 116
    :cond_11
    const-string v1, ""

    goto/16 :goto_11

    .line 117
    :cond_12
    const-string v1, ""

    goto/16 :goto_12

    .line 118
    :cond_13
    const-string v1, ""

    goto/16 :goto_13

    .line 120
    :cond_14
    const-string v1, ""

    goto/16 :goto_14

    .line 121
    :cond_15
    const-string v1, ""

    goto :goto_15

    .line 122
    :cond_16
    const-string v1, ""

    goto :goto_16

    .line 123
    :cond_17
    const-string v1, ""

    goto :goto_17

    .line 125
    :cond_18
    const-string v1, ""

    goto :goto_18
.end method

.method public city(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "city"

    .prologue
    .line 244
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->city:Ljava/lang/String;

    .line 245
    return-object p0
.end method

.method public define(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "define"

    .prologue
    .line 299
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->define:Ljava/lang/String;

    .line 300
    return-object p0
.end method

.method public email(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "email"

    .prologue
    .line 354
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->email:Ljava/lang/String;

    .line 355
    return-object p0
.end method

.method public enterUrl(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "enterUrl"

    .prologue
    .line 266
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->enterUrl:Ljava/lang/String;

    .line 267
    return-object p0
.end method

.method public gender(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 1
    .parameter "gender"

    .prologue
    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->gender:Ljava/lang/String;

    .line 162
    :cond_0
    return-object p0
.end method

.method public grade(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 1
    .parameter "grade"

    .prologue
    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->grade:Ljava/lang/String;

    .line 210
    :cond_0
    return-object p0
.end method

.method public listUrl(Ljava/util/List;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/rong/imlib/model/CSCustomServiceInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, listUrl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 410
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 411
    .local v1, u:Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->listUrl:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #u:Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public loginName(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "loginName"

    .prologue
    .line 288
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->loginName:Ljava/lang/String;

    .line 289
    return-object p0
.end method

.method public memo(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 1
    .parameter "memo"

    .prologue
    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->memo:Ljava/lang/String;

    .line 186
    :cond_0
    return-object p0
.end method

.method public mobileNo(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 1
    .parameter "mobileNo"

    .prologue
    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->mobileNo:Ljava/lang/String;

    .line 174
    :cond_0
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 1
    .parameter "name"

    .prologue
    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->name:Ljava/lang/String;

    .line 198
    :cond_0
    return-object p0
.end method

.method public nickName(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 1
    .parameter "nickName"

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->nickName:Ljava/lang/String;

    .line 150
    :cond_0
    return-object p0
.end method

.method public page(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 1
    .parameter "page"

    .prologue
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->page:Ljava/lang/String;

    .line 138
    :cond_0
    return-object p0
.end method

.method public portraitUrl(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "portraitUrl"

    .prologue
    .line 343
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->portraitUrl:Ljava/lang/String;

    .line 344
    return-object p0
.end method

.method public profession(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "profession"

    .prologue
    .line 332
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->profession:Ljava/lang/String;

    .line 333
    return-object p0
.end method

.method public province(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "province"

    .prologue
    .line 277
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->province:Ljava/lang/String;

    .line 278
    return-object p0
.end method

.method public referrer(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "referrer"

    .prologue
    .line 255
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->referrer:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public skillId(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 1
    .parameter "skillId"

    .prologue
    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->skillId:Ljava/lang/String;

    .line 222
    :cond_0
    return-object p0
.end method

.method public userId(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 1
    .parameter "userId"

    .prologue
    .line 232
    iget-object v0, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->skillId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->userId:Ljava/lang/String;

    .line 234
    :cond_0
    return-object p0
.end method

.method public weibo(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "weibo"

    .prologue
    .line 387
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->weibo:Ljava/lang/String;

    .line 388
    return-object p0
.end method

.method public weixin(Ljava/lang/String;)Lio/rong/imlib/model/CSCustomServiceInfo$Builder;
    .locals 0
    .parameter "weixin"

    .prologue
    .line 398
    iput-object p1, p0, Lio/rong/imlib/model/CSCustomServiceInfo$Builder;->weixin:Ljava/lang/String;

    .line 399
    return-object p0
.end method
