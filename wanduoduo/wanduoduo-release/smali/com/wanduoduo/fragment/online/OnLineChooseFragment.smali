.class public Lcom/wanduoduo/fragment/online/OnLineChooseFragment;
.super Lcom/wanduoduo/base/BaseGridRefreshFragment;
.source "OnLineChooseFragment.java"


# instance fields
.field private age:Ljava/lang/String;

.field private city_code:Ljava/lang/String;

.field private height:Ljava/lang/String;

.field private isVideo:Ljava/lang/String;

.field private loveinfo:Z

.field private order:I

.field private refreshLayout:Lcom/cjj/MaterialRefreshLayout;

.field private sex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseGridRefreshFragment;-><init>()V

    .line 31
    iput v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->sex:I

    .line 32
    iput v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->order:I

    .line 33
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->city_code:Ljava/lang/String;

    .line 34
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isVideo:Ljava/lang/String;

    return-void
.end method

.method private closeRefresh()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    if-eqz v0, :cond_0

    .line 87
    iget-boolean v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isRefreshData:Z

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/cjj/MaterialRefreshLayout;->finishRefresh()V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    invoke-virtual {v0}, Lcom/cjj/MaterialRefreshLayout;->finishRefreshLoadMore()V

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
    .line 52
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "sex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->sex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "city"

    iget-object v1, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->city_code:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "video_identify"

    iget-object v1, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isVideo:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->age:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "age"

    iget-object v1, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->age:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->height:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const-string v0, "height"

    iget-object v1, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->height:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    const-string v1, "loveinfo"

    iget-boolean v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->loveinfo:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "order"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->order:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void

    .line 59
    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method

.method public closeRefresh(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 0
    .parameter "refreshLayout"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    .line 83
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/OnLineChooseAdapter;-><init>()V

    return-object v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->totalPage:I

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 120
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/wanduoduo/adapter/OnLineChooseAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    .line 121
    .local v0, dataListBean:Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    const-string v2, "isCanEdit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    const-string v2, "user_id"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method protected parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 66
    const-class v0, Lcom/wanduoduo/bean/LiKeFansBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public rocketTop()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;

    invoke-virtual {v0}, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->setSeltToTop()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isRefreshData:Z

    .line 134
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->sendDataRequest()V

    .line 135
    return-void
.end method

.method public sendDataRequest()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->gridView:Lcom/wanduoduo/widget/MyGridView;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->gridView:Lcom/wanduoduo/widget/MyGridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyGridView;->setNumColumns(I)V

    .line 47
    :cond_0
    const-string v0, "user_list"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 48
    return-void
.end method

.method public setSelfHide()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;

    invoke-virtual {v0}, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->setSelfHide()V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isRefreshData:Z

    .line 140
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->sendDataRequest()V

    .line 141
    return-void
.end method

.method public setSort(Lcom/wanduoduo/bean/OnLineSelectBean;)V
    .locals 1
    .parameter "onLineSelectBean"

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getGender()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->sex:I

    .line 101
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getCity_code()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getCity_code()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->city_code:Ljava/lang/String;

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    const-string v0, "1"

    iput-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isVideo:Ljava/lang/String;

    .line 108
    :goto_0
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->order:I

    .line 109
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getAge()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getAge()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->age:Ljava/lang/String;

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getHeight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getHeight()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->height:Ljava/lang/String;

    .line 113
    :cond_2
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getLoveinfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->loveinfo:Z

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isRefreshData:Z

    .line 115
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->sendDataRequest()V

    .line 116
    return-void

    .line 106
    :cond_3
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isVideo:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/OnLineChooseAdapter;

    check-cast p1, Lcom/wanduoduo/bean/LiKeFansBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/LiKeFansBean;->getData()Lcom/wanduoduo/bean/LiKeFansBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/OnLineChooseAdapter;->addData(Ljava/util/List;Z)V

    .line 72
    invoke-direct {p0}, Lcom/wanduoduo/fragment/online/OnLineChooseFragment;->closeRefresh()V

    .line 73
    return-void
.end method
