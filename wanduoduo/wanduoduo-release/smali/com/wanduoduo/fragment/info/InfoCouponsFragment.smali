.class public Lcom/wanduoduo/fragment/info/InfoCouponsFragment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "InfoCouponsFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private isUserConpous:Z

.field private myCoupons:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .parameter "myCoupons"
    .parameter "isUserConpous"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

    .line 33
    iput p1, p0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->myCoupons:I

    .line 34
    iput-boolean p2, p0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->isUserConpous:Z

    .line 35
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
    .line 60
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "token"

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->myCoupons:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-super {p0, p1}, Lcom/wanduoduo/base/BaseListRefreshFragment;->addParams(Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;

    iget v1, p0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->myCoupons:I

    invoke-direct {v0, v1}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;-><init>(I)V

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
    .line 68
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->isUserConpous:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->myCoupons:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 69
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;

    .line 70
    .local v0, dataListBean:Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "cpprice"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v2, "cpcode"

    invoke-virtual {v0}, Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 76
    .end local v0           #dataListBean:Lcom/wanduoduo/bean/CouponsBean$DataBean$DataListBean;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 50
    const-class v0, Lcom/wanduoduo/bean/CouponsBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 3

    .prologue
    .line 39
    const-string v0, "ticket_list"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 40
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;

    check-cast p1, Lcom/wanduoduo/bean/CouponsBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/CouponsBean;->getData()Lcom/wanduoduo/bean/CouponsBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CouponsBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/InfoCouponsFragment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/info/InfoCouponsAdapter;->addData(Ljava/util/List;Z)V

    .line 45
    return-void
.end method
