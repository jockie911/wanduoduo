.class public Lcom/wanduoduo/ui/index/SelectLocationActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "SelectLocationActivity.java"

# interfaces
.implements Lcom/wanduoduo/widget/SideLetterBar$OnLetterChangedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/ui/index/SelectLocationActivity$MyOnRefreshListen;
    }
.end annotation


# instance fields
.field private cityAllBean:Lcom/wanduoduo/bean/CityAllBean;

.field etCity:Landroid/widget/EditText;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01d0
        }
    .end annotation
.end field

.field lvPlace:Landroid/widget/ListView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00c6
        }
    .end annotation
.end field

.field mHandler:Lcom/wanduoduo/widget/MyHandler;

.field private selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

.field sideLetterBar:Lcom/wanduoduo/widget/SideLetterBar;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e01d1
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/wanduoduo/ui/index/SelectLocationActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/index/SelectLocationActivity$1;-><init>(Lcom/wanduoduo/ui/index/SelectLocationActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->mHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/index/SelectLocationActivity;)Lcom/wanduoduo/bean/CityAllBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->cityAllBean:Lcom/wanduoduo/bean/CityAllBean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/ui/index/SelectLocationActivity;Lcom/wanduoduo/bean/CityAllBean;)Lcom/wanduoduo/bean/CityAllBean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->cityAllBean:Lcom/wanduoduo/bean/CityAllBean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/index/SelectLocationActivity;)Lcom/wanduoduo/adapter/index/SelectLocationAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    return-object v0
.end method

.method private getSearchResult(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "search"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v2, searchResultLists:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;>;"
    iget-object v3, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->cityAllBean:Lcom/wanduoduo/bean/CityAllBean;

    if-eqz v3, :cond_3

    .line 128
    iget-object v3, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->cityAllBean:Lcom/wanduoduo/bean/CityAllBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/CityAllBean;->getData()Lcom/wanduoduo/bean/CityAllBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wanduoduo/bean/CityAllBean$DataBean;->getAll_city()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    .line 129
    .local v1, all_city:Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;
    const/4 v0, 0x0

    .line 130
    .local v0, allCityBean:Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;
    invoke-virtual {v1}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getPinyin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    :cond_1
    new-instance v0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    .end local v0           #allCityBean:Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;
    invoke-direct {v0}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;-><init>()V

    .line 132
    .restart local v0       #allCityBean:Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;
    invoke-virtual {v1}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->setId(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getPinyin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->setPinyin(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->setTitle(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->setType(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->setCode(Ljava/lang/String;)V

    .line 138
    :cond_2
    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    .end local v0           #allCityBean:Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;
    .end local v1           #all_city:Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;
    :cond_3
    const/4 v2, 0x0

    .end local v2           #searchResultLists:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;>;"
    :cond_4
    return-object v2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 123
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 107
    return-void
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f040052

    return v0
.end method

.method protected initData()V
    .locals 4

    .prologue
    .line 48
    iget-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/index/SelectLocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07020b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->sideLetterBar:Lcom/wanduoduo/widget/SideLetterBar;

    invoke-virtual {v1, p0}, Lcom/wanduoduo/widget/SideLetterBar;->setOnLetterChangedListener(Lcom/wanduoduo/widget/SideLetterBar$OnLetterChangedListener;)V

    .line 50
    const-string v1, "city_list"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/wanduoduo/utils/SPUtils;->getStringData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, stringLocationCash:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "all_city"

    const/4 v2, 0x0

    new-instance v3, Lcom/wanduoduo/ui/index/SelectLocationActivity$MyOnRefreshListen;

    invoke-direct {v3, p0}, Lcom/wanduoduo/ui/index/SelectLocationActivity$MyOnRefreshListen;-><init>(Lcom/wanduoduo/ui/index/SelectLocationActivity;)V

    invoke-static {v1, v2, v3}, Lcom/wanduoduo/utils/OkHttpUtils;->sendGetRequest(Ljava/lang/String;Ljava/util/Map;Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;)V

    .line 58
    :goto_0
    new-instance v1, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    invoke-direct {v1, p0}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;-><init>(Lcom/wanduoduo/ui/index/SelectLocationActivity;)V

    iput-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    .line 59
    iget-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->lvPlace:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->lvPlace:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->etCity:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    return-void

    .line 55
    :cond_0
    const-class v1, Lcom/wanduoduo/bean/CityAllBean;

    invoke-static {v0, v1}, Lcom/wanduoduo/utils/GsonTools;->changeGsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CityAllBean;

    iput-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->cityAllBean:Lcom/wanduoduo/bean/CityAllBean;

    .line 56
    iget-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->mHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "i"
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
    .line 81
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    invoke-virtual {v0, p3}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    iget-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    iget-boolean v0, v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->isSearch:Z

    if-nez v0, :cond_0

    .line 89
    add-int/lit8 p3, p3, -0x1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getCode()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/wanduoduo/ui/index/SelectLocationActivity;->setDataResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLetterChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "letter"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->lvPlace:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    invoke-virtual {v1, p1}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->getIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "charSequence"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 111
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wanduoduo/ui/index/SelectLocationActivity;->getSearchResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, searchResultLists:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;>;"
    iget-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->addData(Ljava/util/List;Z)V

    .line 118
    .end local v0           #searchResultLists:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;>;"
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->selectLocationAdapter:Lcom/wanduoduo/adapter/index/SelectLocationAdapter;

    iget-object v2, p0, Lcom/wanduoduo/ui/index/SelectLocationActivity;->cityAllBean:Lcom/wanduoduo/bean/CityAllBean;

    invoke-virtual {v2}, Lcom/wanduoduo/bean/CityAllBean;->getData()Lcom/wanduoduo/bean/CityAllBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wanduoduo/bean/CityAllBean$DataBean;->getAll_city()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->addData(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public setDataResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cityName"
    .parameter "cityCode"
    .parameter "city_id"

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "city_title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "city_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "city_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/wanduoduo/ui/index/SelectLocationActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lcom/wanduoduo/ui/index/SelectLocationActivity;->finish()V

    .line 103
    return-void
.end method
