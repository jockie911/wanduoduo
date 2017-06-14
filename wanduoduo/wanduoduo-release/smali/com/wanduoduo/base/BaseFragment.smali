.class public abstract Lcom/wanduoduo/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected beforeSelectedPosition:I

.field protected currentSelectedPosition:I

.field protected mContext:Landroid/content/Context;

.field protected mFragment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/wanduoduo/base/BaseFragment;->currentSelectedPosition:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/wanduoduo/base/BaseFragment;->beforeSelectedPosition:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/base/BaseFragment;->mFragment:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected dealWithFragment()V
    .locals 4

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 67
    .local v1, transaction:Landroid/support/v4/app/FragmentTransaction;
    iget v2, p0, Lcom/wanduoduo/base/BaseFragment;->currentSelectedPosition:I

    iget v3, p0, Lcom/wanduoduo/base/BaseFragment;->beforeSelectedPosition:I

    if-ne v2, v3, :cond_0

    .line 80
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/wanduoduo/base/BaseFragment;->mFragment:Ljava/util/List;

    iget v3, p0, Lcom/wanduoduo/base/BaseFragment;->currentSelectedPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 71
    .local v0, baseFragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 76
    :goto_1
    iget v2, p0, Lcom/wanduoduo/base/BaseFragment;->beforeSelectedPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 77
    iget-object v2, p0, Lcom/wanduoduo/base/BaseFragment;->mFragment:Ljava/util/List;

    iget v3, p0, Lcom/wanduoduo/base/BaseFragment;->beforeSelectedPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 79
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 74
    :cond_2
    const v2, 0x7f0e00f0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method

.method protected getFragment()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wanduoduo/base/BaseFragment;->mFragment:Ljava/util/List;

    return-object v0
.end method

.method protected abstract inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method protected abstract initData()V
.end method

.method protected isUseButterKnife()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .end parameter
    .parameter "container"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "savedInstanceState"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/base/BaseFragment;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p0, p1}, Lcom/wanduoduo/base/BaseFragment;->inflater(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, view:Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)V

    .line 32
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseFragment;->isUseButterKnife()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0}, Lbutterknife/ButterKnife;->unbind(Ljava/lang/Object;)V

    .line 53
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 54
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .end parameter
    .parameter "savedInstanceState"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseFragment;->getFragment()Ljava/util/List;

    .line 38
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseFragment;->initData()V

    .line 39
    return-void
.end method

.method protected replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter "fm"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e00f0

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 58
    return-void
.end method
