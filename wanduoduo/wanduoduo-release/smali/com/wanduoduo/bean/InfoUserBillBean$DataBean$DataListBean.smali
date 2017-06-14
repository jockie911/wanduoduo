.class public Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;
.super Ljava/lang/Object;
.source "InfoUserBillBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/InfoUserBillBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListBean"
.end annotation


# instance fields
.field private order_create_time:Ljava/lang/String;

.field private order_id:Ljava/lang/String;

.field private order_is_pay:Ljava/lang/String;

.field private order_number:Ljava/lang/String;

.field private order_status:Ljava/lang/String;

.field private order_total_fee:Ljava/lang/String;

.field private order_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrder_create_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_is_pay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_is_pay:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_number:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_status:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_total_fee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_total_fee:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_type:Ljava/lang/String;

    return-object v0
.end method

.method public setOrder_create_time(Ljava/lang/String;)V
    .locals 0
    .parameter "order_create_time"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_create_time:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setOrder_id(Ljava/lang/String;)V
    .locals 0
    .parameter "order_id"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_id:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setOrder_is_pay(Ljava/lang/String;)V
    .locals 0
    .parameter "order_is_pay"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_is_pay:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setOrder_number(Ljava/lang/String;)V
    .locals 0
    .parameter "order_number"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_number:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setOrder_status(Ljava/lang/String;)V
    .locals 0
    .parameter "order_status"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_status:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setOrder_total_fee(Ljava/lang/String;)V
    .locals 0
    .parameter "order_total_fee"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_total_fee:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setOrder_type(Ljava/lang/String;)V
    .locals 0
    .parameter "order_type"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->order_type:Ljava/lang/String;

    .line 141
    return-void
.end method
