.class public Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;
.super Ljava/lang/Object;
.source "InfoBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;
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
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->charm:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public setCharm(Ljava/lang/String;)V
    .locals 0
    .parameter "charm"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->charm:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->id:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->name:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->pic:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->price:Ljava/lang/String;

    .line 195
    return-void
.end method
