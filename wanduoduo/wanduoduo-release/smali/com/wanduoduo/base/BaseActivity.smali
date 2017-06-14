.class public abstract Lcom/wanduoduo/base/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected beforeSelectedPosition:I

.field protected currentSelectedPosition:I

.field protected isHaveTitleBar:Z

.field protected isSwipe:Z

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

.field protected rootView:Landroid/view/View;

.field protected tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/wanduoduo/base/BaseActivity;->isHaveTitleBar:Z

    .line 35
    iput-boolean v0, p0, Lcom/wanduoduo/base/BaseActivity;->isSwipe:Z

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/wanduoduo/base/BaseActivity;->currentSelectedPosition:I

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/wanduoduo/base/BaseActivity;->beforeSelectedPosition:I

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/base/BaseActivity;->mFragment:Ljava/util/List;

    return-void
.end method

.method private setPhoneOrientation()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wanduoduo/base/BaseActivity;->setRequestedOrientation(I)V

    .line 81
    return-void
.end method


# virtual methods
.method protected dealWithFragment()V
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 122
    .local v1, transaction:Landroid/support/v4/app/FragmentTransaction;
    iget v2, p0, Lcom/wanduoduo/base/BaseActivity;->currentSelectedPosition:I

    iget v3, p0, Lcom/wanduoduo/base/BaseActivity;->beforeSelectedPosition:I

    if-ne v2, v3, :cond_0

    .line 135
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseActivity;->getFragment()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/wanduoduo/base/BaseActivity;->currentSelectedPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 126
    .local v0, baseFragment:Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 131
    :goto_1
    iget v2, p0, Lcom/wanduoduo/base/BaseActivity;->beforeSelectedPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseActivity;->getFragment()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/wanduoduo/base/BaseActivity;->beforeSelectedPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 134
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 129
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
    .line 139
    iget-object v0, p0, Lcom/wanduoduo/base/BaseActivity;->mFragment:Ljava/util/List;

    return-object v0
.end method

.method protected abstract getLayoutRes()I
.end method

.method protected abstract initData()V
.end method

.method protected initSwipeBack()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x3f00

    .line 55
    iget-boolean v0, p0, Lcom/wanduoduo/base/BaseActivity;->isSwipe:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/jude/swipbackhelper/SwipeBackHelper;->onCreate(Landroid/app/Activity;)V

    .line 57
    invoke-static {p0}, Lcom/jude/swipbackhelper/SwipeBackHelper;->getCurrentPage(Landroid/app/Activity;)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Lcom/jude/swipbackhelper/SwipeBackPage;->setSwipeBackEnable(Z)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v2}, Lcom/jude/swipbackhelper/SwipeBackPage;->setSwipeSensitivity(F)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Lcom/jude/swipbackhelper/SwipeBackPage;->setSwipeRelateEnable(Z)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    const v1, 0x3dcccccd

    .line 61
    invoke-virtual {v0, v1}, Lcom/jude/swipbackhelper/SwipeBackPage;->setSwipeEdgePercent(F)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    const/16 v1, 0x1f4

    .line 62
    invoke-virtual {v0, v1}, Lcom/jude/swipbackhelper/SwipeBackPage;->setSwipeRelateOffset(I)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v2}, Lcom/jude/swipbackhelper/SwipeBackPage;->setClosePercent(F)Lcom/jude/swipbackhelper/SwipeBackPage;

    .line 65
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseActivity;->setStatusBar()V

    .line 40
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;->setPhoneOrientation()V

    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseActivity;->getLayoutRes()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/base/BaseActivity;->rootView:Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseActivity;->initSwipeBack()V

    .line 44
    iget-boolean v1, p0, Lcom/wanduoduo/base/BaseActivity;->isHaveTitleBar:Z

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseActivity;->setTitleBar()V

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/base/BaseActivity;->rootView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/wanduoduo/base/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 47
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)V

    .line 48
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseActivity;->initData()V

    .line 50
    invoke-static {}, Lcom/wanduoduo/utils/MyCrashHandler;->getInstance()Lcom/wanduoduo/utils/MyCrashHandler;

    move-result-object v0

    .line 51
    .local v0, myCrashHandler:Lcom/wanduoduo/utils/MyCrashHandler;
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/utils/MyCrashHandler;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 111
    iget-boolean v0, p0, Lcom/wanduoduo/base/BaseActivity;->isSwipe:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p0}, Lcom/jude/swipbackhelper/SwipeBackHelper;->onDestroy(Landroid/app/Activity;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 148
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 104
    iget-boolean v0, p0, Lcom/wanduoduo/base/BaseActivity;->isSwipe:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/jude/swipbackhelper/SwipeBackHelper;->onPostCreate(Landroid/app/Activity;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 144
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method protected setStatusBar()V
    .locals 3

    .prologue
    .line 84
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/wanduoduo/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 86
    .local v0, window:Landroid/view/Window;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 87
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 89
    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 92
    .end local v0           #window:Landroid/view/Window;
    :cond_0
    return-void
.end method

.method protected setTitleBar()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/wanduoduo/base/BaseActivity;->rootView:Landroid/view/View;

    const v2, 0x7f0e01ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wanduoduo/base/BaseActivity;->tvTitle:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/wanduoduo/base/BaseActivity;->rootView:Landroid/view/View;

    const v2, 0x7f0e00e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .local v0, ivLeftTitleBar:Landroid/widget/ImageView;
    new-instance v1, Lcom/wanduoduo/base/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/base/BaseActivity$1;-><init>(Lcom/wanduoduo/base/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method
