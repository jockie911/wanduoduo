.class public abstract Lcom/wanduoduo/base/BaseListRefreshFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "BaseListRefreshFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;
    }
.end annotation


# static fields
.field private static final EMPTY_DATA:I = 0x463

.field private static final LOAD_OK:I = 0xca

.field private static final ONSUCCESS:I = 0xc8

.field private static final REFFRESH_OK:I = 0xc9


# instance fields
.field protected adapter:Landroid/widget/BaseAdapter;

.field protected baseListView:Landroid/widget/ListView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0228
        }
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;

.field private isEmpty:Z

.field protected isRefreshData:Z

.field public mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

.field protected page:I

.field protected refreshLayout:Lcom/cjj/MaterialRefreshLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00ba
        }
    .end annotation
.end field

.field protected totalPage:I

.field tvEmpty:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0229
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 46
    iput v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->page:I

    .line 47
    iput v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->totalPage:I

    .line 72
    new-instance v0, Lcom/wanduoduo/base/BaseListRefreshFragment$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/base/BaseListRefreshFragment$1;-><init>(Lcom/wanduoduo/base/BaseListRefreshFragment;)V

    iput-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->handler:Landroid/os/Handler;

    .line 110
    new-instance v0, Lcom/wanduoduo/base/BaseListRefreshFragment$2;

    invoke-direct {v0, p0}, Lcom/wanduoduo/base/BaseListRefreshFragment$2;-><init>(Lcom/wanduoduo/base/BaseListRefreshFragment;)V

    iput-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/base/BaseListRefreshFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->isEmpty:Z

    return v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/base/BaseListRefreshFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/wanduoduo/base/BaseListRefreshFragment;->getData(Ljava/lang/String;)V

    return-void
.end method

.method private getData(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 129
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 130
    .local v3, obtain:Landroid/os/Message;
    const/16 v4, 0xc8

    iput v4, v3, Landroid/os/Message;->what:I

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "result"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "total_page"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->totalPage:I

    .line 135
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data_list"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 136
    .local v2, jsonArray:Lorg/json/JSONArray;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->isEmpty:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    :goto_0
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 142
    iget-object v4, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    return-void

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 139
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->isEmpty:Z

    goto :goto_0
.end method


# virtual methods
.method protected addParams(Ljava/util/Map;)V
    .locals 0
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
    .line 154
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method protected abstract getAdapter()Landroid/widget/BaseAdapter;
.end method

.method protected getMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {p0, v0}, Lcom/wanduoduo/base/BaseListRefreshFragment;->addParams(Ljava/util/Map;)V

    .line 149
    return-object v0
.end method

.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 54
    const v0, 0x7f040076

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->adapter:Landroid/widget/BaseAdapter;

    .line 60
    iget-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->baseListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    new-instance v1, Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wanduoduo/base/BaseListRefreshFragment$MyMaterialRefreshListener;-><init>(Lcom/wanduoduo/base/BaseListRefreshFragment;Lcom/wanduoduo/base/BaseListRefreshFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialRefreshLayout;->setMaterialRefreshListener(Lcom/cjj/MaterialRefreshListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;->sendDataRequest()V

    .line 70
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 108
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRefreshing()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 176
    iput v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->page:I

    .line 177
    iput-boolean v0, p0, Lcom/wanduoduo/base/BaseListRefreshFragment;->isRefreshData:Z

    .line 178
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;->sendDataRequest()V

    .line 180
    return-void
.end method

.method protected abstract parseData(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected abstract sendDataRequest()V
.end method

.method public abstract updateAdapter(Ljava/lang/Object;)V
.end method
