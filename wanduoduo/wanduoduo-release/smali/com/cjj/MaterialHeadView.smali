.class public Lcom/cjj/MaterialHeadView;
.super Landroid/widget/FrameLayout;
.source "MaterialHeadView.java"

# interfaces
.implements Lcom/cjj/MaterialHeadListener;


# instance fields
.field private circleProgressBar:Lcom/cjj/CircleProgressBar;

.field private isShowArrow:Z

.field private isShowProgressBg:Z

.field private listener:Lcom/cjj/MaterialHeadListener;

.field private materialWaveView:Lcom/cjj/MaterialWaveView;

.field private progressBg:I

.field private progressSize:I

.field private progressStokeWidth:I

.field private progressTextColor:I

.field private progressValue:I

.field private progressValueMax:I

.field private progress_colors:[I

.field private textType:I

.field private waveColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cjj/MaterialHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cjj/MaterialHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0, p2, p3}, Lcom/cjj/MaterialHeadView;->init(Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/cjj/MaterialHeadView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/cjj/MaterialHeadView;->progressValue:I

    return v0
.end method

.method static synthetic access$100(Lcom/cjj/MaterialHeadView;)Lcom/cjj/CircleProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    return-object v0
.end method


# virtual methods
.method public getWaveColor()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/cjj/MaterialHeadView;->waveColor:I

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/cjj/MaterialHeadView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0, v1}, Lcom/cjj/MaterialHeadView;->setClipToPadding(Z)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/cjj/MaterialHeadView;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 120
    new-instance v1, Lcom/cjj/MaterialWaveView;

    invoke-virtual {p0}, Lcom/cjj/MaterialHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cjj/MaterialWaveView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    .line 121
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    iget v2, p0, Lcom/cjj/MaterialHeadView;->waveColor:I

    invoke-virtual {v1, v2}, Lcom/cjj/MaterialWaveView;->setColor(I)V

    .line 122
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    invoke-virtual {p0, v1}, Lcom/cjj/MaterialHeadView;->addView(Landroid/view/View;)V

    .line 124
    new-instance v1, Lcom/cjj/CircleProgressBar;

    invoke-virtual {p0}, Lcom/cjj/MaterialHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cjj/CircleProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    .line 125
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/cjj/MaterialHeadView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/cjj/MaterialHeadView;->progressSize:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/cjj/Util;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/cjj/MaterialHeadView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/cjj/MaterialHeadView;->progressSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/cjj/Util;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 127
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    invoke-virtual {v1, v0}, Lcom/cjj/CircleProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    iget-object v2, p0, Lcom/cjj/MaterialHeadView;->progress_colors:[I

    invoke-virtual {v1, v2}, Lcom/cjj/CircleProgressBar;->setColorSchemeColors([I)V

    .line 129
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    iget v2, p0, Lcom/cjj/MaterialHeadView;->progressStokeWidth:I

    invoke-virtual {v1, v2}, Lcom/cjj/CircleProgressBar;->setProgressStokeWidth(I)V

    .line 130
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    iget-boolean v2, p0, Lcom/cjj/MaterialHeadView;->isShowArrow:Z

    invoke-virtual {v1, v2}, Lcom/cjj/CircleProgressBar;->setShowArrow(Z)V

    .line 131
    iget-object v2, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    iget v1, p0, Lcom/cjj/MaterialHeadView;->textType:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/cjj/CircleProgressBar;->setShowProgressText(Z)V

    .line 132
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    iget v2, p0, Lcom/cjj/MaterialHeadView;->progressTextColor:I

    invoke-virtual {v1, v2}, Lcom/cjj/CircleProgressBar;->setTextColor(I)V

    .line 133
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    iget v2, p0, Lcom/cjj/MaterialHeadView;->progressValue:I

    invoke-virtual {v1, v2}, Lcom/cjj/CircleProgressBar;->setProgress(I)V

    .line 134
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    iget v2, p0, Lcom/cjj/MaterialHeadView;->progressValueMax:I

    invoke-virtual {v1, v2}, Lcom/cjj/CircleProgressBar;->setMax(I)V

    .line 135
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    iget-boolean v2, p0, Lcom/cjj/MaterialHeadView;->isShowProgressBg:Z

    invoke-virtual {v1, v2}, Lcom/cjj/CircleProgressBar;->setCircleBackgroundEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    iget v2, p0, Lcom/cjj/MaterialHeadView;->progressBg:I

    invoke-virtual {v1, v2}, Lcom/cjj/CircleProgressBar;->setProgressBackGroundColor(I)V

    .line 137
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    invoke-virtual {p0, v1}, Lcom/cjj/MaterialHeadView;->addView(Landroid/view/View;)V

    .line 138
    return-void

    .line 131
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBegin(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 1
    .parameter "materialRefreshLayout"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialWaveView;->onBegin(Lcom/cjj/MaterialRefreshLayout;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/cjj/CircleProgressBar;->onBegin(Lcom/cjj/MaterialRefreshLayout;)V

    .line 166
    :cond_1
    return-void
.end method

.method public onComlete(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 2
    .parameter "materialRefreshLayout"

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialWaveView;->onComlete(Lcom/cjj/MaterialRefreshLayout;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/cjj/CircleProgressBar;->onComlete(Lcom/cjj/MaterialRefreshLayout;)V

    .line 149
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 150
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 151
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 154
    :cond_1
    return-void
.end method

.method public onPull(Lcom/cjj/MaterialRefreshLayout;F)V
    .locals 3
    .parameter "materialRefreshLayout"
    .parameter "fraction"

    .prologue
    const/high16 v2, 0x3f80

    .line 170
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    invoke-virtual {v1, p1, p2}, Lcom/cjj/MaterialWaveView;->onPull(Lcom/cjj/MaterialRefreshLayout;F)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    invoke-virtual {v1, p1, p2}, Lcom/cjj/CircleProgressBar;->onPull(Lcom/cjj/MaterialRefreshLayout;F)V

    .line 177
    invoke-static {v2, p2}, Lcom/cjj/Util;->limitValue(FF)F

    move-result v0

    .line 178
    .local v0, a:F
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 179
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 180
    iget-object v1, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 182
    .end local v0           #a:F
    :cond_1
    return-void
.end method

.method public onRefreshing(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 1
    .parameter "materialRefreshLayout"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialWaveView;->onRefreshing(Lcom/cjj/MaterialRefreshLayout;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->circleProgressBar:Lcom/cjj/CircleProgressBar;

    invoke-virtual {v0, p1}, Lcom/cjj/CircleProgressBar;->onRefreshing(Lcom/cjj/MaterialRefreshLayout;)V

    .line 199
    :cond_1
    return-void
.end method

.method public onRelease(Lcom/cjj/MaterialRefreshLayout;F)V
    .locals 0
    .parameter "materialRefreshLayout"
    .parameter "fraction"

    .prologue
    .line 187
    return-void
.end method

.method public setIsProgressBg(Z)V
    .locals 0
    .parameter "isShowProgressBg"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/cjj/MaterialHeadView;->isShowProgressBg:Z

    .line 73
    return-void
.end method

.method public setProgressBg(I)V
    .locals 0
    .parameter "progressBg"

    .prologue
    .line 67
    iput p1, p0, Lcom/cjj/MaterialHeadView;->progressBg:I

    .line 68
    return-void
.end method

.method public setProgressColors([I)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cjj/MaterialHeadView;->progress_colors:[I

    .line 83
    return-void
.end method

.method public setProgressSize(I)V
    .locals 0
    .parameter "progressSize"

    .prologue
    .line 62
    iput p1, p0, Lcom/cjj/MaterialHeadView;->progressSize:I

    .line 63
    return-void
.end method

.method public setProgressStokeWidth(I)V
    .locals 0
    .parameter "w"

    .prologue
    .line 109
    iput p1, p0, Lcom/cjj/MaterialHeadView;->progressStokeWidth:I

    .line 110
    return-void
.end method

.method public setProgressTextColor(I)V
    .locals 0
    .parameter "textColor"

    .prologue
    .line 77
    iput p1, p0, Lcom/cjj/MaterialHeadView;->progressTextColor:I

    .line 78
    return-void
.end method

.method public setProgressValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 92
    iput p1, p0, Lcom/cjj/MaterialHeadView;->progressValue:I

    .line 93
    new-instance v0, Lcom/cjj/MaterialHeadView$1;

    invoke-direct {v0, p0}, Lcom/cjj/MaterialHeadView$1;-><init>(Lcom/cjj/MaterialHeadView;)V

    invoke-virtual {p0, v0}, Lcom/cjj/MaterialHeadView;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method public setProgressValueMax(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 104
    iput p1, p0, Lcom/cjj/MaterialHeadView;->progressValueMax:I

    .line 105
    return-void
.end method

.method public setTextType(I)V
    .locals 0
    .parameter "textType"

    .prologue
    .line 87
    iput p1, p0, Lcom/cjj/MaterialHeadView;->textType:I

    .line 88
    return-void
.end method

.method public setWaveColor(I)V
    .locals 2
    .parameter "waveColor"

    .prologue
    .line 53
    iput p1, p0, Lcom/cjj/MaterialHeadView;->waveColor:I

    .line 54
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/cjj/MaterialHeadView;->materialWaveView:Lcom/cjj/MaterialWaveView;

    iget v1, p0, Lcom/cjj/MaterialHeadView;->waveColor:I

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialWaveView;->setColor(I)V

    .line 58
    :cond_0
    return-void
.end method

.method public showProgressArrow(Z)V
    .locals 0
    .parameter "isShowArrow"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/cjj/MaterialHeadView;->isShowArrow:Z

    .line 115
    return-void
.end method
