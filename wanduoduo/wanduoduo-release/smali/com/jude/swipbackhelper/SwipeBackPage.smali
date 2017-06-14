.class public Lcom/jude/swipbackhelper/SwipeBackPage;
.super Ljava/lang/Object;
.source "SwipeBackPage.java"


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mEnable:Z

.field private mRelativeEnable:Z

.field mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

.field slider:Lcom/jude/swipbackhelper/RelateSlider;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mEnable:Z

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mRelativeEnable:Z

    .line 22
    iput-object p1, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mActivity:Landroid/app/Activity;

    .line 23
    return-void
.end method

.method private handleLayout()V
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mRelativeEnable:Z

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->attachToActivity(Landroid/app/Activity;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->removeFromActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/jude/swipbackhelper/SwipeListener;)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 1
    .parameter "listener"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    invoke-virtual {v0, p1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->addSwipeListener(Lcom/jude/swipbackhelper/SwipeListener;)V

    .line 104
    return-object p0
.end method

.method public getSwipeBackLayout()Lcom/jude/swipbackhelper/SwipeBackLayout;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    return-object v0
.end method

.method onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 27
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    new-instance v0, Lcom/jude/swipbackhelper/SwipeBackLayout;

    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    .line 30
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    new-instance v0, Lcom/jude/swipbackhelper/RelateSlider;

    invoke-direct {v0, p0}, Lcom/jude/swipbackhelper/RelateSlider;-><init>(Lcom/jude/swipbackhelper/SwipeBackPage;)V

    iput-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->slider:Lcom/jude/swipbackhelper/RelateSlider;

    .line 32
    return-void
.end method

.method onPostCreate()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/jude/swipbackhelper/SwipeBackPage;->handleLayout()V

    .line 36
    return-void
.end method

.method public removeListener(Lcom/jude/swipbackhelper/SwipeListener;)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 1
    .parameter "listener"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    invoke-virtual {v0, p1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->removeSwipeListener(Lcom/jude/swipbackhelper/SwipeListener;)V

    .line 109
    return-object p0
.end method

.method public scrollToFinishActivity()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    invoke-virtual {v0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->scrollToFinishActivity()V

    .line 118
    return-void
.end method

.method public setClosePercent(F)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 1
    .parameter "percent"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    invoke-virtual {v0, p1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setScrollThreshold(F)V

    .line 94
    return-object p0
.end method

.method public setDisallowInterceptTouchEvent(Z)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 1
    .parameter "disallowIntercept"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    invoke-virtual {v0, p1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setDisallowInterceptTouchEvent(Z)V

    .line 99
    return-object p0
.end method

.method public setScrimColor(I)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 1
    .parameter "color"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    invoke-virtual {v0, p1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setScrimColor(I)V

    .line 88
    return-object p0
.end method

.method public setSwipeBackEnable(Z)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 1
    .parameter "enable"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mEnable:Z

    .line 54
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    invoke-virtual {v0, p1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setEnableGesture(Z)V

    .line 55
    invoke-direct {p0}, Lcom/jude/swipbackhelper/SwipeBackPage;->handleLayout()V

    .line 56
    return-object p0
.end method

.method public setSwipeEdge(I)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 1
    .parameter "swipeEdge"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    invoke-virtual {v0, p1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setEdgeSize(I)V

    .line 70
    return-object p0
.end method

.method public setSwipeEdgePercent(F)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 1
    .parameter "swipeEdgePercent"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    invoke-virtual {v0, p1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setEdgeSizePercent(F)V

    .line 76
    return-object p0
.end method

.method public setSwipeRelateEnable(Z)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 1
    .parameter "enable"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mRelativeEnable:Z

    .line 42
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->slider:Lcom/jude/swipbackhelper/RelateSlider;

    invoke-virtual {v0, p1}, Lcom/jude/swipbackhelper/RelateSlider;->setEnable(Z)V

    .line 43
    return-object p0
.end method

.method public setSwipeRelateOffset(I)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 1
    .parameter "offset"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->slider:Lcom/jude/swipbackhelper/RelateSlider;

    invoke-virtual {v0, p1}, Lcom/jude/swipbackhelper/RelateSlider;->setOffset(I)V

    .line 48
    return-object p0
.end method

.method public setSwipeSensitivity(F)Lcom/jude/swipbackhelper/SwipeBackPage;
    .locals 2
    .parameter "sensitivity"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mSwipeBackLayout:Lcom/jude/swipbackhelper/SwipeBackLayout;

    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackPage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setSensitivity(Landroid/content/Context;F)V

    .line 82
    return-object p0
.end method
