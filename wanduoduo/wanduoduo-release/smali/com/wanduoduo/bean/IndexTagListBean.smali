.class public Lcom/wanduoduo/bean/IndexTagListBean;
.super Ljava/lang/Object;
.source "IndexTagListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/IndexTagListBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/wanduoduo/bean/IndexTagListBean$DataBean;

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
.method public getData()Lcom/wanduoduo/bean/IndexTagListBean$DataBean;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean;->data:Lcom/wanduoduo/bean/IndexTagListBean$DataBean;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/wanduoduo/bean/IndexTagListBean;->errCode:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean;->requestTime:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/wanduoduo/bean/IndexTagListBean$DataBean;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean;->data:Lcom/wanduoduo/bean/IndexTagListBean$DataBean;

    .line 22
    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 29
    iput p1, p0, Lcom/wanduoduo/bean/IndexTagListBean;->errCode:I

    .line 30
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean;->errMsg:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setRequestTime(Ljava/lang/String;)V
    .locals 0
    .parameter "requestTime"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean;->requestTime:Ljava/lang/String;

    .line 46
    return-void
.end method
