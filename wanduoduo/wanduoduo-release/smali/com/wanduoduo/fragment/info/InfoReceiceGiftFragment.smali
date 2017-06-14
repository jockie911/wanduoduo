.class public Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "InfoReceiceGiftFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
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
    .line 30
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "token"

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;-><init>()V

    return-object v0
.end method

.method public parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 52
    const-class v0, Lcom/wanduoduo/bean/InfoReceiveGiftBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 3

    .prologue
    .line 25
    const-string v0, "user_itemlog"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 26
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4170

    .line 36
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;->baseListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;->baseListView:Landroid/widget/ListView;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 38
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;->baseListView:Landroid/widget/ListView;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4120

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;

    move-object v1, p1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean;->getData()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->getUser_charm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->setTvCharming(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;

    move-object v1, p1

    check-cast v1, Lcom/wanduoduo/bean/InfoReceiveGiftBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean;->getData()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->getItem_num()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/info/InfoReceiveGiftActivity;->setTvGiftCount(I)V

    .line 42
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;

    check-cast p1, Lcom/wanduoduo/bean/InfoReceiveGiftBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean;->getData()Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoReceiveGiftBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/InfoReceiceGiftFragment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/info/InfoReceiveAdapter;->addData(Ljava/util/List;Z)V

    .line 43
    return-void
.end method
