.class public Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;
.super Landroid/widget/BaseAdapter;
.source "PrefectionItemPlaceAdapter.java"


# instance fields
.field private isCheck:Z

.field public mAreaIDLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;",
            ">;"
        }
    .end annotation
.end field

.field private parentCode:Ljava/lang/String;

.field private playerPerfectionItemActivity:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;)V
    .locals 1
    .parameter "playerPerfectionItemActivity"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mData:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mAreaIDLists:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->playerPerfectionItemActivity:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;)Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->playerPerfectionItemActivity:Lcom/wanduoduo/ui/skill/PlayerPerfectionItemActivity;

    return-object v0
.end method


# virtual methods
.method public addData(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, grandSonBeen:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;>;"
    const/4 v1, 0x0

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->parentCode:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mAreaIDLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iput-boolean v1, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->isCheck:Z

    .line 104
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;->getParent_code()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->parentCode:Ljava/lang/String;

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->notifyDataSetChanged()V

    .line 109
    return-void
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->parentCode:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->parentCode:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mAreaIDLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->isCheck:Z

    .line 97
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->notifyDataSetChanged()V

    .line 98
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getParentCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->parentCode:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v4, 0x1

    .line 52
    if-nez p2, :cond_0

    .line 53
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040098

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 54
    :cond_0
    const v1, 0x7f0e0297

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;->getCity_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-boolean v1, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->isCheck:Z

    if-eqz v1, :cond_1

    .line 58
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    const v1, 0x7f02028a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 66
    :goto_0
    new-instance v1, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;

    invoke-direct {v1, p0, v0, p3, p1}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter$1;-><init>(Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;Landroid/widget/TextView;Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-object p2

    .line 62
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    const v1, 0x7f020288

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setDataCheck(Z)V
    .locals 4
    .parameter "isCheck"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->isCheck:Z

    .line 114
    iget-object v1, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mAreaIDLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 115
    iget-object v1, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mAreaIDLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 116
    iget-object v1, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;

    .line 117
    .local v0, id:Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;
    iget-object v2, p0, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->mAreaIDLists:Ljava/util/List;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .end local v0           #id:Lcom/wanduoduo/bean/CitySelectBean$DataBean$SonBean$GrandSonBean;
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/PrefectionItemPlaceAdapter;->notifyDataSetChanged()V

    .line 120
    return-void
.end method
