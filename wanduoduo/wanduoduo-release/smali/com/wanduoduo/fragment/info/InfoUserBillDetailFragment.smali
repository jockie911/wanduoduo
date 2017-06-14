.class public Lcom/wanduoduo/fragment/info/InfoUserBillDetailFragment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "InfoUserBillDetailFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
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
    .line 27
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "token"

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-super {p0, p1}, Lcom/wanduoduo/base/BaseListRefreshFragment;->addParams(Ljava/util/Map;)V

    .line 29
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;-><init>()V

    return-object v0
.end method

.method public parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 45
    const-class v0, Lcom/wanduoduo/bean/InfoUserBillBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 3

    .prologue
    .line 22
    const-string v0, "user_bill"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoUserBillDetailFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 23
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailFragment;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 34
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailFragment;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 35
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;

    check-cast p1, Lcom/wanduoduo/bean/InfoUserBillBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/InfoUserBillBean;->getData()Lcom/wanduoduo/bean/InfoUserBillBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/InfoUserBillBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/InfoUserBillDetailFragment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/fragment/info/InfoUserBillDetailAdapter;->addData(Ljava/util/List;Z)V

    .line 36
    return-void
.end method
