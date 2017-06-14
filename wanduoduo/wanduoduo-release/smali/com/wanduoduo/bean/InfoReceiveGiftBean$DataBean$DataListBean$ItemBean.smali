.class public Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;
.super Ljava/lang/Object;
.source "InfoReceiveGiftBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemBean"
.end annotation


# instance fields
.field private charm:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private price:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->charm:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public setCharm(Ljava/lang/String;)V
    .locals 0
    .parameter "charm"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->charm:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->id:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->name:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->pic:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->price:Ljava/lang/String;

    .line 175
    return-void
.end method
