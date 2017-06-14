.class public Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;
.super Lcom/wanduoduo/base/BaseListRefreshFragment;
.source "InfoLikeTheyFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;
    }
.end annotation


# static fields
.field private static final FOLLOW:I = 0x2710

.field private static final UNFOLLOW:I = 0x2711


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseListRefreshFragment;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->type:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic access$200(Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->adapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method private follow(IILjava/lang/String;)V
    .locals 4
    .parameter "relationStatus"
    .parameter "position"
    .parameter "user_id"

    .prologue
    .line 125
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 126
    :cond_0
    const-string v0, "user_unfollow"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "user_id"

    .line 127
    invoke-static {v1, p3}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;

    const/16 v3, 0x2711

    invoke-direct {v2, p0, v3, p2}, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;-><init>(Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;II)V

    .line 126
    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string v0, "user_unfollow"

    invoke-static {}, Lcom/wanduoduo/utils/MapUtils;->clear()Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "token"

    const-string v2, "token"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    const-string v1, "user_id"

    .line 130
    invoke-static {v1, p3}, Lcom/wanduoduo/utils/MapUtils;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/wanduoduo/utils/MapUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/utils/MapUtils;->getMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;

    const/16 v3, 0x2710

    invoke-direct {v2, p0, v3, p2}, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment$MyOnRefreshListen;-><init>(Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;II)V

    .line 129
    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendPostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    goto :goto_0
.end method

.method private getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->type:Ljava/lang/String;

    return-object v0
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
    const-string v0, "user_id"

    const-string v1, "user_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "type"

    invoke-direct {p0}, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "page"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-super {p0, p1}, Lcom/wanduoduo/base/BaseListRefreshFragment;->addParams(Ljava/util/Map;)V

    .line 65
    return-void
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 80
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
    .line 90
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "isCanEdit"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;

    iget-object v2, v2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean$DataListBean;->getId()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, user_id:Ljava/lang/String;
    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public parseData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "result"

    .prologue
    .line 85
    const-class v0, Lcom/wanduoduo/bean/LiKeFansBean;

    invoke-static {p1, v0}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected sendDataRequest()V
    .locals 3

    .prologue
    .line 55
    const-string v0, "user_followlist"

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->getMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->mListener:Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 56
    return-void
.end method

.method public updateAdapter(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 74
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->baseListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 75
    iget-object v0, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->adapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;

    check-cast p1, Lcom/wanduoduo/bean/LiKeFansBean;

    .end local p1
    invoke-virtual {p1}, Lcom/wanduoduo/bean/LiKeFansBean;->getData()Lcom/wanduoduo/bean/LiKeFansBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/LiKeFansBean$DataBean;->getData_list()Ljava/util/List;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;->isRefreshData:Z

    invoke-virtual {v0, v1, v2}, Lcom/wanduoduo/adapter/info/InfoLoveAdapter;->addData(Ljava/util/List;Z)V

    .line 76
    return-void
.end method
