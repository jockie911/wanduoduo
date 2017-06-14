.class public Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "IndexGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->mData:Ljava/util/List;

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
            "Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    .line 29
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    :cond_0
    if-eqz p1, :cond_1

    .line 31
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->notifyDataSetChanged()V

    .line 34
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "i"
    .parameter "convertView"
    .parameter "viewGroup"

    .prologue
    .line 53
    if-nez p2, :cond_0

    .line 54
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040094

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    :cond_0
    invoke-static {p2}, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;

    move-result-object v0

    .line 58
    .local v0, holder:Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v1, p0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getCover_pic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemIvPic:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 59
    iget-object v1, p0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getGift_video()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 60
    iget-object v1, v0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemIvPlay:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getGender()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 66
    iget-object v1, v0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->ivSexBg:Landroid/widget/ImageView;

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    :cond_1
    :goto_1
    iget-object v2, v0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getFee()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/h"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, v0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemTvNickname:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-object p2

    .line 62
    :cond_2
    iget-object v1, v0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemIvPlay:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;->getOrganizer()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean$OrganizerBean;->getGender()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 68
    iget-object v1, v0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->ivSexBg:Landroid/widget/ImageView;

    const v2, 0x7f0200d6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method
