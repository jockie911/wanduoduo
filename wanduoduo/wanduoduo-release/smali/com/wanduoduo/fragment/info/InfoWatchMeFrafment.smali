.class public Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "InfoWatchMeFrafment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

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
    .line 52
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "user_id"

    const-string v1, "user_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;-><init>(I)V

    return-object v0
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "2"

    return-object v0
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
    .line 63
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;

    .line 64
    .local v0, dataListBean:Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "isCanEdit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const-string v2, "user_id"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v1}, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 33
    const-class v0, Lcom/wanduoduo/bean/InfoWatchBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 3

    .prologue
    .line 28
    const-string v0, "user_visitlist"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 29
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->baseListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 40
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;

    check-cast p1, Lcom/wanduoduo/bean/InfoWatchBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoWatchBean;->getData()Lcom/wanduoduo/bean/InfoWatchBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoWatchBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/info/InfoWatchAdapter;->addData(Ljava/util/List;Z)V

    .line 43
    return-void
.end method
