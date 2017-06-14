.class public Lcom/wanduoduo/fragment/info/InfoWatchFragment;
.super Lcom/wanduoduo/fragment/info/InfoLikeFragment;
.source "InfoWatchFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/wanduoduo/fragment/info/InfoLikeFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 5

    .prologue
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->tabTitleLists:Ljava/util/List;

    .line 21
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->tabTitleLists:Ljava/util/List;

    const-string v2, "\u6765\u8bbf\u8005"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->tabTitleLists:Ljava/util/List;

    const-string v2, "\u6211\u770b\u8fc7\u7684\u4eba"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->fmLists:Ljava/util/List;

    .line 25
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->fmLists:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;

    invoke-direct {v2}, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->fmLists:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoWatchTheyFragment;

    invoke-direct {v2}, Lcom/wanduoduo/fragment/info/InfoWatchTheyFragment;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->tableLayout:Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 29
    new-instance v0, Lcom/wanduoduo/adapter/VpTableAdapter;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->fmLists:Ljava/util/List;

    iget-object v3, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->tabTitleLists:Ljava/util/List;

    iget-object v4, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->tableLayout:Landroid/support/design/widget/TabLayout;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wanduoduo/adapter/VpTableAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;Ljava/util/List;Landroid/support/design/widget/TabLayout;)V

    .line 30
    .local v0, vpTableAdapter:Lcom/wanduoduo/adapter/VpTableAdapter;
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->vpLove:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 31
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->tableLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->vpLove:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 33
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->mFragment:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;

    invoke-direct {v2}, Lcom/wanduoduo/fragment/info/InfoWatchMeFrafment;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, p0, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->mFragment:Ljava/util/List;

    new-instance v2, Lcom/wanduoduo/fragment/info/InfoWatchTheyFragment;

    invoke-direct {v2}, Lcom/wanduoduo/fragment/info/InfoWatchTheyFragment;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
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
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e00e1

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/info/InfoWatchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 42
    :cond_0
    return-void
.end method
