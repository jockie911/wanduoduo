.class public Lcom/wanduoduo/bean/IndexGiftListBean;
.super Ljava/lang/Object;
.source "IndexGiftListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/IndexGiftListBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean;

.field private errCode:I

.field private errMsg:Ljava/lang/String;

.field private requestTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean;->data:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean;->errCode:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexGiftListBean;->requestTime:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/wanduoduo/bean/IndexGiftListBean$DataBean;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean;->data:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean;

    .line 25
    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 32
    iput p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean;->errCode:I

    .line 33
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean;->errMsg:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setRequestTime(Ljava/lang/String;)V
    .locals 0
    .parameter "requestTime"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexGiftListBean;->requestTime:Ljava/lang/String;

    .line 49
    return-void
.end method
