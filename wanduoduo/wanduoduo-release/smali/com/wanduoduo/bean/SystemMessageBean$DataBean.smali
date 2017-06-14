.class public Lcom/wanduoduo/bean/SystemMessageBean$DataBean;
.super Ljava/lang/Object;
.source "SystemMessageBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/SystemMessageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;
    }
.end annotation


# instance fields
.field private current_page:I

.field private data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field

.field private total_page:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent_page()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean;->current_page:I

    return v0
.end method

.method public getData_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean;->data_list:Ljava/util/List;

    return-object v0
.end method

.method public getTotal_page()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean;->total_page:I

    return v0
.end method

.method public setCurrent_page(I)V
    .locals 0
    .parameter "current_page"

    .prologue
    .line 57
    iput p1, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean;->current_page:I

    .line 58
    return-void
.end method

.method public setData_list(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/SystemMessageBean$DataBean$DataListBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean;->data_list:Ljava/util/List;

    .line 74
    return-void
.end method

.method public setTotal_page(I)V
    .locals 0
    .parameter "total_page"

    .prologue
    .line 65
    iput p1, p0, Lcom/wanduoduo/bean/SystemMessageBean$DataBean;->total_page:I

    .line 66
    return-void
.end method
