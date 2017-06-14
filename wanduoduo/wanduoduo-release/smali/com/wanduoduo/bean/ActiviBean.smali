.class public Lcom/wanduoduo/bean/ActiviBean;
.super Ljava/lang/Object;
.source "ActiviBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/ActiviBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/wanduoduo/bean/ActiviBean$DataBean;

.field private errCode:I

.field private errMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/wanduoduo/bean/ActiviBean$DataBean;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean;->data:Lcom/wanduoduo/bean/ActiviBean$DataBean;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/wanduoduo/bean/ActiviBean;->errCode:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/wanduoduo/bean/ActiviBean$DataBean;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean;->data:Lcom/wanduoduo/bean/ActiviBean$DataBean;

    .line 20
    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 27
    iput p1, p0, Lcom/wanduoduo/bean/ActiviBean;->errCode:I

    .line 28
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean;->errMsg:Ljava/lang/String;

    .line 36
    return-void
.end method
