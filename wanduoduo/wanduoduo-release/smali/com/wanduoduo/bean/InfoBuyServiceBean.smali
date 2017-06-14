.class public Lcom/wanduoduo/bean/InfoBuyServiceBean;
.super Ljava/lang/Object;
.source "InfoBuyServiceBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean;

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
.method public getData()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean;->data:Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean;->errCode:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean;->requestTime:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean;->data:Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean;

    .line 24
    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 31
    iput p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean;->errCode:I

    .line 32
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean;->errMsg:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setRequestTime(Ljava/lang/String;)V
    .locals 0
    .parameter "requestTime"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean;->requestTime:Ljava/lang/String;

    .line 48
    return-void
.end method
