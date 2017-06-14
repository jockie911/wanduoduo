.class public Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfoReceiveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;",
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

    iput-object v0, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

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
            "Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    .line 34
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->notifyDataSetChanged()V

    .line 39
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04009f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    :cond_0
    #calls: Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;

    move-result-object v0

    .line 61
    .local v0, holder:Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->getFrom_user()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 62
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;->tvNickname:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->getFrom_user()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->getFrom_user()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->getGender()I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->getItem()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->getPic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;->ivGift:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 70
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;->tvGiftName:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->getItem()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " *"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->getNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;->tvItemCharm:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4eba\u6c14\u503c"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->getItem()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$ItemBean;->getCharm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->getNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->getSend_time()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    iget-object v2, v0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;->tvSendTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->getSend_time()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_2
    iget-object v1, v0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$ViewHolder;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    new-instance v2, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter$1;-><init>(Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;I)V

    invoke-virtual {v1, v2}, Lcom/wanduoduo/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-object p2

    .line 65
    :cond_3
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean;->getFrom_user()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean$DataListBean$FromUserBean;->getGender()I

    move-result v1

    if-ne v2, v1, :cond_1

    goto/16 :goto_0
.end method
