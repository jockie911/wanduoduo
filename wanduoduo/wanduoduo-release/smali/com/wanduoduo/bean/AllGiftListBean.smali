.class public Lcom/wanduoduo/bean/AllGiftListBean;
.super Ljava/lang/Object;
.source "AllGiftListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/AllGiftListBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/wanduoduo/bean/AllGiftListBean$DataBean;

.field private errCode:I

.field private errMsg:Ljava/lang/String;

.field private requestTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/wanduoduo/bean/AllGiftListBean$DataBean;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/wanduoduo/bean/AllGiftListBean;->data:Lcom/wanduoduo/bean/AllGiftListBean$DataBean;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/wanduoduo/bean/AllGiftListBean;->errCode:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wanduoduo/bean/AllGiftListBean;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wanduoduo/bean/AllGiftListBean;->requestTime:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/wanduoduo/bean/AllGiftListBean$DataBean;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/wanduoduo/bean/AllGiftListBean;->data:Lcom/wanduoduo/bean/AllGiftListBean$DataBean;

    .line 21
    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 28
    iput p1, p0, Lcom/wanduoduo/bean/AllGiftListBean;->errCode:I

    .line 29
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/wanduoduo/bean/AllGiftListBean;->errMsg:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setRequestTime(Ljava/lang/String;)V
    .locals 0
    .parameter "requestTime"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/wanduoduo/bean/AllGiftListBean;->requestTime:Ljava/lang/String;

    .line 45
    return-void
.end method
