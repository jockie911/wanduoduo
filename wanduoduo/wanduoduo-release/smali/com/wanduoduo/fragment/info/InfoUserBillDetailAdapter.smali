.class public Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfoUserBillDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;->mData:Ljava/util/List;

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
            "Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    .line 26
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;->notifyDataSetChanged()V

    .line 31
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0400a0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    :cond_0
    #calls: Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;

    move-result-object v0

    .line 53
    .local v0, holder:Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->getOrder_type()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 54
    .local v1, type:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 55
    :cond_1
    iget-object v2, v0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;->tvMoney:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v3, v0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;->tvMoney:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->getOrder_total_fee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v2, v0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;->tvDesc:Landroid/widget/TextView;

    const-string v3, "\u652f\u51fa"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->getOrder_create_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-object p2

    .line 58
    :cond_3
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 59
    :cond_4
    iget-object v2, v0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;->tvMoney:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v3, v0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;->tvMoney:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean$DataListBean;->getOrder_total_fee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, v0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter$ViewHolder;->tvDesc:Landroid/widget/TextView;

    const-string v3, "\u6536\u5165"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
