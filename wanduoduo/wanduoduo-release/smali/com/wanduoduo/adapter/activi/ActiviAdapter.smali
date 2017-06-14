.class public Lcom/wanduoduo/adapter/activi/ActiviAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActiviAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;,
        Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    .line 252
    new-instance v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$6;-><init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/adapter/activi/ActiviAdapter;Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->zan(Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/wanduoduo/adapter/activi/ActiviAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->alertEditViewType(I)V

    return-void
.end method

.method private alertEditViewType(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 223
    return-void
.end method

.method private getZanMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter "news_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "news_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-object v0
.end method

.method private zan(Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;I)V
    .locals 4
    .parameter "holder"
    .parameter "position"

    .prologue
    .line 230
    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->isIsLike()Z

    move-result v0

    .line 231
    .local v0, isLike:Z
    const-string v1, ""

    .line 232
    .local v1, url:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 233
    const-string v1, "news_dislike"

    .line 237
    :goto_0
    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->getZanMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;

    invoke-direct {v3, p0, p2, v0}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;-><init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;IZ)V

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 250
    return-void

    .line 235
    :cond_0
    const-string v1, "news_like"

    goto :goto_0
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
            "Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->notifyDataSetChanged()V

    .line 62
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x4

    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 81
    if-nez p2, :cond_0

    .line 82
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0400a1

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    :cond_0
    #calls: Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;

    move-result-object v0

    .line 84
    .local v0, holder:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v6

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v6, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    invoke-virtual {v2, v6}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 85
    iget-object v6, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getVip_level()Ljava/lang/String;

    move-result-object v6

    const/4 v2, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 93
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :goto_1
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getGender()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 98
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v6, 0x7f020269

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 99
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v6, 0x7f0d00a3

    const v7, 0x7f0200ab

    invoke-static {v2, v6, v7}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 100
    iget-object v6, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getAge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_2
    iget-object v6, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvActiviTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getCreate_time()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wanduoduo/utils/TimeShowUtils;->getStandardDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivJianTou:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->relPersonInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 113
    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 114
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_3
    new-instance v1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getPics()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;-><init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;Ljava/util/List;)V

    .line 124
    .local v1, itemPicAdapter:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;
    const-string v6, "\u66f4\u65b0\u4e86\u5f62\u8c61\u89c6\u9891"

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 125
    new-array v6, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getVideo()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-virtual {v1, v4, v6}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->setVideoUrl(Z[Ljava/lang/String;)V

    .line 130
    :goto_4
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->flPic:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getPics()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getPics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 132
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    invoke-virtual {v2, v1}, Lcom/wanduoduo/widget/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    :goto_5
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->llMapLocation:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 144
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->llMapLocation:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    :goto_6
    iget-object v6, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvReadCount:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getView()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\u9605\u8bfb"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v6, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvZan:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getLikeCount()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v6, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvDiscuss:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getCommentCount()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->isIsLike()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 158
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvZan:Landroid/widget/TextView;

    const v6, 0x7f0d002d

    const v7, 0x7f020060

    invoke-static {v2, v6, v7}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 162
    :goto_7
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvZan:Landroid/widget/TextView;

    new-instance v6, Lcom/wanduoduo/adapter/activi/ActiviAdapter$1;

    invoke-direct {v6, p0, v0, p1}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$1;-><init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;I)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    new-instance v6, Lcom/wanduoduo/adapter/activi/ActiviAdapter$2;

    invoke-direct {v6, p0, p3, p1}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$2;-><init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;Landroid/view/ViewGroup;I)V

    invoke-virtual {v2, v6}, Lcom/wanduoduo/widget/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    new-instance v6, Lcom/wanduoduo/adapter/activi/ActiviAdapter$3;

    invoke-direct {v6, p0, p3, p1}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$3;-><init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;Landroid/view/ViewGroup;I)V

    invoke-virtual {v2, v6}, Lcom/wanduoduo/widget/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v6, "user_id"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 194
    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getView_type()Ljava/lang/String;

    move-result-object v6

    const/4 v2, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_2

    :cond_2
    :goto_8
    packed-switch v2, :pswitch_data_3

    .line 205
    :goto_9
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivItemTop:Landroid/widget/ImageView;

    new-instance v3, Lcom/wanduoduo/adapter/activi/ActiviAdapter$4;

    invoke-direct {v3, p0, p1}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$4;-><init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :goto_a
    return-object p2

    .line 88
    .end local v1           #itemPicAdapter:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;
    :pswitch_0
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v3

    goto/16 :goto_0

    :pswitch_1
    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    goto/16 :goto_0

    :pswitch_2
    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v5

    goto/16 :goto_0

    :pswitch_3
    const-string v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_0

    .line 89
    :pswitch_4
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v6, 0x7f020344

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 90
    :pswitch_5
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v6, 0x7f020345

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 91
    :pswitch_6
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v6, 0x7f020346

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 92
    :pswitch_7
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    const v6, 0x7f020347

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 101
    :cond_3
    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getGender()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 102
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v6, 0x7f020268

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 103
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    const v6, 0x7f0d00a3

    const v7, 0x7f0200aa

    invoke-static {v2, v6, v7}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    .line 104
    iget-object v6, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getAge()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 106
    :cond_4
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 116
    :cond_5
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v6, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 119
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_3

    .line 127
    .restart local v1       #itemPicAdapter:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;
    :cond_6
    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ItemPicAdapter;->setVideoUrl(Z[Ljava/lang/String;)V

    goto/16 :goto_4

    .line 135
    :cond_7
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->flPic:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 146
    :cond_8
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->llMapLocation:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v6, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvLocationPlace:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 160
    :cond_9
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvZan:Landroid/widget/TextView;

    const v6, 0x7f0d001b

    const v7, 0x7f02005f

    invoke-static {v2, v6, v7}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableLeft(Landroid/widget/TextView;II)V

    goto/16 :goto_7

    .line 194
    :pswitch_8
    const-string v4, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto/16 :goto_8

    :pswitch_9
    const-string v3, "2"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    goto/16 :goto_8

    :pswitch_a
    const-string v3, "3"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v5

    goto/16 :goto_8

    .line 196
    :pswitch_b
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvItemTop:Landroid/widget/TextView;

    const-string v3, "\u5168\u90e8\u53ef\u89c1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 199
    :pswitch_c
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvItemTop:Landroid/widget/TextView;

    const-string v3, "\u559c\u6b22\u597d\u53cb\u53ef\u89c1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 202
    :pswitch_d
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvItemTop:Landroid/widget/TextView;

    const-string v3, "\u4ec5\u81ea\u5df1\u53ef\u89c1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 212
    :cond_a
    iget-object v2, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->relItemTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_a

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 194
    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
