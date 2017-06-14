.class public Lcom/wanduoduo/fragment/online/AppointmentItemFragment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "AppointmentItemFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# static fields
.field private static final DELETE_APPOINT:I = 0x1


# instance fields
.field private city_code:Ljava/lang/String;

.field private order:I

.field private position:I

.field private sex:I

.field private video_ok:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

    .line 37
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->city_code:Ljava/lang/String;

    .line 38
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->video_ok:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->sex:I

    .line 40
    iput v1, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->order:I

    .line 43
    iput p1, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->position:I

    .line 44
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
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "type"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "city_code"

    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->city_code:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "sex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->sex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "video_ok"

    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->video_ok:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "order"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->order:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;

    iget v1, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->position:I

    invoke-direct {v0, v1}, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;-><init>(I)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 102
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz p3, :cond_0

    .line 103
    const-string v1, "position"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 104
    .local v0, position:I
    if-eq v0, v2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->deleteItem(I)V

    .line 107
    .end local v0           #position:I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseListRefreshFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    return-void
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
    .line 94
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "id"

    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/AppointBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "position"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 98
    return-void
.end method

.method protected parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 75
    const-class v0, Lcom/wanduoduo/bean/AppointBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 3

    .prologue
    .line 59
    const-string v0, "date_list"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 60
    return-void
.end method

.method public setSortResult(Lcom/wanduoduo/bean/OnLineSelectBean;)V
    .locals 2
    .parameter "onLineSelectBean"

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getCity_code()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getCity_code()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->city_code:Ljava/lang/String;

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->video_ok:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getGender()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->sex:I

    .line 51
    invoke-virtual {p1}, Lcom/wanduoduo/bean/OnLineSelectBean;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->order:I

    .line 52
    iput v1, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->page:I

    .line 53
    iput-boolean v1, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->isRefreshData:Z

    .line 54
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->sendDataRequest()V

    .line 55
    return-void

    .line 49
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->baseListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 82
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->baseListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40c0

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;

    check-cast p1, Lcom/wanduoduo/bean/AppointBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/AppointBean;->getData()Lcom/wanduoduo/bean/AppointBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/AppointBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/online/AppointmentItemFragment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter;->addData(Ljava/util/List;Z)V

    .line 85
    return-void
.end method
