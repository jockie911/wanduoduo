.class public Lcom/wanduoduo/bean/CitySelectBean;
.super Ljava/lang/Object;
.source "CitySelectBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/CitySelectBean$DataBean;
    }
.end annotation


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CitySelectBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

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
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CitySelectBean$DataBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getErrCode()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/wanduoduo/bean/CitySelectBean;->errCode:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wanduoduo/bean/CitySelectBean;->requestTime:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CitySelectBean$DataBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, data:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CitySelectBean$DataBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean;->data:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .parameter "errCode"

    .prologue
    .line 19
    iput p1, p0, Lcom/wanduoduo/bean/CitySelectBean;->errCode:I

    .line 20
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean;->errMsg:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setRequestTime(Ljava/lang/String;)V
    .locals 0
    .parameter "requestTime"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/wanduoduo/bean/CitySelectBean;->requestTime:Ljava/lang/String;

    .line 36
    return-void
.end method
