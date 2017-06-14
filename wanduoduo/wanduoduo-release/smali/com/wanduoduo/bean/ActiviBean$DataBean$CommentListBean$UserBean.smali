.class public Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;
.super Ljava/lang/Object;
.source "ActiviBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserBean"
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private city_id:Ljava/lang/String;

.field private gender:I

.field private id:Ljava/lang/String;

.field private is_pro:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private realname:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private tags:Ljava/lang/String;

.field private vip_level:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->city_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->gender:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_pro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->is_pro:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRealname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->realname:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getVip_level()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->vip_level:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter "avatar"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->avatar:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 0
    .parameter "birthday"

    .prologue
    .line 595
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->birthday:Ljava/lang/String;

    .line 596
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->city:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public setCity_id(Ljava/lang/String;)V
    .locals 0
    .parameter "city_id"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->city_id:Ljava/lang/String;

    .line 572
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 547
    iput p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->gender:I

    .line 548
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->id:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public setIs_pro(Ljava/lang/String;)V
    .locals 0
    .parameter "is_pro"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->is_pro:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->mobile:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->nickname:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public setRealname(Ljava/lang/String;)V
    .locals 0
    .parameter "realname"

    .prologue
    .line 539
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->realname:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0
    .parameter "sign"

    .prologue
    .line 579
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->sign:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0
    .parameter "tags"

    .prologue
    .line 587
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->tags:Ljava/lang/String;

    .line 588
    return-void
.end method

.method public setVip_level(Ljava/lang/String;)V
    .locals 0
    .parameter "vip_level"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean$UserBean;->vip_level:Ljava/lang/String;

    .line 604
    return-void
.end method
