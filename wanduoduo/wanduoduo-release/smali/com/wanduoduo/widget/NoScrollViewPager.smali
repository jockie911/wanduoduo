.class public Lcom/wanduoduo/widget/NoScrollViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "NoScrollViewPager.java"


# instance fields
.field private noScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/widget/NoScrollViewPager;->noScroll:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/widget/NoScrollViewPager;->noScroll:Z

    .line 17
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/wanduoduo/widget/NoScrollViewPager;->noScroll:Z

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/wanduoduo/widget/NoScrollViewPager;->noScroll:Z

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 30
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 0
    .parameter "item"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 57
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 0
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 52
    return-void
.end method

.method public setNoScroll(Z)V
    .locals 0
    .parameter "noScroll"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/wanduoduo/widget/NoScrollViewPager;->noScroll:Z

    .line 25
    return-void
.end method
