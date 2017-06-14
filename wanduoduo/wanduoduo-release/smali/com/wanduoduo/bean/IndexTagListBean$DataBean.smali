.class public Lcom/wanduoduo/bean/IndexTagListBean$DataBean;
.super Ljava/lang/Object;
.source "IndexTagListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/IndexTagListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/IndexTagListBean$DataBean$HotListBean;,
        Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;
    }
.end annotation


# instance fields
.field private data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field

.field private hot_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$HotListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean;->data_list:Ljava/util/List;

    return-object v0
.end method

.method public getHot_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$HotListBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean;->hot_list:Ljava/util/List;

    return-object v0
.end method

.method public setData_list(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean;->data_list:Ljava/util/List;

    .line 60
    return-void
.end method

.method public setHot_list(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$HotListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, hot_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/IndexTagListBean$DataBean$HotListBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean;->hot_list:Ljava/util/List;

    .line 68
    return-void
.end method
