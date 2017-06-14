.class public Lcom/wanduoduo/adapter/info/InfoLoveAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfoLoveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

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
            "Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    .line 34
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->notifyDataSetChanged()V

    .line 39
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const v8, 0x7f0d00a3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 63
    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040061

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    :cond_0
    #calls: Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;

    move-result-object v0

    .line 66
    .local v0, holder:Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 67
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getAge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getGender()I

    move-result v1

    if-ne v6, v1, :cond_2

    .line 70
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v2, 0x7f0200ab

    invoke-static {v1, v8, v2}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 71
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v2, 0x7f020269

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 76
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivJianTou:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 79
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->vBottonLine:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :goto_1
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getVip_level()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 86
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v2, 0x7f020344

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    :goto_2
    return-object p2

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getGender()I

    move-result v1

    if-ne v7, v1, :cond_1

    .line 73
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v2, 0x7f0200aa

    invoke-static {v1, v8, v2}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 74
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v2, 0x7f020268

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 81
    :cond_3
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->vBottonLine:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getVip_level()I

    move-result v1

    if-ne v1, v7, :cond_5

    .line 88
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v2, 0x7f020345

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 89
    :cond_5
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getVip_level()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 90
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v2, 0x7f020346

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 91
    :cond_6
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getVip_level()I

    move-result v1

    if-ne v1, v4, :cond_7

    .line 92
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v2, 0x7f020347

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 94
    :cond_7
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method
