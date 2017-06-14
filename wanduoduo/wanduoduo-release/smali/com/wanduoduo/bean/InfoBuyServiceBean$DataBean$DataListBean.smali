.class public Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;
.super Ljava/lang/Object;
.source "InfoBuyServiceBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;
    }
.end annotation


# instance fields
.field private apply_id:Ljava/lang/String;

.field private gift:Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;

.field private order_address:Ljava/lang/String;

.field private order_create_time:Ljava/lang/String;

.field private order_id:Ljava/lang/String;

.field private order_ispay:Ljava/lang/String;

.field private order_number:Ljava/lang/String;

.field private order_server_time:Ljava/lang/String;

.field private order_share_page:Ljava/lang/String;

.field private order_status:Ljava/lang/String;

.field private order_total_fee:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApply_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->apply_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGift()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->gift:Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;

    return-object v0
.end method

.method public getOrder_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_address:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_create_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_create_time:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_ispay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_ispay:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_number:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_server_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_server_time:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_share_page()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_share_page:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_status()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_status:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_total_fee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_total_fee:Ljava/lang/String;

    return-object v0
.end method

.method public setApply_id(Ljava/lang/String;)V
    .locals 0
    .parameter "apply_id"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->apply_id:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setGift(Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;)V
    .locals 0
    .parameter "gift"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->gift:Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;

    .line 171
    return-void
.end method

.method public setOrder_address(Ljava/lang/String;)V
    .locals 0
    .parameter "order_address"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_address:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setOrder_create_time(Ljava/lang/String;)V
    .locals 0
    .parameter "order_create_time"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_create_time:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setOrder_id(Ljava/lang/String;)V
    .locals 0
    .parameter "order_id"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_id:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setOrder_ispay(Ljava/lang/String;)V
    .locals 0
    .parameter "order_ispay"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_ispay:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setOrder_number(Ljava/lang/String;)V
    .locals 0
    .parameter "order_number"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_number:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setOrder_server_time(Ljava/lang/String;)V
    .locals 0
    .parameter "order_server_time"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_server_time:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setOrder_share_page(Ljava/lang/String;)V
    .locals 0
    .parameter "order_share_page"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_share_page:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setOrder_status(Ljava/lang/String;)V
    .locals 0
    .parameter "order_status"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_status:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setOrder_total_fee(Ljava/lang/String;)V
    .locals 0
    .parameter "order_total_fee"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->order_total_fee:Ljava/lang/String;

    .line 99
    return-void
.end method
