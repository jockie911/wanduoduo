.class public Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;
.super Ljava/lang/Object;
.source "InfoReceiveGiftBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;,
        Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;
    }
.end annotation


# instance fields
.field private from_user:Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;

.field private item:Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;

.field private num:Ljava/lang/String;

.field private send_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrom_user()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->from_user:Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;

    return-object v0
.end method

.method public getItem()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->item:Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;

    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->num:Ljava/lang/String;

    return-object v0
.end method

.method public getSend_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->send_time:Ljava/lang/String;

    return-object v0
.end method

.method public setFrom_user(Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;)V
    .locals 0
    .parameter "from_user"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->from_user:Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;

    .line 128
    return-void
.end method

.method public setItem(Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->item:Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;

    .line 120
    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0
    .parameter "num"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->num:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setSend_time(Ljava/lang/String;)V
    .locals 0
    .parameter "send_time"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->send_time:Ljava/lang/String;

    .line 136
    return-void
.end method
