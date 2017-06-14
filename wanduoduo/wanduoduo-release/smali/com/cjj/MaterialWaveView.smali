.class public Lcom/cjj/MaterialWaveView;
.super Landroid/view/View;
.source "MaterialWaveView.java"

# interfaces
.implements Lcom/cjj/MaterialHeadListener;


# static fields
.field public static DefaulHeadHeight:I

.field public static DefaulWaveHeight:I


# instance fields
.field private color:I

.field private headHeight:I

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private waveHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cjj/MaterialWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cjj/MaterialWaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/cjj/MaterialWaveView;->init()V

    .line 34
    return-void
.end method

.method static synthetic access$002(Lcom/cjj/MaterialWaveView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/cjj/MaterialWaveView;->headHeight:I

    return p1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cjj/MaterialWaveView;->setWillNotDraw(Z)V

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/cjj/MaterialWaveView;->path:Landroid/graphics/Path;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cjj/MaterialWaveView;->paint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/cjj/MaterialWaveView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/cjj/MaterialWaveView;->color:I

    return v0
.end method

.method public getDefaulHeadHeight()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/cjj/MaterialWaveView;->DefaulHeadHeight:I

    return v0
.end method

.method public getDefaulWaveHeight()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/cjj/MaterialWaveView;->DefaulWaveHeight:I

    return v0
.end method

.method public getHeadHeight()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/cjj/MaterialWaveView;->headHeight:I

    return v0
.end method

.method public getWaveHeight()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/cjj/MaterialWaveView;->waveHeight:I

    return v0
.end method

.method public onBegin(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 0
    .parameter "br"

    .prologue
    .line 115
    return-void
.end method

.method public onComlete(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 4
    .parameter "br"

    .prologue
    const/4 v3, 0x0

    .line 97
    iput v3, p0, Lcom/cjj/MaterialWaveView;->waveHeight:I

    .line 98
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/cjj/MaterialWaveView;->headHeight:I

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 99
    .local v0, animator:Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 102
    new-instance v1, Lcom/cjj/MaterialWaveView$1;

    invoke-direct {v1, p0}, Lcom/cjj/MaterialWaveView$1;-><init>(Lcom/cjj/MaterialWaveView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    iget-object v0, p0, Lcom/cjj/MaterialWaveView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 88
    iget-object v0, p0, Lcom/cjj/MaterialWaveView;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/cjj/MaterialWaveView;->headHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 89
    iget-object v0, p0, Lcom/cjj/MaterialWaveView;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/cjj/MaterialWaveView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/cjj/MaterialWaveView;->headHeight:I

    iget v3, p0, Lcom/cjj/MaterialWaveView;->waveHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/cjj/MaterialWaveView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/cjj/MaterialWaveView;->headHeight:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 90
    iget-object v0, p0, Lcom/cjj/MaterialWaveView;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/cjj/MaterialWaveView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    iget-object v0, p0, Lcom/cjj/MaterialWaveView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/cjj/MaterialWaveView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 92
    return-void
.end method

.method public onPull(Lcom/cjj/MaterialRefreshLayout;F)V
    .locals 3
    .parameter "br"
    .parameter "fraction"

    .prologue
    const/high16 v2, 0x3f80

    .line 119
    invoke-virtual {p0}, Lcom/cjj/MaterialWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cjj/MaterialWaveView;->DefaulHeadHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/cjj/Util;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, p2}, Lcom/cjj/Util;->limitValue(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/cjj/MaterialWaveView;->setHeadHeight(I)V

    .line 120
    invoke-virtual {p0}, Lcom/cjj/MaterialWaveView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/cjj/MaterialWaveView;->DefaulWaveHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/cjj/Util;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    sub-float v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/cjj/MaterialWaveView;->setWaveHeight(I)V

    .line 121
    invoke-virtual {p0}, Lcom/cjj/MaterialWaveView;->invalidate()V

    .line 122
    return-void
.end method

.method public onRefreshing(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 4
    .parameter "br"

    .prologue
    const/4 v3, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/cjj/MaterialWaveView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cjj/MaterialWaveView;->DefaulHeadHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/cjj/Util;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cjj/MaterialWaveView;->setHeadHeight(I)V

    .line 132
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0}, Lcom/cjj/MaterialWaveView;->getWaveHeight()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 133
    .local v0, animator:Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/cjj/MaterialWaveView$2;

    invoke-direct {v1, p0}, Lcom/cjj/MaterialWaveView$2;-><init>(Lcom/cjj/MaterialWaveView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 142
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 143
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 144
    return-void
.end method

.method public onRelease(Lcom/cjj/MaterialRefreshLayout;F)V
    .locals 0
    .parameter "br"
    .parameter "fraction"

    .prologue
    .line 127
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 48
    iput p1, p0, Lcom/cjj/MaterialWaveView;->color:I

    .line 49
    iget-object v0, p0, Lcom/cjj/MaterialWaveView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    return-void
.end method

.method public setDefaulHeadHeight(I)V
    .locals 0
    .parameter "defaulHeadHeight"

    .prologue
    .line 81
    sput p1, Lcom/cjj/MaterialWaveView;->DefaulHeadHeight:I

    .line 82
    return-void
.end method

.method public setDefaulWaveHeight(I)V
    .locals 0
    .parameter "defaulWaveHeight"

    .prologue
    .line 73
    sput p1, Lcom/cjj/MaterialWaveView;->DefaulWaveHeight:I

    .line 74
    return-void
.end method

.method public setHeadHeight(I)V
    .locals 0
    .parameter "headHeight"

    .prologue
    .line 57
    iput p1, p0, Lcom/cjj/MaterialWaveView;->headHeight:I

    .line 58
    return-void
.end method

.method public setWaveHeight(I)V
    .locals 0
    .parameter "waveHeight"

    .prologue
    .line 65
    iput p1, p0, Lcom/cjj/MaterialWaveView;->waveHeight:I

    .line 66
    return-void
.end method
