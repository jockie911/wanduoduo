.class public Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;
.super Ljava/lang/Object;
.source "InfoReceiveGiftBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromUserBean"
.end annotation


# instance fields
.field private age:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private gender:I

.field private id:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->age:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->gender:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->age:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter "avatar"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->avatar:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setGender(I)V
    .locals 0
    .parameter "gender"

    .prologue
    .line 231
    iput p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->gender:I

    .line 232
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->id:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->nickname:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->username:Ljava/lang/String;

    .line 224
    return-void
.end method
