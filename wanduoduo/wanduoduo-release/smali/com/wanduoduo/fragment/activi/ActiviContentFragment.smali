.class public Lcom/wanduoduo/fragment/activi/ActiviContentFragment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "ActiviContentFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private city_code:Ljava/lang/String;

.field private type:I

.field private user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

    .line 29
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->city_code:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

    .line 29
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->city_code:Ljava/lang/String;

    .line 34
    iput p1, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->type:I

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "user_id"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

    .line 29
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->city_code:Ljava/lang/String;

    .line 38
    iput p1, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->type:I

    .line 39
    iput-object p2, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->user_id:Ljava/lang/String;

    .line 40
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
    .line 65
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "token"

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 68
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->user_id:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string v0, "type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    const-string v0, "city_code"

    iget-object v1, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->city_code:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/activi/ActiviAdapter;-><init>()V

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
    .line 97
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    const-string v2, "news_id"

    iget-object v1, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method protected parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 78
    const-class v0, Lcom/wanduoduo/bean/ActiviBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 3

    .prologue
    .line 56
    iget v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 57
    const-string v0, "user_newlist"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v0, "newlist"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0
.end method

.method public setCity_code(Ljava/lang/String;)V
    .locals 0
    .parameter "city_code"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->city_code:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setType(I)V
    .locals 1
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 43
    iput p1, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->type:I

    .line 44
    iput v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->page:I

    .line 45
    iput-boolean v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->isRefreshData:Z

    .line 46
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->sendDataRequest()V

    .line 47
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->baseListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 85
    iget-object v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->baseListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40a0

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->adapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    check-cast p1, Lcom/wanduoduo/bean/ActiviBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/ActiviBean;->getData()Lcom/wanduoduo/bean/ActiviBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->addData(Ljava/util/List;Z)V

    .line 89
    :cond_1
    return-void
.end method
