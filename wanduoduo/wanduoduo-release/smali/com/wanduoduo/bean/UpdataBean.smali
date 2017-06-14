.class public Lcom/wanduoduo/bean/UpdataBean;
.super Ljava/lang/Object;
.source "UpdataBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/UpdataBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/wanduoduo/bean/UpdataBean$DataBean;

.field private errCode:I

.field private errMsg:Ljava/lang/String;

.field private requestTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/wanduoduo/bean/UpdataBean$DataBean;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wanduoduo/bean/UpdataBean;->data:Lcom/wanduoduo/bean/UpdataBean$DataBean;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/wanduoduo/bean/UpdataBean;->errCode:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wanduoduo/bean/UpdataBean;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wanduoduo/bean/UpdataBean;->requestTime:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/wanduoduo/bean/UpdataBean$DataBean;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/wanduoduo/bean/UpdataBean;->data:Lcom/wanduoduo/bean/UpdataBean$DataBean;

    .line 19
    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 26
    iput p1, p0, Lcom/wanduoduo/bean/UpdataBean;->errCode:I

    .line 27
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/wanduoduo/bean/UpdataBean;->errMsg:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setRequestTime(Ljava/lang/String;)V
    .locals 0
    .parameter "requestTime"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/wanduoduo/bean/UpdataBean;->requestTime:Ljava/lang/String;

    .line 43
    return-void
.end method
