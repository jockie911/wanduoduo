.class public Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "SettingBlackPersonFragmetn.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->adapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->sendRequestUnblack(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->adapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private getUnBlackMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "user_id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-object v0
.end method

.method private sendRequestUnblack(ILjava/lang/String;)V
    .locals 3
    .parameter "position"
    .parameter "id"

    .prologue
    .line 81
    const-string v0, "user_unblack"

    invoke-direct {p0, p2}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->getUnBlackMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;

    invoke-direct {v2, p0, p1}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$2;-><init>(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;I)V

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 98
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
    .line 38
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "token"

    const-string v1, "token"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;

    invoke-direct {v0}, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;-><init>()V

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
    .line 62
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "\u67e5\u770b\u8d44\u6599"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u53d6\u6d88\u9ed1\u540d\u5355"

    aput-object v3, v1, v2

    .line 64
    .local v1, item:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$1;

    invoke-direct {v2, p0, p3}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn$1;-><init>(Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 78
    return-void
.end method

.method protected parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 43
    const-class v0, Lcom/wanduoduo/bean/LiKeFansBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 3

    .prologue
    .line 33
    const-string v0, "user_blacklist"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 34
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->baseListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 50
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;

    check-cast p1, Lcom/wanduoduo/bean/LiKeFansBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/LiKeFansBean;->getData()Lcom/wanduoduo/bean/LiKeFansBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/setting/SettingBlackPersonFragmetn;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->addData(Ljava/util/List;Z)V

    .line 53
    return-void
.end method
