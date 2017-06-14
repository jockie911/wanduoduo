.class public Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "ManageOrderCenterFragment.java"


# instance fields
.field fmLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field tabTitleLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tableLayout:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0261
        }
    .end annotation
.end field

.field vpOrderCenter:Landroid/support/v4/view/ViewPager;
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
    .line 22
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 30
    const v0, 0x7f040081

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->tabTitleLists:Ljava/util/List;

    .line 38
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->tabTitleLists:Ljava/util/List;

    const-string v2, "\u5f85\u63a5\u5355"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->tabTitleLists:Ljava/util/List;

    const-string v2, "\u5f85\u670d\u52a1"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->tabTitleLists:Ljava/util/List;

    const-string v2, "\u7ed3\u675f"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->fmLists:Ljava/util/List;

    .line 43
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->fmLists:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;

    const-string v3, "1"

    invoke-direct {v2, v4, v3}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;-><init>(ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->fmLists:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;

    const-string v3, "2"

    invoke-direct {v2, v4, v3}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;-><init>(ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->fmLists:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;

    const-string v3, "2"

    invoke-direct {v2, v4, v3}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceAllFragment;-><init>(ZLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->tableLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 48
    new-instance v0, Lcom/wanduoduo/adapter/VpTableAdapter;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->fmLists:Ljava/util/List;

    iget-object v3, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->tabTitleLists:Ljava/util/List;

    iget-object v4, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->tableLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wanduoduo/adapter/VpTableAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;Landroid/support/design/widget/TabLayout;)V

    .line 49
    .local v0, vpTableAdapter:Lcom/wanduoduo/adapter/VpTableAdapter;
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->vpOrderCenter:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 50
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->tableLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageOrderCenterFragment;->vpOrderCenter:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 51
    return-void
.end method
