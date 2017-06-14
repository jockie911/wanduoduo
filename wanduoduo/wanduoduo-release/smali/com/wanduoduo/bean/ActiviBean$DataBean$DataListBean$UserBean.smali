.class public Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;
.super Ljava/lang/Object;
.source "ActiviBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserBean"
.end annotation


# instance fields
.field private age:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private gender:I

.field private id:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private relation_status:I

.field private vip_level:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->gender:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRelation_status()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->relation_status:I

    return v0
.end method

.method public getVip_level()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->vip_level:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->age:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter "avatar"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->avatar:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 289
    iput p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->gender:I

    .line 290
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->id:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->nickname:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setRelation_status(I)V
    .locals 0
    .parameter "relation_status"

    .prologue
    .line 305
    iput p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->relation_status:I

    .line 306
    return-void
.end method

.method public setVip_level(Ljava/lang/String;)V
    .locals 0
    .parameter "vip_level"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->vip_level:Ljava/lang/String;

    .line 298
    return-void
.end method
