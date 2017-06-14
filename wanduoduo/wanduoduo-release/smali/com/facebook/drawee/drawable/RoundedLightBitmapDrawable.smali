.class public Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;
.super Lcom/facebook/drawee/drawable/LightBitmapDrawable;
.source "RoundedLightBitmapDrawable.java"

# interfaces
.implements Lcom/facebook/drawee/drawable/TransformAwareDrawable;
.implements Lcom/facebook/drawee/drawable/Rounded;


# instance fields
.field final mBitmapBounds:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mBorderColor:I

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderPath:Landroid/graphics/Path;

.field final mBorderRadii:[F
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mBorderWidth:F

.field final mBoundsTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private final mCornerRadii:[F

.field final mDrawableBounds:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final mInverseParentTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mIsCircle:Z

.field private mIsPathDirty:Z

.field private mIsShaderTransformDirty:Z

.field private mLastBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPadding:F

.field final mParentTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private final mPath:Landroid/graphics/Path;

.field final mPrevBoundsTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final mPrevParentTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field final mPrevRootBounds:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mRadiiNonZero:Z

.field final mRootBounds:Landroid/graphics/RectF;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mShader:Landroid/graphics/Shader;

.field final mTransform:Landroid/graphics/Matrix;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field private mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "res"
    .parameter "bitmap"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 5
    .parameter "res"
    .end parameter
    .parameter "bitmap"
    .end parameter
    .parameter "paint"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/drawable/LightBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V

    .line 38
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsCircle:Z

    .line 39
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRadiiNonZero:Z

    .line 40
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mCornerRadii:[F

    .line 41
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderRadii:[F

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPrevRootBounds:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBitmapBounds:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mDrawableBounds:Landroid/graphics/RectF;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPrevBoundsTransform:Landroid/graphics/Matrix;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPrevParentTransform:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mInverseParentTransform:Landroid/graphics/Matrix;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mTransform:Landroid/graphics/Matrix;

    .line 56
    iput v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderWidth:F

    .line 57
    iput v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderColor:I

    .line 58
    iput v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPadding:F

    .line 60
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPath:Landroid/graphics/Path;

    .line 61
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    .line 62
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsPathDirty:Z

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 64
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsShaderTransformDirty:Z

    .line 77
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 78
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    return-void
.end method

.method private updatePaint(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 300
    .local v0, paint:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mLastBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mLastBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 301
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mLastBitmap:Ljava/lang/ref/WeakReference;

    .line 302
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mShader:Landroid/graphics/Shader;

    .line 303
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsShaderTransformDirty:Z

    .line 305
    :cond_1
    iget-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsShaderTransformDirty:Z

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mShader:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 307
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsShaderTransformDirty:Z

    .line 309
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mShader:Landroid/graphics/Shader;

    if-eq v1, v2, :cond_3

    .line 310
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 312
    :cond_3
    return-void
.end method

.method private updatePath()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 266
    iget-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsPathDirty:Z

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 268
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderWidth:F

    div-float/2addr v3, v7

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 269
    iget-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsCircle:Z

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v1, v2, v7

    .line 271
    .local v1, radius:F
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 272
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 271
    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 279
    .end local v1           #radius:F
    :goto_0
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderWidth:F

    neg-float v3, v3

    div-float/2addr v3, v7

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderWidth:F

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 281
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 282
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPadding:F

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPadding:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 283
    iget-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsCircle:Z

    if-eqz v2, :cond_3

    .line 284
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 285
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 286
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    .line 287
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v5, v7

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 284
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 292
    :goto_1
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPadding:F

    neg-float v3, v3

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPadding:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 293
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 294
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsPathDirty:Z

    .line 296
    :cond_0
    return-void

    .line 274
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderRadii:[F

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderRadii:[F

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mCornerRadii:[F

    aget v3, v3, v0

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPadding:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    aput v3, v2, v0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 277
    :cond_2
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderRadii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 290
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mCornerRadii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_1
.end method

.method private updateTransform(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "bitmap"
    .parameter "bounds"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/TransformCallback;->getTransform(Landroid/graphics/Matrix;)V

    .line 239
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lcom/facebook/drawee/drawable/TransformCallback;->getRootBounds(Landroid/graphics/RectF;)V

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBitmapBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 246
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mDrawableBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 247
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBitmapBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mDrawableBounds:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 249
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPrevParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPrevBoundsTransform:Landroid/graphics/Matrix;

    .line 250
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    :cond_0
    iput-boolean v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsShaderTransformDirty:Z

    .line 252
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mInverseParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 253
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 254
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 255
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPrevParentTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 256
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPrevBoundsTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBoundsTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPrevRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    iput-boolean v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsPathDirty:Z

    .line 261
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPrevRootBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 263
    :cond_2
    return-void

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 242
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRootBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 199
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 202
    .local v2, paint:Landroid/graphics/Paint;
    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->shouldRound()Z

    move-result v4

    if-nez v4, :cond_1

    .line 208
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 209
    invoke-virtual {p1, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->updatePaint(Landroid/graphics/Bitmap;)V

    .line 214
    invoke-direct {p0, v0, v1}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->updateTransform(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 215
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->updatePath()V

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 218
    .local v3, saveCount:I
    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mInverseParentTransform:Landroid/graphics/Matrix;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 219
    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 220
    iget v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderWidth:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 221
    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 222
    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderColor:I

    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    invoke-static {v5, v6}, Lcom/facebook/drawee/drawable/DrawableUtils;->multiplyColorAlpha(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 225
    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderColor:I

    return v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderWidth:F

    return v0
.end method

.method public getPadding()F
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPadding:F

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getRadii()[F
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mCornerRadii:[F

    return-object v0
.end method

.method public isCircle()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsCircle:Z

    return v0
.end method

.method public setBorder(IF)V
    .locals 1
    .parameter "color"
    .parameter "width"

    .prologue
    .line 149
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderWidth:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderColor:I

    .line 151
    iput p2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderWidth:F

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsPathDirty:Z

    .line 153
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->invalidateSelf()V

    .line 155
    :cond_1
    return-void
.end method

.method public setCircle(Z)V
    .locals 1
    .parameter "isCircle"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsCircle:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsPathDirty:Z

    .line 90
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->invalidateSelf()V

    .line 91
    return-void
.end method

.method public setPadding(F)V
    .locals 1
    .parameter "padding"

    .prologue
    .line 175
    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 176
    iput p1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mPadding:F

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsPathDirty:Z

    .line 178
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->invalidateSelf()V

    .line 180
    :cond_0
    return-void
.end method

.method public setRadii([F)V
    .locals 7
    .parameter "radii"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    if-nez p1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mCornerRadii:[F

    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 123
    iput-boolean v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRadiiNonZero:Z

    .line 132
    :cond_0
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsPathDirty:Z

    .line 133
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->invalidateSelf()V

    .line 134
    return-void

    .line 125
    :cond_1
    array-length v1, p1

    if-ne v1, v5, :cond_2

    move v1, v2

    :goto_0
    const-string v4, "radii should have exactly 8 values"

    invoke-static {v1, v4}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mCornerRadii:[F

    invoke-static {p1, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput-boolean v3, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRadiiNonZero:Z

    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_0

    .line 129
    iget-boolean v4, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRadiiNonZero:Z

    aget v1, p1, v0

    cmpl-float v1, v1, v6

    if-lez v1, :cond_3

    move v1, v2

    :goto_2
    or-int/2addr v1, v4

    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRadiiNonZero:Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_2
    move v1, v3

    .line 125
    goto :goto_0

    .restart local v0       #i:I
    :cond_3
    move v1, v3

    .line 129
    goto :goto_2
.end method

.method public setRadius(F)V
    .locals 4
    .parameter "radius"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 106
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 107
    iget-object v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mCornerRadii:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 108
    cmpl-float v0, p1, v3

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRadiiNonZero:Z

    .line 109
    iput-boolean v1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsPathDirty:Z

    .line 110
    invoke-virtual {p0}, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->invalidateSelf()V

    .line 111
    return-void

    :cond_1
    move v0, v2

    .line 106
    goto :goto_0
.end method

.method public setTransformCallback(Lcom/facebook/drawee/drawable/TransformCallback;)V
    .locals 0
    .parameter "transformCallback"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mTransformCallback:Lcom/facebook/drawee/drawable/TransformCallback;

    .line 194
    return-void
.end method

.method shouldRound()Z
    .locals 2
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mIsCircle:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mRadiiNonZero:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/drawee/drawable/RoundedLightBitmapDrawable;->mBorderWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
