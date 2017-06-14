.class public Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;
.super Ljava/lang/Object;
.source "IndexTagListBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/IndexTagListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;
    }
.end annotation


# instance fields
.field private category_id:Ljava/lang/String;

.field private category_image:Ljava/lang/String;

.field private category_image_b:Ljava/lang/String;

.field private category_name:Ljava/lang/String;

.field private data_list_child:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->category_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory_image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->category_image:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory_image_b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->category_image_b:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->category_name:Ljava/lang/String;

    return-object v0
.end method

.method public getData_list_child()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->data_list_child:Ljava/util/List;

    return-object v0
.end method

.method public setCategory_id(Ljava/lang/String;)V
    .locals 0
    .parameter "category_id"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->category_id:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCategory_image(Ljava/lang/String;)V
    .locals 0
    .parameter "category_image"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->category_image:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setCategory_image_b(Ljava/lang/String;)V
    .locals 0
    .parameter "category_image_b"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->category_image_b:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setCategory_name(Ljava/lang/String;)V
    .locals 0
    .parameter "category_name"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->category_name:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setData_list_child(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, data_list_child:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->data_list_child:Ljava/util/List;

    .line 115
    return-void
.end method
