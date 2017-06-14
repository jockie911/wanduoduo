.class public Lcom/wanduoduo/bean/InfoBean$DataBean;
.super Ljava/lang/Object;
.source "InfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/InfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;
    }
.end annotation


# instance fields
.field private age:Ljava/lang/String;

.field private ali_info:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private character_interest:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private city_id:Ljava/lang/String;

.field private coin:Ljava/lang/String;

.field private constellation:Ljava/lang/String;

.field private cover_pic:Ljava/lang/String;

.field private food_interest:Ljava/lang/String;

.field private gender:I

.field private height:I

.field private id:Ljava/lang/String;

.field private idcard_ok:Ljava/lang/String;

.field private idcard_pic:Ljava/lang/String;

.field private identify_ok:Ljava/lang/String;

.field private is_hide:Ljava/lang/String;

.field private is_new:Z

.field private is_password:I

.field private is_pro:Ljava/lang/String;

.field private is_system:Ljava/lang/String;

.field private is_vip:I

.field private loveinfo:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private money:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private pic_wall:Ljava/lang/String;

.field private place_interest:Ljava/lang/String;

.field private profession:Ljava/lang/String;

.field private qa_list:Ljava/lang/String;

.field private rctoken:Ljava/lang/String;

.field private realname:Ljava/lang/String;

.field private relation_status:I

.field private salary:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private sports_interest:Ljava/lang/String;

.field private star_interest:Ljava/lang/String;

.field private ticket_num:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private user_item:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private username:Ljava/lang/String;

.field private video:Ljava/lang/String;

.field private video_back:Ljava/lang/String;

.field private vip_level:Ljava/lang/String;

.field private vip_time:Ljava/lang/String;

.field private wx_openid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getAli_info()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->ali_info:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacter_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->character_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->city_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCoin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->coin:Ljava/lang/String;

    return-object v0
.end method

.method public getConstellation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->constellation:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->cover_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getFood_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->food_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->gender:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIdcard_ok()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->idcard_ok:Ljava/lang/String;

    return-object v0
.end method

.method public getIdcard_pic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->idcard_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentify_ok()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->identify_ok:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_hide()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->is_hide:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_password()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->is_password:I

    return v0
.end method

.method public getIs_pro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->is_pro:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_system()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->is_system:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_vip()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->is_vip:I

    return v0
.end method

.method public getLoveinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->loveinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getMoney()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->money:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_wall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->pic_wall:Ljava/lang/String;

    return-object v0
.end method

.method public getPlace_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->place_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getProfession()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->profession:Ljava/lang/String;

    return-object v0
.end method

.method public getQa_list()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->qa_list:Ljava/lang/String;

    return-object v0
.end method

.method public getRctoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->rctoken:Ljava/lang/String;

    return-object v0
.end method

.method public getRealname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->realname:Ljava/lang/String;

    return-object v0
.end method

.method public getRelation_status()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->relation_status:I

    return v0
.end method

.method public getSalary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->salary:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getSports_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->sports_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getStar_interest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->star_interest:Ljava/lang/String;

    return-object v0
.end method

.method public getTicket_num()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->ticket_num:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_item()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->user_item:Ljava/util/List;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->video:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_back()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->video_back:Ljava/lang/String;

    return-object v0
.end method

.method public getVip_level()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->vip_level:Ljava/lang/String;

    return-object v0
.end method

.method public getVip_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->vip_time:Ljava/lang/String;

    return-object v0
.end method

.method public getWx_openid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->wx_openid:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_new()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->is_new:Z

    return v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->age:Ljava/lang/String;

    .line 485
    return-void
.end method

