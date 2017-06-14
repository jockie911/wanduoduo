.class public Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "ManageMySkillFragment.java"


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
    .line 21
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 31
    const v0, 0x7f040081

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 5

    .prologue
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->tabTitleLists:Ljava/util/List;

    .line 37
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->tabTitleLists:Ljava/util/List;

    const-string v2, "\u5df2\u901a\u8fc7"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->tabTitleLists:Ljava/util/List;

    const-string v2, "\u672a\u901a\u8fc7/\u5ba1\u6838\u4e2d"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->fmLists:Ljava/util/List;

    .line 41
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->fmLists:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;

    invoke-direct {v2}, Lcom/wanduoduo/fragment/managecenter/ManageMySkillYesFragment;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->fmLists:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/fragment/managecenter/ManageMySkillNoFragment;

    invoke-direct {v2}, Lcom/wanduoduo/fragment/managecenter/ManageMySkillNoFragment;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->tableLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 45
    new-instance v0, Lcom/wanduoduo/adapter/VpTableAdapter;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->fmLists:Ljava/util/List;

    iget-object v3, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->tabTitleLists:Ljava/util/List;

    iget-object v4, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->tableLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wanduoduo/adapter/VpTableAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;Landroid/support/design/widget/TabLayout;)V

    .line 46
    .local v0, vpTableAdapter:Lcom/wanduoduo/adapter/VpTableAdapter;
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->vpLove:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 47
    iget-object v1, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->tableLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/wanduoduo/fragment/managecenter/ManageMySkillFragment;->vpLove:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 48
    return-void
.end method
