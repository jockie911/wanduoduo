.class public Lcom/wanduoduo/widget/ReboundsScrollView;
.super Landroid/widget/ScrollView;
.source "ReboundsScrollView.java"


# static fields
.field private static final ANIM_TIME:I = 0x12c

.field private static final MOVE_FACTOR:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "ElasticScrollView"


# instance fields
.field private canPullDown:Z

.field private canPullUp:Z

.field private contentView:Landroid/view/View;

.field private isMoved:Z

.field private originalRect:Landroid/graphics/Rect;

.field private startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->originalRect:Landroid/graphics/Rect;

    .line 36
    iput-boolean v1, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullDown:Z

    .line 39
    iput-boolean v1, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullUp:Z

    .line 42
    iput-boolean v1, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->isMoved:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->originalRect:Landroid/graphics/Rect;

    .line 36
    iput-boolean v1, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullDown:Z

    .line 39
    iput-boolean v1, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullUp:Z

    .line 42
    iput-boolean v1, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->isMoved:Z

    .line 50
    return-void
.end method

.method private isCanPullDown()Z
    .locals 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/wanduoduo/widget/ReboundsScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/wanduoduo/widget/ReboundsScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/wanduoduo/widget/ReboundsScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCanPullUp()Z
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/wanduoduo/widget/ReboundsScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/wanduoduo/widget/ReboundsScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 76
    iget-object v7, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    if-nez v7, :cond_0

    .line 77
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 151
    :goto_0
    return v6

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 82
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 151
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-direct {p0}, Lcom/wanduoduo/widget/ReboundsScrollView;->isCanPullDown()Z

    move-result v6

    iput-boolean v6, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullDown:Z

    .line 87
    invoke-direct {p0}, Lcom/wanduoduo/widget/ReboundsScrollView;->isCanPullUp()Z

    move-result v6

    iput-boolean v6, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullUp:Z

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->startY:F

    goto :goto_1

    .line 95
    :pswitch_1
    iget-boolean v6, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->isMoved:Z

    if-eqz v6, :cond_1

    .line 98
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v6, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->originalRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-direct {v1, v8, v8, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 100
    .local v1, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v6, 0x12c

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 102
    iget-object v6, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 105
    iget-object v6, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    iget-object v7, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->originalRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->originalRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->originalRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->originalRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 109
    iput-boolean v5, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullDown:Z

    .line 110
    iput-boolean v5, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullUp:Z

    .line 111
    iput-boolean v5, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->isMoved:Z

    goto :goto_1

    .line 117
    .end local v1           #anim:Landroid/view/animation/TranslateAnimation;
    :pswitch_2
    iget-boolean v7, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullDown:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullUp:Z

    if-nez v7, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->startY:F

    .line 119
    invoke-direct {p0}, Lcom/wanduoduo/widget/ReboundsScrollView;->isCanPullDown()Z

    move-result v6

    iput-boolean v6, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullDown:Z

    .line 120
    invoke-direct {p0}, Lcom/wanduoduo/widget/ReboundsScrollView;->isCanPullUp()Z

    move-result v6

    iput-boolean v6, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullUp:Z

    goto :goto_1

    .line 126
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 127
    .local v3, nowY:F
    iget v7, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->startY:F

    sub-float v7, v3, v7

    float-to-int v2, v7

    .line 130
    .local v2, deltaY:I
    iget-boolean v7, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullDown:Z

    if-eqz v7, :cond_3

    if-gtz v2, :cond_5

    :cond_3
    iget-boolean v7, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullUp:Z

    if-eqz v7, :cond_4

    if-ltz v2, :cond_5

    :cond_4
    iget-boolean v7, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullUp:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->canPullDown:Z

    if-eqz v7, :cond_6

    :cond_5
    move v5, v6

    .line 135
    .local v5, shouldMove:Z
    :cond_6
    if-eqz v5, :cond_1

    .line 137
    int-to-float v7, v2

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 140
    .local v4, offset:I
    iget-object v7, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    iget-object v8, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->originalRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->originalRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v4

    iget-object v10, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->originalRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->originalRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 143
    iput-boolean v6, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->isMoved:Z

    goto/16 :goto_1

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/wanduoduo/widget/ReboundsScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wanduoduo/widget/ReboundsScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    .line 57
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 61
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 63
    iget-object v0, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->originalRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    .line 67
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/wanduoduo/widget/ReboundsScrollView;->contentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 66
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
