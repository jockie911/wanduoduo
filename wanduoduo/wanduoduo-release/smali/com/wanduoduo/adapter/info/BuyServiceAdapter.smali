.class public Lcom/wanduoduo/adapter/info/BuyServiceAdapter;
.super Landroid/widget/BaseAdapter;
.source "BuyServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnRrefresListen;,
        Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;,
        Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final CLCK_EVALUATION_ORDER:I = 0xc

.field private static final CLICK_PAY_FOR_ORDER:I = 0xb

.field private static final USER_AGREE_ORDER:I = 0x1


# instance fields
.field handler:Landroid/os/Handler;

.field private isOrgina:Z

.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "isOrgina"

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    .line 321
    new-instance v0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$1;-><init>(Lcom/wanduoduo/adapter/info/BuyServiceAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->handler:Landroid/os/Handler;

    .line 54
    iput-boolean p1, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->isOrgina:Z

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/adapter/info/BuyServiceAdapter;I)Lcom/wanduoduo/bean/PlayerInfoBean;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->getPlayerInfoBean(I)Lcom/wanduoduo/bean/PlayerInfoBean;

    move-result-object v0

    return-object v0
.end method

.method private getPlayerInfoBean(I)Lcom/wanduoduo/bean/PlayerInfoBean;
    .locals 7
    .parameter "position"

    .prologue
    .line 263
    new-instance v4, Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-direct {v4}, Lcom/wanduoduo/bean/PlayerInfoBean;-><init>()V

    .line 264
    .local v4, playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;
    iget-object v5, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    .line 265
    .local v0, data:Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;
    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setOrder_id(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_total_fee()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setTotalFee(Ljava/lang/String;)V

    .line 268
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_address()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/wanduoduo/bean/PlayerInfoBean;->setPlace(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v3           #name:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getGift()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;

    move-result-object v2

    .line 275
    .local v2, gift:Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;
    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setId(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getOrganizer()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;->getAge()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setAge(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getOrganizer()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setAvatar(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getCover_pic()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setCover_pic(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getFee()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setFee(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getOrganizer()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setNickname(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getOrganizer()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;->getGender()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setGender(I)V

    .line 282
    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setTitle(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getOrganizer()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setUser_id(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_server_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setTime(Ljava/lang/String;)V

    .line 285
    return-object v4

    .line 270
    .end local v2           #gift:Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;
    :catch_0
    move-exception v1

    .line 271
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setTextColor(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "tv"
    .parameter "color"

    .prologue
    .line 190
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    return-void
.end method

.method private setTextStatus(Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;IZZ)V
    .locals 3
    .parameter "holder"
    .parameter "color"
    .parameter "isRightIconShow"
    .parameter "isBottomRelShow"

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextColor(Landroid/widget/TextView;I)V

    .line 174
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvMoney:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextColor(Landroid/widget/TextView;I)V

    .line 175
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvTime:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextColor(Landroid/widget/TextView;I)V

    .line 176
    if-eqz p3, :cond_0

    .line 177
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->ivStatus:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    :goto_0
    if-eqz p4, :cond_1

    .line 182
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemRelPayOrDiscuss:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    :goto_1
    return-void

    .line 179
    :cond_0
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->ivStatus:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemRelPayOrDiscuss:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
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
            "Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, data_list:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;>;"
    if-eqz p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    :cond_0
    if-eqz p1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 62
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->notifyDataSetChanged()V

    .line 64
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0d002b

    const v7, 0x7f0d001b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    if-nez p2, :cond_0

    .line 83
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0400a3

    invoke-static {v2, v5, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    .line 86
    .local v0, dataListBean:Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;
    #calls: Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->access$000(Landroid/view/View;)Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;

    move-result-object v1

    .line 87
    .local v1, holder:Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;
    iget-object v5, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getGift()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getGift()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getCover_pic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v2

    iget-object v5, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemIvPhoto:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    invoke-virtual {v2, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 90
    iget-object v5, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvMoney:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5b9e\u4ed8  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_total_fee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u65f6\u95f4  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_server_time()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wanduoduo/utils/TimeShowUtils;->getTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_status()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 156
    iget-boolean v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->isOrgina:Z

    if-nez v2, :cond_8

    const-string v2, "2"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_ispay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 157
    invoke-direct {p0, v1, v8, v3, v4}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextStatus(Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;IZZ)V

    .line 158
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->ivStatus:Landroid/widget/ImageView;

    const v3, 0x7f020079

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 164
    :cond_2
    :goto_1
    return-object p2

    .line 95
    :sswitch_0
    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-direct {p0, v1, v7, v3, v4}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextStatus(Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;IZZ)V

    .line 98
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    invoke-direct {p0, v2, v7}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextColor(Landroid/widget/TextView;I)V

    .line 99
    iget-boolean v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->isOrgina:Z

    if-eqz v2, :cond_3

    .line 100
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    const-string v3, "\u786e\u8ba4\u63a5\u5355"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    const v3, 0x7f0d00a3

    invoke-direct {p0, v2, v3}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextColor(Landroid/widget/TextView;I)V

    .line 102
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020282

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    new-instance v3, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;

    invoke-direct {v3, p0, p1, v4}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;-><init>(Lcom/wanduoduo/adapter/info/BuyServiceAdapter;II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 105
    :cond_3
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    const-string v3, "\u5df2\u9884\u7ea6,\u7b49\u5f85\u670d\u52a1\u8005\u63a5\u5355..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    invoke-direct {p0, v2, v7}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextColor(Landroid/widget/TextView;I)V

    .line 107
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 111
    :pswitch_1
    invoke-direct {p0, v1, v8, v4, v3}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextStatus(Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;IZZ)V

    .line 112
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->ivStatus:Landroid/widget/ImageView;

    const v3, 0x7f020078

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 115
    :pswitch_2
    invoke-direct {p0, v1, v7, v3, v4}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextStatus(Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;IZZ)V

    .line 116
    iget-boolean v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->isOrgina:Z

    if-eqz v2, :cond_6

    .line 117
    const-string v2, "0"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_ispay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 118
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    const-string v3, "\u7b49\u5f85\u5bf9\u65b9\u652f\u4ed8..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    invoke-direct {p0, v2, v7}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextColor(Landroid/widget/TextView;I)V

    .line 125
    :cond_4
    :goto_2
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 120
    :cond_5
    const-string v2, "1"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_ispay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 121
    invoke-direct {p0, v1, v7, v3, v3}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextStatus(Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;IZZ)V

    .line 122
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    const-string v3, "\u8fdb\u884c\u4e2d..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    const v3, 0x7f0d002d

    invoke-direct {p0, v2, v3}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 127
    :cond_6
    const-string v2, "0"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_ispay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 128
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    const-string v3, "\u7acb\u5373\u652f\u4ed8"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    const v3, 0x7f0d00a3

    invoke-direct {p0, v2, v3}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextColor(Landroid/widget/TextView;I)V

    .line 130
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020282

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    new-instance v3, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;

    const/16 v4, 0xb

    invoke-direct {v3, p0, p1, v4}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;-><init>(Lcom/wanduoduo/adapter/info/BuyServiceAdapter;II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 132
    :cond_7
    const-string v2, "1"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_ispay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    const-string v3, "\u8fdb\u884c\u4e2d..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    invoke-direct {p0, v2, v7}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextColor(Landroid/widget/TextView;I)V

    .line 136
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    const v3, 0x7f0d002d

    invoke-direct {p0, v2, v3}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextColor(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 141
    :pswitch_3
    iget-boolean v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->isOrgina:Z

    if-nez v2, :cond_2

    .line 142
    invoke-direct {p0, v1, v7, v4, v3}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextStatus(Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;IZZ)V

    .line 143
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020282

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    const-string v3, "\u7acb\u5373\u8bc4\u8bba"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    new-instance v3, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;

    const/16 v4, 0xc

    invoke-direct {v3, p0, p1, v4}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$MyOnClickListener;-><init>(Lcom/wanduoduo/adapter/info/BuyServiceAdapter;II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->itemTvPayOrDiscuss:Landroid/widget/TextView;

    const v3, 0x7f0d00a3

    invoke-direct {p0, v2, v3}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextColor(Landroid/widget/TextView;I)V

    goto/16 :goto_1

    .line 150
    :pswitch_4
    iget-boolean v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->isOrgina:Z

    if-nez v2, :cond_2

    .line 151
    invoke-direct {p0, v1, v8, v3, v4}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextStatus(Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;IZZ)V

    .line 152
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->ivStatus:Landroid/widget/ImageView;

    const v3, 0x7f020078

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 159
    :cond_8
    iget-boolean v2, p0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->isOrgina:Z

    if-nez v2, :cond_2

    const-string v2, "3"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_ispay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-direct {p0, v1, v8, v3, v4}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->setTextStatus(Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;IZZ)V

    .line 161
    iget-object v2, v1, Lcom/wanduoduo/adapter/info/BuyServiceAdapter$ViewHolder;->ivStatus:Landroid/widget/ImageView;

    const v3, 0x7f02007a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x31 -> :sswitch_2
        0x32 -> :sswitch_3
        0x33 -> :sswitch_4
        0x5a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
