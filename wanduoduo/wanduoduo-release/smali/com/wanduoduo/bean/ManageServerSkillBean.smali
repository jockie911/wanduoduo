.class public Lcom/wanduoduo/bean/ManageServerSkillBean;
.super Ljava/lang/Object;
.source "ManageServerSkillBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean;

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
.method public getData()Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean;->data:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean;->errCode:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wanduoduo/bean/ManageServerSkillBean;->requestTime:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean;->data:Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean;

    .line 27
    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 34
    iput p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean;->errCode:I

    .line 35
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean;->errMsg:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setRequestTime(Ljava/lang/String;)V
    .locals 0
    .parameter "requestTime"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/wanduoduo/bean/ManageServerSkillBean;->requestTime:Ljava/lang/String;

    .line 51
    return-void
.end method