.method public setAli_info(Ljava/lang/String;)V
    .locals 0
    .parameter "ali_info"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->ali_info:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter "avatar"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->avatar:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->birthday:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setCharacter_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "character_interest"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->character_interest:Ljava/lang/String;

    .line 421
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->city:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setCity_id(Ljava/lang/String;)V
    .locals 0
    .parameter "city_id"

    .prologue
    .line 348
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->city_id:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setCoin(Ljava/lang/String;)V
    .locals 0
    .parameter "coin"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->coin:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setConstellation(Ljava/lang/String;)V
    .locals 0
    .parameter "constellation"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->constellation:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public setCover_pic(Ljava/lang/String;)V
    .locals 0
    .parameter "cover_pic"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->cover_pic:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public setFood_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "food_interest"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->food_interest:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 324
    iput p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->gender:I

    .line 325
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 300
    iput p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->height:I

    .line 301
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->id:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setIdcard_ok(Ljava/lang/String;)V
    .locals 0
    .parameter "idcard_ok"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->idcard_ok:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public setIdcard_pic(Ljava/lang/String;)V
    .locals 0
    .parameter "idcard_pic"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->idcard_pic:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public setIdentify_ok(Ljava/lang/String;)V
    .locals 0
    .parameter "identify_ok"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->identify_ok:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public setIs_hide(Ljava/lang/String;)V
    .locals 0
    .parameter "is_hide"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->is_hide:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setIs_new(Z)V
    .locals 0
    .parameter "is_new"

    .prologue
    .line 508
    iput-boolean p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->is_new:Z

    .line 509
    return-void
.end method

.method public setIs_password(I)V
    .locals 0
    .parameter "is_password"

    .prologue
    .line 524
    iput p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->is_password:I

    .line 525
    return-void
.end method

.method public setIs_pro(Ljava/lang/String;)V
    .locals 0
    .parameter "is_pro"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->is_pro:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setIs_system(Ljava/lang/String;)V
    .locals 0
    .parameter "is_system"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->is_system:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setIs_vip(I)V
    .locals 0
    .parameter "is_vip"

    .prologue
    .line 492
    iput p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->is_vip:I

    .line 493
    return-void
.end method

.method public setLoveinfo(Ljava/lang/String;)V
    .locals 0
    .parameter "loveinfo"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->loveinfo:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->mobile:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setMoney(Ljava/lang/String;)V
    .locals 0
    .parameter "money"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->money:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->nickname:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setPic_wall(Ljava/lang/String;)V
    .locals 0
    .parameter "pic_wall"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->pic_wall:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public setPlace_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "place_interest"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->place_interest:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setProfession(Ljava/lang/String;)V
    .locals 0
    .parameter "profession"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->profession:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setQa_list(Ljava/lang/String;)V
    .locals 0
    .parameter "qa_list"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->qa_list:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setRctoken(Ljava/lang/String;)V
    .locals 0
    .parameter "rctoken"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->rctoken:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public setRealname(Ljava/lang/String;)V
    .locals 0
    .parameter "realname"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->realname:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setRelation_status(I)V
    .locals 0
    .parameter "relation_status"

    .prologue
    .line 110
    iput p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->relation_status:I

    .line 111
    return-void
.end method

.method public setSalary(Ljava/lang/String;)V
    .locals 0
    .parameter "salary"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->salary:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .parameter "sign"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->sign:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setSports_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "sports_interest"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->sports_interest:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setStar_interest(Ljava/lang/String;)V
    .locals 0
    .parameter "star_interest"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->star_interest:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setTicket_num(Ljava/lang/String;)V
    .locals 0
    .parameter "ticket_num"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->ticket_num:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 500
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->token:Ljava/lang/String;

    .line 501
    return-void
.end method

.method public setUser_item(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, user_item:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->user_item:Ljava/util/List;

    .line 103
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 260
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->username:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setVideo(Ljava/lang/String;)V
    .locals 0
    .parameter "video"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->video:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setVideo_back(Ljava/lang/String;)V
    .locals 0
    .parameter "video_back"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->video_back:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setVip_level(Ljava/lang/String;)V
    .locals 0
    .parameter "vip_level"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->vip_level:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setVip_time(Ljava/lang/String;)V
    .locals 0
    .parameter "vip_time"

    .prologue
    .line 460
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->vip_time:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setWx_openid(Ljava/lang/String;)V
    .locals 0
    .parameter "wx_openid"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean;->wx_openid:Ljava/lang/String;

    .line 269
    return-void
.end method
