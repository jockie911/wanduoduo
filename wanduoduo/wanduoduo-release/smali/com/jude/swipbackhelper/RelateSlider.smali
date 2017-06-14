.class public Lcom/jude/swipbackhelper/RelateSlider;
.super Ljava/lang/Object;
.source "RelateSlider.java"

# interfaces
.implements Lcom/jude/swipbackhelper/SwipeListener;


# static fields
.field private static final DEFAULT_OFFSET:I = 0x28


# instance fields
.field public curPage:Lcom/jude/swipbackhelper/SwipeBackPage;

.field private offset:I


# direct methods
.method public constructor <init>(Lcom/jude/swipbackhelper/SwipeBackPage;)V
    .locals 1
    .parameter "curActivity"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/jude/swipbackhelper/RelateSlider;->offset:I

    .line 14
    iput-object p1, p0, Lcom/jude/swipbackhelper/RelateSlider;->curPage:Lcom/jude/swipbackhelper/SwipeBackPage;

    .line 16
    return-void
.end method


# virtual methods
.method public onEdgeTouch()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onScroll(FI)V
    .locals 5
    .parameter "percent"
    .parameter "px"

    .prologue
    const/4 v4, 0x0

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 30
    iget-object v1, p0, Lcom/jude/swipbackhelper/RelateSlider;->curPage:Lcom/jude/swipbackhelper/SwipeBackPage;

    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackHelper;->getPrePage(Lcom/jude/swipbackhelper/SwipeBackPage;)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    .line 31
    .local v0, page:Lcom/jude/swipbackhelper/SwipeBackPage;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lcom/jude/swipbackhelper/SwipeBackPage;->getSwipeBackLayout()Lcom/jude/swipbackhelper/SwipeBackLayout;

    move-result-object v1

    iget v2, p0, Lcom/jude/swipbackhelper/RelateSlider;->offset:I

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x4220

    add-float/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setX(F)V

    .line 33
    cmpl-float v1, p1, v4

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/jude/swipbackhelper/SwipeBackPage;->getSwipeBackLayout()Lcom/jude/swipbackhelper/SwipeBackLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setX(F)V

    .line 38
    .end local v0           #page:Lcom/jude/swipbackhelper/SwipeBackPage;
    :cond_0
    return-void
.end method

.method public onScrollToClose()V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/jude/swipbackhelper/RelateSlider;->curPage:Lcom/jude/swipbackhelper/SwipeBackPage;

    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackHelper;->getPrePage(Lcom/jude/swipbackhelper/SwipeBackPage;)Lcom/jude/swipbackhelper/SwipeBackPage;

    move-result-object v0

    .line 48
    .local v0, page:Lcom/jude/swipbackhelper/SwipeBackPage;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 49
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jude/swipbackhelper/SwipeBackPage;->getSwipeBackLayout()Lcom/jude/swipbackhelper/SwipeBackLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->setX(F)V

    .line 51
    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 23
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jude/swipbackhelper/RelateSlider;->curPage:Lcom/jude/swipbackhelper/SwipeBackPage;

    invoke-virtual {v0, p0}, Lcom/jude/swipbackhelper/SwipeBackPage;->addListener(Lcom/jude/swipbackhelper/SwipeListener;)Lcom/jude/swipbackhelper/SwipeBackPage;

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/jude/swipbackhelper/RelateSlider;->curPage:Lcom/jude/swipbackhelper/SwipeBackPage;

    invoke-virtual {v0, p0}, Lcom/jude/swipbackhelper/SwipeBackPage;->removeListener(Lcom/jude/swipbackhelper/SwipeListener;)Lcom/jude/swipbackhelper/SwipeBackPage;

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 19
    iput p1, p0, Lcom/jude/swipbackhelper/RelateSlider;->offset:I

    .line 20
    return-void
.end method
