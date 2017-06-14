.class public Lcom/wanduoduo/bean/CouponsBean;
.super Ljava/lang/Object;
.source "CouponsBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/CouponsBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/wanduoduo/bean/CouponsBean$DataBean;

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
.method public getData()Lcom/wanduoduo/bean/CouponsBean$DataBean;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wanduoduo/bean/CouponsBean;->data:Lcom/wanduoduo/bean/CouponsBean$DataBean;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/wanduoduo/bean/CouponsBean;->errCode:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wanduoduo/bean/CouponsBean;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wanduoduo/bean/CouponsBean;->requestTime:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/wanduoduo/bean/CouponsBean$DataBean;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/wanduoduo/bean/CouponsBean;->data:Lcom/wanduoduo/bean/CouponsBean$DataBean;

    .line 33
    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 40
    iput p1, p0, Lcom/wanduoduo/bean/CouponsBean;->errCode:I

    .line 41
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/wanduoduo/bean/CouponsBean;->errMsg:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setRequestTime(Ljava/lang/String;)V
    .locals 0
    .parameter "requestTime"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/wanduoduo/bean/CouponsBean;->requestTime:Ljava/lang/String;

    .line 57
    return-void
.end method
