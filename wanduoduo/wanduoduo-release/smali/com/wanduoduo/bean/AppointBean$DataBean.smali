.class public Lcom/wanduoduo/bean/AppointBean$DataBean;
.super Ljava/lang/Object;
.source "AppointBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/AppointBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;
    }
.end annotation


# instance fields
.field private current_page:I

.field private data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;",
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
    .line 54
    iget v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean;->current_page:I

    return v0
.end method

.method public getData_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean;->data_list:Ljava/util/List;

    return-object v0
.end method

.method public getTotal_page()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/wanduoduo/bean/AppointBean$DataBean;->total_page:I

    return v0
.end method

.method public setCurrent_page(I)V
    .locals 0
    .parameter "current_page"

    .prologue
    .line 58
    iput p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean;->current_page:I

    .line 59
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
            "Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean;->data_list:Ljava/util/List;

    .line 75
    return-void
.end method

.method public setTotal_page(I)V
    .locals 0
    .parameter "total_page"

    .prologue
    .line 66
    iput p1, p0, Lcom/wanduoduo/bean/AppointBean$DataBean;->total_page:I

    .line 67
    return-void
.end method
