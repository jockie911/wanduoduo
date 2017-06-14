.class public Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfoCouponsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field

.field private myCoupons:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "myCoupons"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->mData:Ljava/util/List;

    .line 28
    iput p1, p0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->myCoupons:I

    .line 29
    return-void
.end method

.method private setTextColor(Landroid/widget/TextView;)V
    .locals 2
    .parameter "tv"

    .prologue
    .line 85
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    return-void
.end method

.method private setTextColor(Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 73
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->itemCouponsTvDesc:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->setTextColor(Landroid/widget/TextView;)V

    .line 74
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->itemCouponsTvMoney:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->setTextColor(Landroid/widget/TextView;)V

    .line 75
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->itemCouponsTvPhone:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->setTextColor(Landroid/widget/TextView;)V

    .line 76
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->itemCouponsTvRmb:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->setTextColor(Landroid/widget/TextView;)V

    .line 77
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->itemCouponsTvShiyong:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->setTextColor(Landroid/widget/TextView;)V

    .line 78
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->itemCouponsTvTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->setTextColor(Landroid/widget/TextView;)V

    .line 79
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->itemCouponsTvYouxiaoqi:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->setTextColor(Landroid/widget/TextView;)V

    .line 81
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->ivPass:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public addData(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "isRefreshData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34
    :cond_0
    if-eqz p1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->notifyDataSetChanged()V

    .line 38
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 58
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04009b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    :cond_0
    #calls: Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;

    move-result-object v0

    .line 60
    .local v0, holder:Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->itemCouponsTvMoney:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->itemCouponsTvYouxiaoqi:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->getOutdate_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->getTag_name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 63
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->itemCouponsTvShiyong:Landroid/widget/TextView;

    const-string v2, "\u5168\u54c1\u7c7b\u5546\u54c1\u4f7f\u7528"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_0
    iget v1, p0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->myCoupons:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 68
    invoke-direct {p0, v0}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->setTextColor(Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;)V

    .line 69
    :cond_1
    return-object p2

    .line 65
    :cond_2
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter$ViewHolder;->itemCouponsTvShiyong:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->getTag_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
