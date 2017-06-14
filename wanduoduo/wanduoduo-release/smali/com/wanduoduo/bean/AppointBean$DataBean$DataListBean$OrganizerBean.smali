.class public Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;
.super Ljava/lang/Object;
.source "AppointBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrganizerBean"
.end annotation


# instance fields
.field private age:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private gender:I

.field private id:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private vip_level:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->gender:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getVip_level()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->vip_level:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->age:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter "avatar"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->avatar:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 288
    iput p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->gender:I

    .line 289
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->id:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->nickname:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setVip_level(Ljava/lang/String;)V
    .locals 0
    .parameter "vip_level"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean$OrganizerBean;->vip_level:Ljava/lang/String;

    .line 305
    return-void
.end method
