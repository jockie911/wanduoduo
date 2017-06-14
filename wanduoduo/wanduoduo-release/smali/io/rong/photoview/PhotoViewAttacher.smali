.class public Lio/rong/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Lio/rong/photoview/IPhotoView;
.implements Landroid/view/View$OnTouchListener;
.implements Lio/rong/photoview/gestures/OnGestureListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/photoview/PhotoViewAttacher$2;,
        Lio/rong/photoview/PhotoViewAttacher$FlingRunnable;,
        Lio/rong/photoview/PhotoViewAttacher$AnimatedZoomRunnable;,
        Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;,
        Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;,
        Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;,
        Lio/rong/photoview/PhotoViewAttacher$OnScaleChangeListener;,
        Lio/rong/photoview/PhotoViewAttacher$OnMatrixChangedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final EDGE_BOTH:I = 0x2

.field static final EDGE_LEFT:I = 0x0

.field static final EDGE_NONE:I = -0x1

.field static final EDGE_RIGHT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PhotoViewAttacher"

.field static SINGLE_TOUCH:I

.field static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field ZOOM_DURATION:I

.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRotation:F

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lio/rong/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lio/rong/photoview/PhotoViewAttacher$OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mPhotoTapListener:Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;

.field private mScaleChangeListener:Lio/rong/photoview/PhotoViewAttacher$OnScaleChangeListener;

.field private mScaleDragDetector:Lio/rong/photoview/gestures/GestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private mSingleFlingListener:Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mViewTapListener:Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;

