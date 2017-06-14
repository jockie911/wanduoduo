.class public Lcom/wanduoduo/bean/InfoReceiveGiftBean;
.super Ljava/lang/Object;
.source "InfoReceiveGiftBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;

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
.method public getData()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean;->data:Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean;->errCode:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean;->requestTime:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean;->data:Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;

    .line 23
    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 30
    iput p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean;->errCode:I

    .line 31
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean;->errMsg:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setRequestTime(Ljava/lang/String;)V
    .locals 0
    .parameter "requestTime"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean;->requestTime:Ljava/lang/String;

    .line 47
    return-void
.end method
