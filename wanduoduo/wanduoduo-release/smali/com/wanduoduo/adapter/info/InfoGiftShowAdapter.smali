.class public Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;
.super Landroid/widget/BaseAdapter;
.source "InfoGiftShowAdapter.java"


# instance fields
.field private isExist:Z

.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addNewGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "name"
    .parameter "pic"

    .prologue
    .line 35
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->isExist:Z

    .line 36
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;

    .line 37
    .local v1, userItemBean:Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;
    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;->getItem()Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->isExist:Z

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;->getNum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;->setNum(Ljava/lang/String;)V

    .line 43
    .end local v1           #userItemBean:Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;
    :cond_1
    iget-boolean v2, p0, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->isExist:Z

    if-nez v2, :cond_2

    .line 44
    new-instance v1, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;

    invoke-direct {v1}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;-><init>()V

    .line 45
    .restart local v1       #userItemBean:Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;->setNum(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;

    invoke-direct {v0}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;-><init>()V

    .line 47
    .local v0, itemBean:Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;
    invoke-virtual {v0, p1}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->setId(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p3}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->setPic(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p2}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->setName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;->setItem(Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;)V

    .line 51
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v0           #itemBean:Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;
    .end local v1           #userItemBean:Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;
    :cond_2
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 73
    if-nez p2, :cond_0

    .line 74
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04009e

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    :cond_0
    const v2, 0x7f0e0298

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .local v0, ivGiftPic:Landroid/widget/ImageView;
    const v2, 0x7f0e0121

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    .local v1, tvGiftCount:Landroid/widget/TextView;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;->getItem()Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean$ItemBean;->getPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 79
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;->getNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, user_item:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/InfoBean$DataBean$UserItemBean;>;"
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/info/InfoGiftShowAdapter;->notifyDataSetChanged()V

    .line 25
    return-void
.end method