.field private mZoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "PhotoViewAttacher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lio/rong/photoview/PhotoViewAttacher;->DEBUG:Z

    .line 62
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lio/rong/photoview/PhotoViewAttacher;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 70
    const/4 v0, 0x1

    sput v0, Lio/rong/photoview/PhotoViewAttacher;->SINGLE_TOUCH:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "imageView"

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/rong/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;Z)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 4
    .parameter "imageView"
    .parameter "zoomable"

    .prologue
    const/4 v2, 0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v1, 0xc8

    iput v1, p0, Lio/rong/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 72
    const/high16 v1, 0x3f80

    iput v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMinScale:F

    .line 73
    const/high16 v1, 0x3fe0

    iput v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMidScale:F

    .line 74
    const/high16 v1, 0x4040

    iput v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 76
    iput-boolean v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 137
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 138
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 139
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 140
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 141
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 153
    const/4 v1, 0x2

    iput v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 157
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 164
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 166
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 167
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 170
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 174
    :cond_0
    invoke-static {p1}, Lio/rong/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 176
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lio/rong/photoview/gestures/VersionedGestureDetector;->newInstance(Landroid/content/Context;Lio/rong/photoview/gestures/OnGestureListener;)Lio/rong/photoview/gestures/GestureDetector;

    move-result-object v1

    iput-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleDragDetector:Lio/rong/photoview/gestures/GestureDetector;

    .line 183
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lio/rong/photoview/PhotoViewAttacher$1;

    invoke-direct {v3, p0}, Lio/rong/photoview/PhotoViewAttacher$1;-><init>(Lio/rong/photoview/PhotoViewAttacher;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 213
    iget-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Lio/rong/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v2, p0}, Lio/rong/photoview/DefaultOnDoubleTapListener;-><init>(Lio/rong/photoview/PhotoViewAttacher;)V

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 214
    const/4 v1, 0x0

    iput v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 217
    invoke-virtual {p0, p2}, Lio/rong/photoview/PhotoViewAttacher;->setZoomable(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lio/rong/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/photoview/PhotoViewAttacher;)Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mSingleFlingListener:Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lio/rong/photoview/PhotoViewAttacher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lio/rong/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lio/rong/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lio/rong/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Lio/rong/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lio/rong/photoview/PhotoViewAttacher$FlingRunnable;

    .line 741
    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .prologue
    .line 747
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/rong/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 750
    :cond_0
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 3

    .prologue
    .line 753
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 759
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lio/rong/photoview/IPhotoView;

    if-nez v1, :cond_0

    .line 760
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 765
    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/high16 v13, 0x4000

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 768
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 769
    .local v3, imageView:Landroid/widget/ImageView;
    if-nez v3, :cond_1

    .line 826
    :cond_0
    :goto_0
    return v8

    .line 773
    :cond_1
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-direct {p0, v10}, Lio/rong/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 774
    .local v4, rect:Landroid/graphics/RectF;
    if-eqz v4, :cond_0

    .line 778
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .local v2, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 779
    .local v7, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 781
    .local v1, deltaY:F
    invoke-direct {p0, v3}, Lio/rong/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v5

    .line 782
    .local v5, viewHeight:I
    int-to-float v10, v5

    cmpg-float v10, v2, v10

    if-gtz v10, :cond_3

    .line 783
    sget-object v10, Lio/rong/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v11, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 791
    int-to-float v10, v5

    sub-float/2addr v10, v2

    div-float/2addr v10, v13

    iget v11, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v10, v11

    .line 800
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lio/rong/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v6

    .line 801
    .local v6, viewWidth:I
    int-to-float v10, v6

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_5

    .line 802
    sget-object v8, Lio/rong/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_1

    .line 810
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v13

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v10

    .line 813
    :goto_2
    const/4 v8, 0x2

    iput v8, p0, Lio/rong/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 825
    :goto_3
    iget-object v8, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v8, v9

    .line 826
    goto :goto_0

    .line 785
    .end local v6           #viewWidth:I
    :pswitch_0
    iget v10, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v10

    .line 786
    goto :goto_1

    .line 788
    :pswitch_1
    int-to-float v10, v5

    sub-float/2addr v10, v2

    iget v11, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v10, v11

    .line 789
    goto :goto_1

    .line 794
    :cond_3
    iget v10, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_4

    .line 795
    iget v10, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v10

    goto :goto_1

    .line 796
    :cond_4
    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v11, v5

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 797
    int-to-float v10, v5

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v10, v11

    goto :goto_1

    .line 804
    .restart local v6       #viewWidth:I
    :pswitch_2
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 805
    goto :goto_2

    .line 807
    :pswitch_3
    int-to-float v8, v6

    sub-float/2addr v8, v7

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v10

    .line 808
    goto :goto_2

    .line 814
    :cond_5
    iget v10, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_6

    .line 815
    iput v8, p0, Lio/rong/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 816
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_3

    .line 817
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v10, v6

    cmpg-float v8, v8, v10

    if-gez v8, :cond_7

    .line 818
    int-to-float v8, v6

    iget v10, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v10

    .line 819
    iput v9, p0, Lio/rong/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 821
    :cond_7
    const/4 v8, -0x1

    iput v8, p0, Lio/rong/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 783
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 802
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static checkZoomLevels(FFF)V
    .locals 2
    .parameter "minZoom"
    .parameter "midZoom"
    .parameter "maxZoom"

    .prologue
    .line 81
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MinZoom has to be less than MidZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MidZoom has to be less than MaxZoom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    return-void
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6
    .parameter "matrix"

    .prologue
    const/4 v5, 0x0

    .line 836
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 838
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 839
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 840
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 841
    iget-object v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 843
    iget-object v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 844
    iget-object v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 847
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 2
    .parameter "imageView"

    .prologue
    .line 984
    if-nez p1, :cond_0

    .line 985
    const/4 v0, 0x0

    .line 986
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 2
    .parameter "imageView"

    .prologue
    .line 978
    if-nez p1, :cond_0

    .line 979
    const/4 v0, 0x0

    .line 980
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 875
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 876
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 1
    .parameter "imageView"

    .prologue
    .line 94
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z
    .locals 3
    .parameter "scaleType"

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 105
    :cond_0
    sget-object v0, Lio/rong/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported in PhotoView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private resetMatrix()V
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 884
    iget v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, v0}, Lio/rong/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 885
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/rong/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 886
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 887
    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .parameter "matrix"

    .prologue
    .line 890
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 891
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 893
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->checkImageViewScaleType()V

    .line 894
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 897
    iget-object v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lio/rong/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    if-eqz v2, :cond_0

    .line 898
    invoke-direct {p0, p1}, Lio/rong/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 899
    .local v0, displayRect:Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 900
    iget-object v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lio/rong/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-interface {v2, v0}, Lio/rong/photoview/PhotoViewAttacher$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 904
    .end local v0           #displayRect:Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "imageView"

    .prologue
    .line 123
    if-eqz p0, :cond_0

    instance-of v0, p0, Lio/rong/photoview/IPhotoView;

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    :cond_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .parameter "d"

    .prologue
    const/high16 v13, 0x4000

    const/4 v12, 0x0

    .line 912
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 913
    .local v3, imageView:Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    invoke-direct {p0, v3}, Lio/rong/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v10

    int-to-float v8, v10

    .line 918
    .local v8, viewWidth:F
    invoke-direct {p0, v3}, Lio/rong/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v10

    int-to-float v7, v10

    .line 919
    .local v7, viewHeight:F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 920
    .local v1, drawableWidth:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 922
    .local v0, drawableHeight:I
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 924
    int-to-float v10, v1

    div-float v9, v8, v10

    .line 925
    .local v9, widthScale:F
    int-to-float v10, v0

    div-float v2, v7, v10

    .line 927
    .local v2, heightScale:F
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_2

    .line 928
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 974
    :goto_1
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0

    .line 931
    :cond_2
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_3

    .line 932
    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 933
    .local v6, scale:F
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 934
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 937
    .end local v6           #scale:F
    :cond_3
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_4

    .line 938
    const/high16 v10, 0x3f80

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 939
    .restart local v6       #scale:F
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 940
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 944
    .end local v6           #scale:F
    :cond_4
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v10, v1

    int-to-float v11, v0

    invoke-direct {v5, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 945
    .local v5, mTempSrc:Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v12, v12, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 947
    .local v4, mTempDst:Landroid/graphics/RectF;
    iget v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseRotation:F

    float-to-int v10, v10

    rem-int/lit16 v10, v10, 0xb4

    if-eqz v10, :cond_5

    .line 948
    new-instance v5, Landroid/graphics/RectF;

    .end local v5           #mTempSrc:Landroid/graphics/RectF;
    int-to-float v10, v0

    int-to-float v11, v1

    invoke-direct {v5, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 951
    .restart local v5       #mTempSrc:Landroid/graphics/RectF;
    :cond_5
    sget-object v10, Lio/rong/photoview/PhotoViewAttacher$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v11, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 958
    :pswitch_0
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 953
    :pswitch_1
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 962
    :pswitch_2
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 966
    :pswitch_3
    iget-object v10, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 951
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 283
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 258
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 261
    .local v1, observer:Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 266
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 269
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->cancelFling()V

    .line 272
    .end local v1           #observer:Landroid/view/ViewTreeObserver;
    :cond_2
    iget-object v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_3

    .line 273
    iget-object v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 277
    :cond_3
    iput-object v3, p0, Lio/rong/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lio/rong/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 278
    iput-object v3, p0, Lio/rong/photoview/PhotoViewAttacher;->mPhotoTapListener:Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 279
    iput-object v3, p0, Lio/rong/photoview/PhotoViewAttacher;->mViewTapListener:Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 282
    iput-object v3, p0, Lio/rong/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 722
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .parameter "matrix"

    .prologue
    .line 727
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 728
    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 287
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 288
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/rong/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 732
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 733
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getIPhotoViewImplementation()Lio/rong/photoview/IPhotoView;
    .locals 0

    .prologue
    .line 864
    return-object p0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 4

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageView:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 346
    .restart local v0       #imageView:Landroid/widget/ImageView;
    :cond_0
    if-nez v0, :cond_1

    .line 347
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->cleanup()V

    .line 348
    invoke-static {}, Lio/rong/photoview/log/LogManager;->getLogger()Lio/rong/photoview/log/Logger;

    move-result-object v1

    const-string v2, "PhotoViewAttacher"

    const-string v3, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-interface {v1, v2, v3}, Lio/rong/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1
    return-object v0
.end method

.method public getMaxScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMidScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public getOnPhotoTapListener()Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mPhotoTapListener:Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;

    return-object v0
.end method

.method public getOnViewTapListener()Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mViewTapListener:Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;

    return-object v0
.end method

.method public getScale()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000

    .line 390
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/rong/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lio/rong/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 851
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 852
    .local v0, imageView:Landroid/widget/ImageView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public onDrag(FF)V
    .locals 10
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 400
    iget-object v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleDragDetector:Lio/rong/photoview/gestures/GestureDetector;

    invoke-interface {v2}, Lio/rong/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    sget-boolean v2, Lio/rong/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 405
    invoke-static {}, Lio/rong/photoview/log/LogManager;->getLogger()Lio/rong/photoview/log/Logger;

    move-result-object v2

    const-string v3, "PhotoViewAttacher"

    const-string v4, "onDrag: dx: %.2f. dy: %.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/rong/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_2
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 410
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 411
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 422
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 423
    .local v1, parent:Landroid/view/ViewParent;
    iget-boolean v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleDragDetector:Lio/rong/photoview/gestures/GestureDetector;

    invoke-interface {v2}, Lio/rong/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    if-nez v2, :cond_5

    .line 424
    iget v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-eq v2, v9, :cond_4

    iget v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-nez v2, :cond_3

    const/high16 v2, 0x3f80

    cmpl-float v2, p1, v2

    if-gez v2, :cond_4

    :cond_3
    iget v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-ne v2, v7, :cond_0

    const/high16 v2, -0x4080

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 427
    :cond_4
    if-eqz v1, :cond_0

    .line 428
    invoke-interface {v1, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 431
    :cond_5
    if-eqz v1, :cond_0

    .line 432
    invoke-interface {v1, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public onFling(FFFF)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 440
    sget-boolean v1, Lio/rong/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 441
    invoke-static {}, Lio/rong/photoview/log/LogManager;->getLogger()Lio/rong/photoview/log/Logger;

    move-result-object v1

    const-string v2, "PhotoViewAttacher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFling. sX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Vx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Vy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/rong/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 447
    .local v0, imageView:Landroid/widget/ImageView;
    new-instance v1, Lio/rong/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/rong/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lio/rong/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lio/rong/photoview/PhotoViewAttacher$FlingRunnable;

    .line 448
    iget-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lio/rong/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-direct {p0, v0}, Lio/rong/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    invoke-direct {p0, v0}, Lio/rong/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/rong/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 450
    iget-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lio/rong/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 451
    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 455
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 457
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 458
    iget-boolean v5, p0, Lio/rong/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v5, :cond_2

    .line 459
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    .line 460
    .local v4, top:I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    .line 461
    .local v3, right:I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    .line 462
    .local v0, bottom:I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 471
    .local v2, left:I
    iget v5, p0, Lio/rong/photoview/PhotoViewAttacher;->mIvTop:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Lio/rong/photoview/PhotoViewAttacher;->mIvBottom:I

    if-ne v0, v5, :cond_0

    iget v5, p0, Lio/rong/photoview/PhotoViewAttacher;->mIvLeft:I

    if-ne v2, v5, :cond_0

    iget v5, p0, Lio/rong/photoview/PhotoViewAttacher;->mIvRight:I

    if-eq v3, v5, :cond_1

    .line 474
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/rong/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 477
    iput v4, p0, Lio/rong/photoview/PhotoViewAttacher;->mIvTop:I

    .line 478
    iput v3, p0, Lio/rong/photoview/PhotoViewAttacher;->mIvRight:I

    .line 479
    iput v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mIvBottom:I

    .line 480
    iput v2, p0, Lio/rong/photoview/PhotoViewAttacher;->mIvLeft:I

    .line 486
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_1
    :goto_0
    return-void

    .line 483
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lio/rong/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onScale(FFF)V
    .locals 7
    .parameter "scaleFactor"
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/high16 v6, 0x3f80

    .line 490
    sget-boolean v0, Lio/rong/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 491
    invoke-static {}, Lio/rong/photoview/log/LogManager;->getLogger()Lio/rong/photoview/log/Logger;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/rong/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_0
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    cmpg-float v0, p1, v6

    if-gez v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMinScale:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    cmpl-float v0, p1, v6

    if-lez v0, :cond_4

    .line 498
    :cond_2
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleChangeListener:Lio/rong/photoview/PhotoViewAttacher$OnScaleChangeListener;

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleChangeListener:Lio/rong/photoview/PhotoViewAttacher$OnScaleChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lio/rong/photoview/PhotoViewAttacher$OnScaleChangeListener;->onScaleChange(FFF)V

    .line 501
    :cond_3
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 502
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 504
    :cond_4
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "ev"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 509
    const/4 v8, 0x0

    .line 511
    .local v8, handled:Z
    iget-boolean v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lio/rong/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 513
    .local v9, parent:Landroid/view/ViewParent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 544
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleDragDetector:Lio/rong/photoview/gestures/GestureDetector;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleDragDetector:Lio/rong/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Lio/rong/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v12

    .line 546
    .local v12, wasScaling:Z
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleDragDetector:Lio/rong/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Lio/rong/photoview/gestures/GestureDetector;->isDragging()Z

    move-result v11

    .line 548
    .local v11, wasDragging:Z
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleDragDetector:Lio/rong/photoview/gestures/GestureDetector;

    invoke-interface {v0, p2}, Lio/rong/photoview/gestures/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 550
    if-nez v12, :cond_4

    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleDragDetector:Lio/rong/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Lio/rong/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v7, 0x1

    .line 551
    .local v7, didntScale:Z
    :goto_1
    if-nez v11, :cond_5

    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleDragDetector:Lio/rong/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Lio/rong/photoview/gestures/GestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v6, 0x1

    .line 553
    .local v6, didntDrag:Z
    :goto_2
    if-eqz v7, :cond_6

    if-eqz v6, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 557
    .end local v6           #didntDrag:Z
    .end local v7           #didntScale:Z
    .end local v11           #wasDragging:Z
    .end local v12           #wasScaling:Z
    :cond_1
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    const/4 v8, 0x1

    .line 563
    .end local v9           #parent:Landroid/view/ViewParent;
    :cond_2
    return v8

    .line 517
    .restart local v9       #parent:Landroid/view/ViewParent;
    :pswitch_1
    if-eqz v9, :cond_3

    .line 518
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 525
    :goto_4
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->cancelFling()V

    goto :goto_0

    .line 520
    :cond_3
    invoke-static {}, Lio/rong/photoview/log/LogManager;->getLogger()Lio/rong/photoview/log/Logger;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "onTouch getParent() returned null"

    invoke-interface {v0, v1, v2}, Lio/rong/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 532
    :pswitch_2
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v10

    .line 534
    .local v10, rect:Landroid/graphics/RectF;
    if-eqz v10, :cond_0

    .line 535
    new-instance v0, Lio/rong/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    iget v3, p0, Lio/rong/photoview/PhotoViewAttacher;->mMinScale:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/rong/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lio/rong/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 537
    const/4 v8, 0x1

    goto :goto_0

    .line 550
    .end local v10           #rect:Landroid/graphics/RectF;
    .restart local v11       #wasDragging:Z
    .restart local v12       #wasScaling:Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 551
    .restart local v7       #didntScale:Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 553
    .restart local v6       #didntDrag:Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 568
    iput-boolean p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 569
    return-void
.end method

.method public setBaseRotation(F)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 311
    const/high16 v0, 0x43b4

    rem-float v0, p1, v0

    iput v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 312
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->update()V

    .line 313
    iget v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, v0}, Lio/rong/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 314
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 315
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 3
    .parameter "finalMatrix"

    .prologue
    const/4 v1, 0x0

    .line 293
    if-nez p1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Matrix cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_0
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 297
    .local v0, imageView:Landroid/widget/ImageView;
    if-nez v0, :cond_2

    .line 307
    :cond_1
    :goto_0
    return v1

    .line 300
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 303
    iget-object v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 304
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/rong/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 305
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 307
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setMaxScale(F)V
    .locals 0
    .parameter "maxScale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 599
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2
    .parameter "maximumScale"

    .prologue
    .line 603
    iget v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lio/rong/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 604
    iput p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 605
    return-void
.end method

.method public setMediumScale(F)V
    .locals 2
    .parameter "mediumScale"

    .prologue
    .line 591
    iget v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lio/rong/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 592
    iput p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMidScale:F

    .line 593
    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .parameter "midScale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setMediumScale(F)V

    .line 587
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .parameter "minScale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Lio/rong/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 575
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2
    .parameter "minimumScale"

    .prologue
    .line 579
    iget v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lio/rong/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 580
    iput p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMinScale:F

    .line 581
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2
    .parameter "newOnDoubleTapListener"

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lio/rong/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v1, p0}, Lio/rong/photoview/DefaultOnDoubleTapListener;-><init>(Lio/rong/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 617
    iput-object p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 618
    return-void
.end method

.method public setOnMatrixChangeListener(Lio/rong/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 622
    iput-object p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lio/rong/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 623
    return-void
.end method

.method public setOnPhotoTapListener(Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 627
    iput-object p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mPhotoTapListener:Lio/rong/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 628
    return-void
.end method

.method public setOnScaleChangeListener(Lio/rong/photoview/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 0
    .parameter "onScaleChangeListener"

    .prologue
    .line 231
    iput-object p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleChangeListener:Lio/rong/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .line 232
    return-void
.end method

.method public setOnSingleFlingListener(Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;)V
    .locals 0
    .parameter "onSingleFlingListener"

    .prologue
    .line 236
    iput-object p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mSingleFlingListener:Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;

    .line 237
    return-void
.end method

.method public setOnViewTapListener(Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 637
    iput-object p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mViewTapListener:Lio/rong/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 638
    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 322
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b4

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 323
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 324
    return-void
.end method

.method public setRotationBy(F)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 334
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b4

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 335
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 336
    return-void
.end method

.method public setRotationTo(F)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 328
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b4

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 329
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 330
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/rong/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 648
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7
    .parameter "scale"
    .parameter "focalX"
    .parameter "focalY"
    .parameter "animate"

    .prologue
    .line 665
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 667
    .local v6, imageView:Landroid/widget/ImageView;
    if-eqz v6, :cond_1

    .line 669
    iget v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 670
    :cond_0
    invoke-static {}, Lio/rong/photoview/log/LogManager;->getLogger()Lio/rong/photoview/log/Logger;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "Scale must be within the range of minScale and maxScale"

    invoke-interface {v0, v1, v2}, Lio/rong/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_1
    :goto_0
    return-void

    .line 677
    :cond_2
    if-eqz p4, :cond_3

    .line 678
    new-instance v0, Lio/rong/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lio/rong/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 681
    :cond_3
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 682
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    goto :goto_0
.end method

.method public setScale(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "animate"

    .prologue
    .line 652
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 654
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, p1, v1, v2, p2}, Lio/rong/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 660
    :cond_0
    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 0
    .parameter "minimumScale"
    .parameter "mediumScale"
    .parameter "maximumScale"

    .prologue
    .line 609
    invoke-static {p1, p2, p3}, Lio/rong/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 610
    iput p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mMinScale:F

    .line 611
    iput p2, p0, Lio/rong/photoview/PhotoViewAttacher;->mMidScale:F

    .line 612
    iput p3, p0, Lio/rong/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 613
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "scaleType"

    .prologue
    .line 689
    invoke-static {p1}, Lio/rong/photoview/PhotoViewAttacher;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 690
    iput-object p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 693
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->update()V

    .line 695
    :cond_0
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0
    .parameter "milliseconds"

    .prologue
    .line 857
    if-gez p1, :cond_0

    .line 858
    const/16 p1, 0xc8

    .line 859
    :cond_0
    iput p1, p0, Lio/rong/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 860
    return-void
.end method

.method public setZoomable(Z)V
    .locals 0
    .parameter "zoomable"

    .prologue
    .line 699
    iput-boolean p1, p0, Lio/rong/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 700
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->update()V

    .line 701
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 704
    invoke-virtual {p0}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 706
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 707
    iget-boolean v1, p0, Lio/rong/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    .line 709
    invoke-static {v0}, Lio/rong/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 712
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/rong/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    invoke-direct {p0}, Lio/rong/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0
.end method
