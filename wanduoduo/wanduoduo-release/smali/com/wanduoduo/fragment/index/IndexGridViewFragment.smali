.class public Lcom/wanduoduo/fragment/index/IndexGridViewFragment;
.super Lcom/wanduoduo/base/BaseGridRefreshFragment;
.source "IndexGridViewFragment.java"


# instance fields
.field private big_tag:Ljava/lang/String;

.field private city_code:Ljava/lang/String;

.field private refreshLayout:Lcom/cjj/MaterialRefreshLayout;

.field private sex_code:Ljava/lang/String;

.field private sort_code:I

.field private tag_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseGridRefreshFragment;-><init>()V

    .line 26
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->city_code:Ljava/lang/String;

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->sex_code:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->sort_code:I

    .line 29
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->tag_id:Ljava/lang/String;

    .line 31
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->big_tag:Ljava/lang/String;

    return-void
.end method

.method private closeRefresh()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    if-eqz v0, :cond_0

    .line 50
    iget-boolean v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->isRefreshData:Z

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/cjj/MaterialRefreshLayout;->finishRefresh()V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/cjj/MaterialRefreshLayout;->finishRefreshLoadMore()V

    goto :goto_0
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->page:I

    .line 134
    iget-object v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/cjj/MaterialRefreshLayout;->autoRefresh()V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->sendDataRequest()V

    .line 137
    return-void
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
    .line 70
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "sex"

    iget-object v1, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->sex_code:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "tag"

    iget-object v1, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->tag_id:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "btag"

    iget-object v1, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->big_tag:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "city"

    iget-object v1, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->city_code:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "order"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->sort_code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-super {p0, p1}, Lcom/wanduoduo/base/BaseGridRefreshFragment;->addParams(Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method public closeRefresh(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 0
    .parameter "refreshLayout"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    .line 46
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;-><init>()V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "i"
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
    .line 81
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;

    .line 83
    .local v0, dataListBean:Lcom/wanduoduo/bean/IndexGiftListBean$DataBean$DataListBean;
    const-string v2, "itemdata"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v1}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 65
    const-class v0, Lcom/wanduoduo/bean/IndexGiftListBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sendDataRequest()V
    .locals 3

    .prologue
    .line 35
    const-string v0, "gift_list"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 36
    return-void
.end method

.method public setBigTag(Ljava/lang/String;)V
    .locals 0
    .parameter "big_tag"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->big_tag:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->refreshData()V

    .line 130
    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 1
    .parameter "city_code"

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->city_code:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->refreshData()V

    goto :goto_0
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0
    .parameter "sex_code"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->sex_code:Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->refreshData()V

    .line 106
    return-void
.end method

.method public setSkillCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag_id"
    .parameter "big_tag"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->tag_id:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->big_tag:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->refreshData()V

    .line 125
    return-void
.end method

.method public setSortCode(I)V
    .locals 0
    .parameter "sort_code"

    .prologue
    .line 113
    iput p1, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->sort_code:I

    .line 114
    invoke-direct {p0}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->refreshData()V

    .line 115
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;

    check-cast p1, Lcom/wanduoduo/bean/IndexGiftListBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/IndexGiftListBean;->getData()Lcom/wanduoduo/bean/IndexGiftListBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexGiftListBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter;->addData(Ljava/util/List;Z)V

    .line 41
    invoke-direct {p0}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->closeRefresh()V

    .line 42
    return-void
.end method
