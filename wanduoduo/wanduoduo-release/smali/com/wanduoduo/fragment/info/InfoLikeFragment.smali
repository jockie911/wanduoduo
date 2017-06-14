.class public Lcom/wanduoduo/fragment/info/InfoLikeFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "InfoLikeFragment.java"


# instance fields
.field protected fmLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected tabTitleLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected tableLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0261
        }
    .end annotation
.end field

.field protected vpLove:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0262
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 34
    const v0, 0x7f04007c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 5

    .prologue
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->tabTitleLists:Ljava/util/List;

    .line 40
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->tabTitleLists:Ljava/util/List;

    const-string v2, "\u559c\u6b22\u6211"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->tabTitleLists:Ljava/util/List;

    const-string v2, "\u6211\u559c\u6b22"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->tabTitleLists:Ljava/util/List;

    const-string v2, "\u4e92\u76f8\u559c\u6b22"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->fmLists:Ljava/util/List;

    .line 45
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->fmLists:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;

    const-string v3, "2"

    invoke-direct {v2, v3}, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->fmLists:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;

    const-string v3, "1"

    invoke-direct {v2, v3}, Lcom/wanduoduo/fragment/info/InfoLikeTheyFragment;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->fmLists:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoLikeBothFragment;

    invoke-direct {v2}, Lcom/wanduoduo/fragment/info/InfoLikeBothFragment;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->tableLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 50
    new-instance v0, Lcom/wanduoduo/adapter/VpTableAdapter;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->fmLists:Ljava/util/List;

    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->tabTitleLists:Ljava/util/List;

    iget-object v4, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->tableLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wanduoduo/adapter/VpTableAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;Landroid/support/design/widget/TabLayout;)V

    .line 51
    .local v0, vpTableAdapter:Lcom/wanduoduo/adapter/VpTableAdapter;
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->vpLove:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 52
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->tableLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->vpLove:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 53
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00e1
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e00e1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoLikeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 60
    :cond_0
    return-void
.end method
