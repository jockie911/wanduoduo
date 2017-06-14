.class public Lcom/wanduoduo/adapter/OnLineChooseAdapter;
.super Landroid/widget/BaseAdapter;
.source "OnLineChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;
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
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

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
    iget-object v0, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->notifyDataSetChanged()V

    .line 39
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 87
    if-nez p2, :cond_0

    .line 88
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040095

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 89
    :cond_0
    #calls: Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;

    move-result-object v0

    .line 90
    .local v0, holder:Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v1, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 91
    iget-object v2, v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->tvNickname:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->tvTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getUpdate_time()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wanduoduo/utils/TimeShowUtils;->getStandardDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getIs_vip()I

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v1, v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->ivIsVip:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v1, v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    const-string v2, "#d0d2d3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wanduoduo/widget/CircleImageView;->setBorderColor(I)V

    .line 96
    iget-object v1, v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->tvNickname:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getVideo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->ivIsVideo:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :goto_1
    return-object p2

    .line 98
    :cond_1
    iget-object v1, v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->ivIsVip:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v1, v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    const-string v2, "#ffe967"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wanduoduo/widget/CircleImageView;->setBorderColor(I)V

    .line 100
    iget-object v1, v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->tvNickname:Landroid/widget/TextView;

    const-string v2, "#ffe967"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v1, v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter$ViewHolder;->ivIsVideo:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setSelfHide()V
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->notifyDataSetChanged()V

    .line 68
    :cond_0
    return-void

    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSeltToTop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 45
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_id"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    iget-object v2, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    iget-object v3, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    iget-object v2, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "user_id"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    new-instance v0, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-direct {v0}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;-><init>()V

    .line 54
    .local v0, dataListBean:Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;
    const-string v2, "user_id"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->setId(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 57
    .end local v0           #dataListBean:Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;
    :cond_1
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->notifyDataSetChanged()V

    .line 58
    return-void

    .line 45
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
