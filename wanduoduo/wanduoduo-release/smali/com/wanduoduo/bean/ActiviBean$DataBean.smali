.class public Lcom/wanduoduo/bean/ActiviBean$DataBean;
.super Ljava/lang/Object;
.source "ActiviBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/ActiviBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;,
        Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;
    }
.end annotation


# instance fields
.field private comment_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;",
            ">;"
        }
    .end annotation
.end field

.field private current_page:I

.field private data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field

.field private total_page:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean;->comment_list:Ljava/util/List;

    return-object v0
.end method

.method public getCurrent_page()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean;->current_page:I

    return v0
.end method

.method public getData_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean;->data_list:Ljava/util/List;

    return-object v0
.end method

.method public getTotal_page()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean;->total_page:I

    return v0
.end method

.method public setComment_list(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, comment_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/ActiviBean$DataBean$CommentListBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean;->comment_list:Ljava/util/List;

    .line 75
    return-void
.end method

.method public setCurrent_page(I)V
    .locals 0
    .parameter "current_page"

    .prologue
    .line 50
    iput p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean;->current_page:I

    .line 51
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
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean;->data_list:Ljava/util/List;

    .line 67
    return-void
.end method

.method public setTotal_page(I)V
    .locals 0
    .parameter "total_page"

    .prologue
    .line 58
    iput p1, p0, Lcom/wanduoduo/bean/ActiviBean$DataBean;->total_page:I

    .line 59
    return-void
.end method
