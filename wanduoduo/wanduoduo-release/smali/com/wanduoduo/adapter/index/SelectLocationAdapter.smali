.class public Lcom/wanduoduo/adapter/index/SelectLocationAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectLocationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_ALL:I = 0x1


# instance fields
.field public isSearch:Z

.field public mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectLocationActivity:Lcom/wanduoduo/ui/index/SelectLocationActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/index/SelectLocationActivity;)V
    .locals 1
    .parameter "selectLocationActivity"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->selectLocationActivity:Lcom/wanduoduo/ui/index/SelectLocationActivity;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/adapter/index/SelectLocationAdapter;)Lcom/wanduoduo/ui/index/SelectLocationActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->selectLocationActivity:Lcom/wanduoduo/ui/index/SelectLocationActivity;

    return-object v0
.end method


# virtual methods
.method public addData(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "isSearch"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, all_city:Ljava/util/List;,"Ljava/util/List<Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;>;"
    iput-boolean p2, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->isSearch:Z

    .line 37
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->isSearch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "letter"

    .prologue
    .line 79
    const-string v1, "\u5b9a"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 91
    :goto_0
    return v1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 65
    iget-boolean v1, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->isSearch:Z

    if-nez v1, :cond_0

    .line 66
    if-nez p1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 74
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "i"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->getItemViewType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 145
    :cond_0
    :goto_0
    return-object p2

    .line 99
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0400b0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 100
    const v3, 0x7f0e00c1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 102
    .local v2, tvLocation:Landroid/widget/TextView;
    new-instance v3, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$1;

    invoke-direct {v3, p0, v2}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$1;-><init>(Lcom/wanduoduo/adapter/index/SelectLocationAdapter;Landroid/widget/TextView;)V

    invoke-static {v3}, Lcom/wanduoduo/utils/BDLocationUtils;->start(Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;)V

    .line 110
    new-instance v3, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$2;

    invoke-direct {v3, p0, v2}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$2;-><init>(Lcom/wanduoduo/adapter/index/SelectLocationAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 122
    .end local v2           #tvLocation:Landroid/widget/TextView;
    :pswitch_1
    if-nez p2, :cond_1

    .line 123
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0400af

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 124
    :cond_1
    #calls: Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;->getHolder(Landroid/view/View;)Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;
    invoke-static {p2}, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;->access$100(Landroid/view/View;)Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;

    move-result-object v0

    .line 125
    .local v0, holder:Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;
    move v1, p1

    .line 126
    .local v1, pos:I
    iget-boolean v3, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->isSearch:Z

    if-nez v3, :cond_2

    .line 128
    add-int/lit8 v1, p1, -0x1

    .line 130
    :cond_2
    if-lez v1, :cond_4

    .line 131
    iget-object v3, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    iget-object v3, v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;->tvItemHead:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    :goto_1
    iget-object v4, v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;->tvPlace:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v3, v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;->tvItemHead:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v4, v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;->tvItemHead:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 138
    :cond_4
    if-nez v1, :cond_0

    .line 139
    iget-object v3, v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;->tvItemHead:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v4, v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;->tvItemHead:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v4, v0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter$ViewHolder;->tvPlace:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;

    invoke-virtual {v3}, Lcom/wanduoduo/bean/CityAllBean$DataBean$AllCityBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/wanduoduo/adapter/index/SelectLocationAdapter;->isSearch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0106

    if-ne v0, v1, :cond_0

    .line 153
    :cond_0
    return-void
.end method
