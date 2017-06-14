.class public Lcom/cjj/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cjj/MaterialProgressDrawable$StartCurveInterpolator;,
        Lcom/cjj/MaterialProgressDrawable$EndCurveInterpolator;,
        Lcom/cjj/MaterialProgressDrawable$Ring;,
        Lcom/cjj/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x535

.field private static final ARROW_HEIGHT:I = 0x5

.field static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 0.0f

.field private static final ARROW_WIDTH:I = 0xa

.field static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field public static final DEFAULT:I = 0x1

.field private static final EASE_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static final END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field public static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static final STROKE_WIDTH:F = 2.5f

.field static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private final COLORS:[I

.field private mAnimExcutor:Landroid/view/View;

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mShowArrowOnFirstStart:Z

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/cjj/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 49
    new-instance v0, Lcom/cjj/MaterialProgressDrawable$EndCurveInterpolator;

    invoke-direct {v0, v1}, Lcom/cjj/MaterialProgressDrawable$EndCurveInterpolator;-><init>(Lcom/cjj/MaterialProgressDrawable$1;)V

    sput-object v0, Lcom/cjj/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Lcom/cjj/MaterialProgressDrawable$StartCurveInterpolator;

    invoke-direct {v0, v1}, Lcom/cjj/MaterialProgressDrawable$StartCurveInterpolator;-><init>(Lcom/cjj/MaterialProgressDrawable$1;)V

    sput-object v0, Lcom/cjj/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/cjj/MaterialProgressDrawable;->EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .parameter "context"
    .parameter "animExcutor"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 80
    new-array v0, v3, [I

    const/high16 v1, -0x100

    aput v1, v0, v2

    iput-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->COLORS:[I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/cjj/MaterialProgressDrawable$1;

    invoke-direct {v0, p0}, Lcom/cjj/MaterialProgressDrawable$1;-><init>(Lcom/cjj/MaterialProgressDrawable;)V

    iput-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 118
    iput-boolean v2, p0, Lcom/cjj/MaterialProgressDrawable;->mShowArrowOnFirstStart:Z

    .line 121
    iput-object p2, p0, Lcom/cjj/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 124
    new-instance v0, Lcom/cjj/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/cjj/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Lcom/cjj/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    .line 125
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/cjj/MaterialProgressDrawable;->COLORS:[I

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 127
    invoke-virtual {p0, v3}, Lcom/cjj/MaterialProgressDrawable;->updateSizes(I)V

    .line 128
    invoke-direct {p0}, Lcom/cjj/MaterialProgressDrawable;->setupAnimators()V

    .line 129
    return-void
.end method

.method static synthetic access$200(Lcom/cjj/MaterialProgressDrawable;FLcom/cjj/MaterialProgressDrawable$Ring;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/cjj/MaterialProgressDrawable;->applyFinishTranslation(FLcom/cjj/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/cjj/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/cjj/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cjj/MaterialProgressDrawable;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRotationCount:F

    return v0
.end method

.method static synthetic access$502(Lcom/cjj/MaterialProgressDrawable;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/cjj/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method private applyFinishTranslation(FLcom/cjj/MaterialProgressDrawable$Ring;)V
    .locals 8
    .parameter "interpolatedTime"
    .parameter "ring"

    .prologue
    .line 301
    invoke-virtual {p2}, Lcom/cjj/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    const v4, 0x3f4ccccd

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 303
    .local v2, targetRotation:F
    invoke-virtual {p2}, Lcom/cjj/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    .line 304
    invoke-virtual {p2}, Lcom/cjj/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v4

    invoke-virtual {p2}, Lcom/cjj/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 305
    .local v1, startTrim:F
    invoke-virtual {p2, v1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 306
    invoke-virtual {p2}, Lcom/cjj/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    .line 307
    invoke-virtual {p2}, Lcom/cjj/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v4

    sub-float v4, v2, v4

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 308
    .local v0, rotation:F
    invoke-virtual {p2, v0}, Lcom/cjj/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 309
    return-void
.end method

.method private getRotation()F
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRotation:F

    return v0
.end method

.method private setupAnimators()V
    .locals 3

    .prologue
    .line 312
    iget-object v1, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    .line 313
    .local v1, ring:Lcom/cjj/MaterialProgressDrawable$Ring;
    new-instance v0, Lcom/cjj/MaterialProgressDrawable$2;

    invoke-direct {v0, p0, v1}, Lcom/cjj/MaterialProgressDrawable$2;-><init>(Lcom/cjj/MaterialProgressDrawable;Lcom/cjj/MaterialProgressDrawable$Ring;)V

    .line 355
    .local v0, animation:Landroid/view/animation/Animation;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 356
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 357
    sget-object v2, Lcom/cjj/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 358
    new-instance v2, Lcom/cjj/MaterialProgressDrawable$3;

    invoke-direct {v2, p0, v1}, Lcom/cjj/MaterialProgressDrawable$3;-><init>(Lcom/cjj/MaterialProgressDrawable;Lcom/cjj/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 386
    iput-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 387
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/cjj/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 228
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 229
    .local v1, saveCount:I
    iget v2, p0, Lcom/cjj/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 230
    iget-object v2, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Lcom/cjj/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 231
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 232
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/cjj/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/cjj/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/cjj/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 261
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setAlpha(I)V

    .line 241
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    .line 174
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 201
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "colorFilter"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 246
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2
    .parameter "colors"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 212
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 213
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 194
    return-void
.end method

.method setRotation(F)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 255
    iput p1, p0, Lcom/cjj/MaterialProgressDrawable;->mRotation:F

    .line 256
    invoke-virtual {p0}, Lcom/cjj/MaterialProgressDrawable;->invalidateSelf()V

    .line 257
    return-void
.end method

.method public setSizeParameters(DDDDFF)V
    .locals 5
    .parameter "progressCircleWidth"
    .parameter "progressCircleHeight"
    .parameter "centerRadius"
    .parameter "strokeWidth"
    .parameter "arrowWidth"
    .parameter "arrowHeight"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    .line 134
    .local v0, ring:Lcom/cjj/MaterialProgressDrawable$Ring;
    iput-wide p1, p0, Lcom/cjj/MaterialProgressDrawable;->mWidth:D

    .line 135
    iput-wide p3, p0, Lcom/cjj/MaterialProgressDrawable;->mHeight:D

    .line 136
    double-to-float v1, p7

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 137
    invoke-virtual {v0, p5, p6}, Lcom/cjj/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 139
    invoke-virtual {v0, p9, p10}, Lcom/cjj/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 140
    iget-wide v2, p0, Lcom/cjj/MaterialProgressDrawable;->mWidth:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/cjj/MaterialProgressDrawable;->mHeight:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/cjj/MaterialProgressDrawable$Ring;->setInsets(II)V

    .line 141
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .parameter "startAngle"
    .parameter "endAngle"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 184
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Lcom/cjj/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 185
    return-void
.end method

.method public showArrow(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 167
    return-void
.end method

.method public showArrowOnFirstStart(Z)V
    .locals 0
    .parameter "showArrowOnFirstStart"

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/cjj/MaterialProgressDrawable;->mShowArrowOnFirstStart:Z

    .line 391
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 272
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/cjj/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 273
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    iget-boolean v1, p0, Lcom/cjj/MaterialProgressDrawable;->mShowArrowOnFirstStart:Z

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 276
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/cjj/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/cjj/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cjj/MaterialProgressDrawable;->mFinishing:Z

    .line 278
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 279
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    iget-object v1, p0, Lcom/cjj/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 286
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 282
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/cjj/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 283
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x535

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 284
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    iget-object v1, p0, Lcom/cjj/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mAnimExcutor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cjj/MaterialProgressDrawable;->setRotation(F)V

    .line 292
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 293
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 294
    iget-object v0, p0, Lcom/cjj/MaterialProgressDrawable;->mRing:Lcom/cjj/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/cjj/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 295
    return-void
.end method

.method public updateSizes(I)V
    .locals 13
    .parameter "size"
        .annotation build Lcom/cjj/MaterialProgressDrawable$ProgressDrawableSize;
        .end annotation
    .end parameter

    .prologue
    const/high16 v5, 0x4260

    const/high16 v4, 0x4220

    .line 150
    iget-object v1, p0, Lcom/cjj/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 151
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v12, v0, Landroid/util/DisplayMetrics;->density:F

    .line 153
    .local v12, screenDensity:F
    if-nez p1, :cond_0

    .line 154
    mul-float v1, v5, v12

    float-to-double v2, v1

    mul-float v1, v5, v12

    float-to-double v4, v1

    const/high16 v1, 0x4148

    mul-float/2addr v1, v12

    float-to-double v6, v1

    const/high16 v1, 0x4040

    mul-float/2addr v1, v12

    float-to-double v8, v1

    const/high16 v1, 0x4140

    mul-float v10, v1, v12

    const/high16 v1, 0x40c0

    mul-float v11, v1, v12

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/cjj/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    mul-float v1, v4, v12

    float-to-double v2, v1

    mul-float v1, v4, v12

    float-to-double v4, v1

    const/high16 v1, 0x410c

    mul-float/2addr v1, v12

    float-to-double v6, v1

    const/high16 v1, 0x4020

    mul-float/2addr v1, v12

    float-to-double v8, v1

    const/high16 v1, 0x4120

    mul-float v10, v1, v12

    const/high16 v1, 0x40a0

    mul-float v11, v1, v12

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/cjj/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0
.end method
