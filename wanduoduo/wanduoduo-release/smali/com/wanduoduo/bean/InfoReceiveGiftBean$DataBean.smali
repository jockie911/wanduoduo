.class public Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;
.super Ljava/lang/Object;
.source "InfoReceiveGiftBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/InfoReceiveGiftBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;
    }
.end annotation


# instance fields
.field private current_page:I

.field private data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field

.field private item_num:I

.field private total_page:I

.field private user_charm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent_page()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->current_page:I

    return v0
.end method

.method public getData_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->data_list:Ljava/util/List;

    return-object v0
.end method

.method public getItem_num()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->item_num:I

    return v0
.end method

.method public getTotal_page()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->total_page:I

    return v0
.end method

.method public getUser_charm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->user_charm:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrent_page(I)V
    .locals 0
    .parameter "current_page"

    .prologue
    .line 62
    iput p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->current_page:I

    .line 63
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
            "Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;>;"
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->data_list:Ljava/util/List;

    .line 95
    return-void
.end method

.method public setItem_num(I)V
    .locals 0
    .parameter "item_num"

    .prologue
    .line 86
    iput p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->item_num:I

    .line 87
    return-void
.end method

.method public setTotal_page(I)V
    .locals 0
    .parameter "total_page"

    .prologue
    .line 70
    iput p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->total_page:I

    .line 71
    return-void
.end method

.method public setUser_charm(Ljava/lang/String;)V
    .locals 0
    .parameter "user_charm"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->user_charm:Ljava/lang/String;

    .line 79
    return-void
.end method
