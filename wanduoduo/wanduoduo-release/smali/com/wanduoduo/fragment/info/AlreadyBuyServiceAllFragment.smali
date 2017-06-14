.class public Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "AlreadyBuyServiceAllFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private isOrgnazer:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .parameter "isOrgnazer"
    .parameter "type"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->isOrgnazer:Z

    .line 37
    iput-object p2, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->type:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private getInfoBean(I)Lcom/wanduoduo/bean/PlayerInfoBean;
    .locals 7
    .parameter "position"

    .prologue
    .line 86
    iget-object v5, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v5, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    iget-object v5, v5, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->mData:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;

    .line 87
    .local v0, dataListBean:Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;
    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getGift()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean;->getOrganizer()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;

    move-result-object v4

    .line 88
    .local v4, organizer:Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;
    new-instance v2, Lcom/wanduoduo/bean/PlayerInfoBean;

    invoke-direct {v2}, Lcom/wanduoduo/bean/PlayerInfoBean;-><init>()V

    .line 89
    .local v2, infoBean:Lcom/wanduoduo/bean/PlayerInfoBean;
    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_server_time()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setTime(Ljava/lang/String;)V

    .line 91
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_address()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/wanduoduo/bean/PlayerInfoBean;->setPlace(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v3           #name:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_total_fee()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setTotalFee(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setOrder_id(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v4}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setAvatar(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v4}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;->getGender()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setGender(I)V

    .line 100
    invoke-virtual {v4}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setNickname(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v4}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setUser_id(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean$GiftBean$OrganizerBean;->getAge()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setAge(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_status()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setOrder_status(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean$DataListBean;->getOrder_status()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/wanduoduo/bean/PlayerInfoBean;->setOrder_ispay(Ljava/lang/String;)V

    .line 105
    return-object v2

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected addParams(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "token"

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    iget-boolean v1, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->isOrgnazer:Z

    invoke-direct {v0, v1}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;-><init>(Z)V

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->type:Ljava/lang/String;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v1, "playerInfoBean"

    invoke-direct {p0, p3}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->getInfoBean(I)Lcom/wanduoduo/bean/PlayerInfoBean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 63
    const-class v0, Lcom/wanduoduo/bean/InfoBuyServiceBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 3

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->isOrgnazer:Z

    if-eqz v0, :cond_0

    .line 43
    const-string v0, "order_center"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "orderlist"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 5
    .parameter "obj"

    .prologue
    const/high16 v4, 0x40a0

    .line 68
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->baseListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->baseListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 70
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->baseListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 71
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->baseListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;

    check-cast p1, Lcom/wanduoduo/bean/InfoBuyServiceBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoBuyServiceBean;->getData()Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoBuyServiceBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/info/BuyServiceAdapter;->addData(Ljava/util/List;Z)V

    .line 74
    return-void
.end method
