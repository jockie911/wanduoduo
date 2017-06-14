.class public Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;
.super Ljava/lang/Object;
.source "CouponsBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/CouponsBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListBean"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private outdate_time:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private tag_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getOutdate_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->outdate_time:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->tag_name:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->code:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setOutdate_time(Ljava/lang/String;)V
    .locals 0
    .parameter "outdate_time"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->outdate_time:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->price:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setTag_name(Ljava/lang/String;)V
    .locals 0
    .parameter "tag_name"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->tag_name:Ljava/lang/String;

    .line 125
    return-void
.end method
