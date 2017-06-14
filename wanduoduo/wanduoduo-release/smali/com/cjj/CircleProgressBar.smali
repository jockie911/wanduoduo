.class public Lcom/cjj/CircleProgressBar;
.super Landroid/widget/ImageView;
.source "CircleProgressBar.java"

# interfaces
.implements Lcom/cjj/MaterialHeadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cjj/CircleProgressBar$OvalShadow;
    }
.end annotation


# static fields
.field public static final DEFAULT_CIRCLE_BG_LIGHT:I = -0x50506

.field private static final DEFAULT_CIRCLE_DIAMETER:I = 0x28

.field public static final DEFAULT_TEXT_SIZE:I = 0x9

.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final STROKE_WIDTH_LARGE:I = 0x3

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private mArrowHeight:I

.field private mArrowWidth:I

.field private mBackGroundColor:I

.field private mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

.field private mCircleBackgroundEnabled:Z

.field private mColors:[I

.field private mDiameter:I

.field private mIfDrawText:Z

.field private mInnerRadius:I

.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mMax:I

.field private mProgress:I

.field private mProgressColor:I

.field public mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

.field private mProgressStokeWidth:I

.field private mShadowRadius:I

.field private mShowArrow:Z

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, -0x100

    aput v1, v0, v2

    iput-object v0, p0, Lcom/cjj/CircleProgressBar;->mColors:[I

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/cjj/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, -0x100

    aput v1, v0, v2

    iput-object v0, p0, Lcom/cjj/CircleProgressBar;->mColors:[I

    .line 87
    invoke-direct {p0, p1, p2, v2}, Lcom/cjj/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x100

    aput v2, v0, v1

    iput-object v0, p0, Lcom/cjj/CircleProgressBar;->mColors:[I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/cjj/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method private elevationSupported()Z
    .locals 2

    .prologue
    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const v4, -0x50506

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 99
    sget-object v3, Lcom/cjj/R$styleable;->CircleProgressBar:[I

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 104
    .local v1, density:F
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_background_color:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/cjj/CircleProgressBar;->mBackGroundColor:I

    .line 107
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_progress_color:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/cjj/CircleProgressBar;->mProgressColor:I

    .line 109
    new-array v3, v5, [I

    iget v4, p0, Lcom/cjj/CircleProgressBar;->mProgressColor:I

    aput v4, v3, v6

    iput-object v3, p0, Lcom/cjj/CircleProgressBar;->mColors:[I

    .line 111
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_inner_radius:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/cjj/CircleProgressBar;->mInnerRadius:I

    .line 114
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_progress_stoke_width:I

    const/high16 v4, 0x4040

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/cjj/CircleProgressBar;->mProgressStokeWidth:I

    .line 116
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_arrow_width:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/cjj/CircleProgressBar;->mArrowWidth:I

    .line 118
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_arrow_height:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/cjj/CircleProgressBar;->mArrowHeight:I

    .line 120
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_progress_text_size:I

    const/high16 v4, 0x4110

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/cjj/CircleProgressBar;->mTextSize:I

    .line 122
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_progress_text_color:I

    const/high16 v4, -0x100

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/cjj/CircleProgressBar;->mTextColor:I

    .line 125
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_show_arrow:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/cjj/CircleProgressBar;->mShowArrow:Z

    .line 126
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_enable_circle_background:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/cjj/CircleProgressBar;->mCircleBackgroundEnabled:Z

    .line 129
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_progress:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/cjj/CircleProgressBar;->mProgress:I

    .line 130
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_max:I

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/cjj/CircleProgressBar;->mMax:I

    .line 131
    sget v3, Lcom/cjj/R$styleable;->CircleProgressBar_mlpb_progress_text_visibility:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 132
    .local v2, textVisible:I
    if-eq v2, v5, :cond_0

    .line 133
    iput-boolean v5, p0, Lcom/cjj/CircleProgressBar;->mIfDrawText:Z

    .line 136
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/cjj/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 137
    iget-object v3, p0, Lcom/cjj/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v3, p0, Lcom/cjj/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/cjj/CircleProgressBar;->mTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    iget-object v3, p0, Lcom/cjj/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/cjj/CircleProgressBar;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 140
    iget-object v3, p0, Lcom/cjj/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    new-instance v3, Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/cjj/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    .line 143
    iget-object v3, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    invoke-super {p0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    return-void
.end method


# virtual methods
.method public circleBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/cjj/CircleProgressBar;->mCircleBackgroundEnabled:Z

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/cjj/CircleProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/cjj/CircleProgressBar;->mProgress:I

    return v0
.end method

.method public getProgressStokeWidth()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/cjj/CircleProgressBar;->mProgressStokeWidth:I

    return v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 362
    invoke-super {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public isShowArrow()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/cjj/CircleProgressBar;->mShowArrow:Z

    return v0
.end method

.method public isShowProgressText()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/cjj/CircleProgressBar;->mIfDrawText:Z

    return v0
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 277
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 280
    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 269
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 272
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 384
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/cjj/MaterialProgressDrawable;->stop()V

    .line 386
    iget-object v2, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/cjj/MaterialProgressDrawable;->setVisible(ZZ)Z

    .line 388
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 386
    goto :goto_0
.end method

.method public onBegin(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 3
    .parameter "materialRefreshLayout"

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cjj/CircleProgressBar;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    invoke-virtual {v0, v1, v2}, Lcom/cjj/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 412
    return-void
.end method

.method public onComlete(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 1
    .parameter "materialRefreshLayout"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/cjj/MaterialProgressDrawable;->stop()V

    .line 405
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/cjj/CircleProgressBar;->setVisibility(I)V

    .line 406
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 393
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/cjj/MaterialProgressDrawable;->stop()V

    .line 395
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {v0, v1, v1}, Lcom/cjj/MaterialProgressDrawable;->setVisible(ZZ)Z

    .line 397
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 230
    iget-boolean v3, p0, Lcom/cjj/CircleProgressBar;->mIfDrawText:Z

    if-eqz v3, :cond_0

    .line 231
    const-string v3, "%s%%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/cjj/CircleProgressBar;->mProgress:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/cjj/CircleProgressBar;->mTextSize:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    sub-int v1, v3, v4

    .line 233
    .local v1, x:I
    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/cjj/CircleProgressBar;->mTextSize:I

    div-int/lit8 v4, v4, 0x4

    add-int v2, v3, v4

    .line 234
    .local v2, y:I
    int-to-float v3, v1

    int-to-float v4, v2

    iget-object v5, p0, Lcom/cjj/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 236
    .end local v0           #text:Ljava/lang/String;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 180
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/cjj/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 182
    .local v2, density:F
    invoke-virtual/range {p0 .. p0}, Lcom/cjj/CircleProgressBar;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/cjj/CircleProgressBar;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/cjj/CircleProgressBar;->mDiameter:I

    .line 183
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cjj/CircleProgressBar;->mDiameter:I

    if-gtz v3, :cond_0

    .line 184
    float-to-int v3, v2

    mul-int/lit8 v3, v3, 0x28

    move-object/from16 v0, p0

    iput v3, v0, Lcom/cjj/CircleProgressBar;->mDiameter:I

    .line 186
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/cjj/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cjj/CircleProgressBar;->mCircleBackgroundEnabled:Z

    if-eqz v3, :cond_1

    .line 187
    const/high16 v3, 0x3fe0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    move/from16 v17, v0

    .line 188
    .local v17, shadowYOffset:I
    const/4 v3, 0x0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    move/from16 v16, v0

    .line 189
    .local v16, shadowXOffset:I
    const/high16 v3, 0x4060

    mul-float/2addr v3, v2

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/cjj/CircleProgressBar;->mShadowRadius:I

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/cjj/CircleProgressBar;->elevationSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cjj/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    .line 193
    const/high16 v3, 0x4080

    mul-float/2addr v3, v2

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 204
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cjj/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cjj/CircleProgressBar;->mBackGroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cjj/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/cjj/CircleProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    .end local v16           #shadowXOffset:I
    .end local v17           #shadowYOffset:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cjj/CircleProgressBar;->mBackGroundColor:I

    invoke-virtual {v3, v4}, Lcom/cjj/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cjj/CircleProgressBar;->mColors:[I

    invoke-virtual {v3, v4}, Lcom/cjj/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cjj/CircleProgressBar;->mDiameter:I

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/cjj/CircleProgressBar;->mDiameter:I

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/cjj/CircleProgressBar;->mInnerRadius:I

    if-gtz v8, :cond_5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/cjj/CircleProgressBar;->mDiameter:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/cjj/CircleProgressBar;->mProgressStokeWidth:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x4

    int-to-double v8, v8

    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/cjj/CircleProgressBar;->mProgressStokeWidth:I

    int-to-double v10, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/cjj/CircleProgressBar;->mArrowWidth:I

    if-gez v12, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/cjj/CircleProgressBar;->mProgressStokeWidth:I

    mul-int/lit8 v12, v12, 0x4

    int-to-float v12, v12

    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cjj/CircleProgressBar;->mArrowHeight:I

    if-gez v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/cjj/CircleProgressBar;->mProgressStokeWidth:I

    mul-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    :goto_3
    invoke-virtual/range {v3 .. v13}, Lcom/cjj/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/cjj/CircleProgressBar;->isShowArrow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/cjj/MaterialProgressDrawable;->showArrowOnFirstStart(Z)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/cjj/MaterialProgressDrawable;->setArrowScale(F)V

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/cjj/MaterialProgressDrawable;->showArrow(Z)V

    .line 219
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    move-object/from16 v0, p0

    invoke-super {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lcom/cjj/MaterialProgressDrawable;->setAlpha(I)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/cjj/CircleProgressBar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    const/4 v4, 0x0

    const v5, 0x3f4ccccd

    invoke-virtual {v3, v4, v5}, Lcom/cjj/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 225
    :cond_3
    return-void

    .line 195
    .restart local v16       #shadowXOffset:I
    .restart local v17       #shadowYOffset:I
    :cond_4
    new-instance v14, Lcom/cjj/CircleProgressBar$OvalShadow;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cjj/CircleProgressBar;->mShadowRadius:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cjj/CircleProgressBar;->mDiameter:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cjj/CircleProgressBar;->mShadowRadius:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v4}, Lcom/cjj/CircleProgressBar$OvalShadow;-><init>(Lcom/cjj/CircleProgressBar;II)V

    .line 196
    .local v14, oval:Landroid/graphics/drawable/shapes/OvalShape;
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cjj/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    .line 197
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cjj/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cjj/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cjj/CircleProgressBar;->mShadowRadius:I

    int-to-float v4, v4

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    const/high16 v7, 0x1e00

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 200
    move-object/from16 v0, p0

    iget v15, v0, Lcom/cjj/CircleProgressBar;->mShadowRadius:I

    .line 202
    .local v15, padding:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v15, v15, v15}, Lcom/cjj/CircleProgressBar;->setPadding(IIII)V

    goto/16 :goto_0

    .line 209
    .end local v14           #oval:Landroid/graphics/drawable/shapes/OvalShape;
    .end local v15           #padding:I
    .end local v16           #shadowXOffset:I
    .end local v17           #shadowYOffset:I
    :cond_5
    move-object/from16 v0, p0

    iget v8, v0, Lcom/cjj/CircleProgressBar;->mInnerRadius:I

    int-to-double v8, v8

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/cjj/CircleProgressBar;->mArrowWidth:I

    int-to-float v12, v12

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cjj/CircleProgressBar;->mArrowHeight:I

    int-to-float v13, v13

    goto/16 :goto_3
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 163
    invoke-direct {p0}, Lcom/cjj/CircleProgressBar;->elevationSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/cjj/CircleProgressBar;->mShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/cjj/CircleProgressBar;->mShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/cjj/CircleProgressBar;->setMeasuredDimension(II)V

    .line 167
    :cond_0
    return-void
.end method

.method public onPull(Lcom/cjj/MaterialRefreshLayout;F)V
    .locals 1
    .parameter "materialRefreshLayout"
    .parameter "fraction"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {v0, p2}, Lcom/cjj/MaterialProgressDrawable;->setProgressRotation(F)V

    .line 418
    return-void
.end method

.method public onRefreshing(Lcom/cjj/MaterialRefreshLayout;)V
    .locals 1
    .parameter "materialRefreshLayout"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/cjj/MaterialProgressDrawable;->start()V

    .line 431
    :cond_0
    return-void
.end method

.method public onRelease(Lcom/cjj/MaterialRefreshLayout;F)V
    .locals 0
    .parameter "materialRefreshLayout"
    .parameter "fraction"

    .prologue
    .line 423
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/cjj/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 264
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3
    .parameter "colorRes"

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 319
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public setCircleBackgroundEnabled(Z)V
    .locals 0
    .parameter "enableCircleBackground"

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/cjj/CircleProgressBar;->mCircleBackgroundEnabled:Z

    .line 358
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/cjj/CircleProgressBar;->mColors:[I

    .line 308
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/cjj/CircleProgressBar;->mProgressDrawable:Lcom/cjj/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 311
    :cond_0
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .parameter "colorResIds"

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 292
    .local v2, res:Landroid/content/res/Resources;
    array-length v3, p1

    new-array v0, v3, [I

    .line 293
    .local v0, colorRes:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 294
    aget v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v0, v1

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0, v0}, Lcom/cjj/CircleProgressBar;->setColorSchemeColors([I)V

    .line 297
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 260
    return-void
.end method

.method public final setImageResource(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 241
    return-void
.end method

.method public final setImageURI(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 256
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 336
    iput p1, p0, Lcom/cjj/CircleProgressBar;->mMax:I

    .line 337
    return-void
.end method

.method public setProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getMax()I

    move-result v0

    if-lez v0, :cond_0

    .line 345
    iput p1, p0, Lcom/cjj/CircleProgressBar;->mProgress:I

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->invalidate()V

    .line 348
    const-string v0, "cjj_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress------->>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method

.method public setProgressBackGroundColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 148
    iput p1, p0, Lcom/cjj/CircleProgressBar;->mBackGroundColor:I

    .line 149
    return-void
.end method

.method public setProgressStokeWidth(I)V
    .locals 2
    .parameter "mProgressStokeWidth"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/cjj/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 175
    .local v0, density:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/cjj/CircleProgressBar;->mProgressStokeWidth:I

    .line 176
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 0
    .parameter "showArrow"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/cjj/CircleProgressBar;->mShowArrow:Z

    .line 250
    return-void
.end method

.method public setShowProgressText(Z)V
    .locals 0
    .parameter "mIfDrawText"

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/cjj/CircleProgressBar;->mIfDrawText:Z

    .line 329
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 153
    iput p1, p0, Lcom/cjj/CircleProgressBar;->mTextColor:I

    .line 154
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 367
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    return-void
.end method
