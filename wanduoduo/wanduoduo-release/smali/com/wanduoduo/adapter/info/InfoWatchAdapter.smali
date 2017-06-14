.class public Lcom/wanduoduo/adapter/info/InfoWatchAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfoWatchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    .line 31
    iput p1, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->type:I

    .line 32
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
            "Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    .line 36
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    :cond_0
    if-eqz p1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->notifyDataSetChanged()V

    .line 41
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const v9, 0x7f0d00a3

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 60
    if-nez p2, :cond_0

    .line 61
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040061

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    :cond_0
    #calls: Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;

    move-result-object v0

    .line 63
    .local v0, holder:Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 64
    iget-object v3, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v3, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getAge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getGender()I

    move-result v2

    if-ne v5, v2, :cond_4

    .line 67
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v3, 0x7f0200ab

    invoke-static {v2, v9, v3}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 68
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v3, 0x7f020269

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 73
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->ivJianTou:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    const-string v1, ""

    .line 75
    .local v1, visitTime:Ljava/lang/String;
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getVisit_time()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getVisit_time()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 77
    :cond_2
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->type:I

    if-ne v2, v6, :cond_5

    .line 79
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u8bbf\u95ee\u8fc7\u60a8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v2, :cond_7

    .line 88
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->vBottonLine:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :goto_2
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getVip_level()I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 95
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v3, 0x7f020344

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    :goto_3
    return-object p2

    .line 69
    .end local v1           #visitTime:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getGender()I

    move-result v2

    if-ne v6, v2, :cond_1

    .line 70
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v3, 0x7f0200aa

    invoke-static {v2, v9, v3}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 71
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v3, 0x7f020268

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 80
    .restart local v1       #visitTime:Ljava/lang/String;
    :cond_5
    iget v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->type:I

    if-ne v2, v5, :cond_3

    .line 81
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getGender()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 82
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u8bbf\u95ee\u8fc7\u4ed6"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 83
    :cond_6
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getGender()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 84
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u8bbf\u95ee\u8fc7\u5979"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 90
    :cond_7
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->vBottonLine:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 96
    :cond_8
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getVip_level()I

    move-result v2

    if-ne v2, v6, :cond_9

    .line 97
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v3, 0x7f020345

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 98
    :cond_9
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getVip_level()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 99
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v3, 0x7f020346

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 100
    :cond_a
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getVip_level()I

    move-result v2

    if-ne v2, v8, :cond_b

    .line 101
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v3, 0x7f020347

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 103
    :cond_b
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3
.end method
