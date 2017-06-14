.class public Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;
.super Ljava/lang/Object;
.source "AllGiftListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/AllGiftListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListBean"
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
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->charm:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public setCharm(Ljava/lang/String;)V
    .locals 0
    .parameter "charm"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->charm:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->id:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->name:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .parameter "pic"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->pic:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;->price:Ljava/lang/String;

    .line 96
    return-void
.end method
