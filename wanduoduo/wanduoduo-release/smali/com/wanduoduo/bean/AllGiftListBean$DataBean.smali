.class public Lcom/wanduoduo/bean/AllGiftListBean$DataBean;
.super Ljava/lang/Object;
.source "AllGiftListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/AllGiftListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;
    }
.end annotation


# instance fields
.field private data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
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
            "Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean;->data_list:Ljava/util/List;

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
            "Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/AllGiftListBean$DataBean$DataListBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/AllGiftListBean$DataBean;->data_list:Ljava/util/List;

    .line 57
    return-void
.end method
