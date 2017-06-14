.class public Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;
.super Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;
.source "AnimatedDrawableCachingBackendImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;


# static fields
.field private static final PREFETCH_FRAMES:I = 0x3

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

.field private final mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

.field private final mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

.field private final mAnimatedImageCompositor:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

.field private final mApproxKiloBytesToHoldAllFrames:D

.field private final mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mCurrentFrameIndex:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ui-thread"
    .end annotation
.end field

.field private final mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

.field private final mFreeBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mMaximumKiloBytes:D

.field private final mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mResourceReleaserForBitmaps:Lcom/facebook/common/references/ResourceReleaser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/ResourceReleaser",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;

    sput-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/executors/SerialExecutorService;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;)V
    .locals 3
    .parameter "executorService"
    .parameter "activityManager"
    .parameter "animatedDrawableUtil"
    .parameter "monotonicClock"
    .parameter "animatedDrawableBackend"
    .parameter "options"

    .prologue
    const/16 v2, 0xa

    .line 96
    invoke-direct {p0, p5}, Lcom/facebook/imagepipeline/animated/base/DelegatingAnimatedDrawableBackend;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;)V

    .line 97
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

    .line 98
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 99
    iput-object p3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    .line 100
    iput-object p4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    .line 101
    iput-object p5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 102
    iput-object p6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    .line 103
    iget v0, p6, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->maximumBytes:I

    if-ltz v0, :cond_0

    iget v0, p6, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->maximumBytes:I

    div-int/lit16 v0, v0, 0x400

    int-to-double v0, v0

    .line 105
    :goto_0
    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMaximumKiloBytes:D

    .line 106
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    new-instance v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$1;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$1;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;)V

    invoke-direct {v0, p5, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor$Callback;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedImageCompositor:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 119
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$2;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$2;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mResourceReleaserForBitmaps:Lcom/facebook/common/references/ResourceReleaser;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    .line 126
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0, v2}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    .line 127
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0, v2}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    .line 128
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    .line 129
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 130
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedWidth()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 131
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x400

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 132
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mApproxKiloBytesToHoldAllFrames:D

    .line 133
    return-void

    .line 105
    :cond_0
    invoke-static {p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->getDefaultMaxBytes(Landroid/app/ActivityManager;)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    int-to-double v0, v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->maybeCacheBitmapDuringRender(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;I)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->getCachedOrPredecodedFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->runPrefetch(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;Lbolts/Task;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->onFutureFinished(Lbolts/Task;I)V

    return-void
.end method

.method private declared-synchronized cancelFuturesOutsideOfRange(II)V
    .locals 5
    .parameter "startFrame"
    .parameter "endFrame"

    .prologue
    .line 480
    monitor-enter p0

    const/4 v2, 0x0

    .line 481
    .local v2, index:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 482
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    .line 483
    .local v0, frameNumber:I
    invoke-static {p1, p2, v0}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->isOutsideRange(III)Z

    move-result v3

    .line 484
    .local v3, outsideRange:Z
    if-eqz v3, :cond_0

    .line 485
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;

    .line 486
    .local v1, future:Lbolts/Task;,"Lbolts/Task<*>;"
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 480
    .end local v0           #frameNumber:I
    .end local v1           #future:Lbolts/Task;,"Lbolts/Task<*>;"
    .end local v3           #outsideRange:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 489
    .restart local v0       #frameNumber:I
    .restart local v3       #outsideRange:Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    .end local v0           #frameNumber:I
    .end local v3           #outsideRange:Z
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private copyAndCacheBitmapDuringRendering(ILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter "frameNumber"
    .parameter "sourceBitmap"

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->obtainBitmapInternal()Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 317
    .local v1, destBitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 318
    .local v0, copyCanvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 319
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 320
    invoke-direct {p0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->maybeCacheRenderedBitmap(ILcom/facebook/common/references/CloseableReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 324
    return-void

    .line 322
    .end local v0           #copyCanvas:Landroid/graphics/Canvas;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    throw v2
.end method

.method private createNewBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 146
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v1, "Creating new bitmap"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 148
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v1, "Total bitmaps: %d"

    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 150
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedWidth()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 151
    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getRenderedHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 149
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized doPrefetch(II)V
    .locals 7
    .parameter "startFrame"
    .parameter "count"

    .prologue
    .line 403
    monitor-enter p0

    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p2, :cond_1

    .line 404
    add-int v5, p1, v3

    :try_start_0
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v6}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result v6

    rem-int v0, v5, v6

    .line 405
    .local v0, frameNumber:I
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->hasCachedOrPredecodedFrame(I)Z

    move-result v2

    .line 406
    .local v2, hasCached:Z
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v5, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;

    .line 407
    .local v1, future:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Object;>;"
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 408
    new-instance v5, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$3;

    invoke-direct {v5, p0, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$3;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;I)V

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

    invoke-static {v5, v6}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v4

    .line 416
    .local v4, newFuture:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v5, v0, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 417
    new-instance v5, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$4;

    invoke-direct {v5, p0, v4, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl$4;-><init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;Lbolts/Task;I)V

    invoke-virtual {v4, v5}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .end local v4           #newFuture:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    .end local v0           #frameNumber:I
    .end local v1           #future:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Object;>;"
    .end local v2           #hasCached:Z
    :cond_1
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized dropBitmapsThatShouldNotBeCached()V
    .locals 5

    .prologue
    .line 495
    monitor-enter p0

    const/4 v2, 0x0

    .line 496
    .local v2, index:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 497
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v1

    .line 498
    .local v1, frameNumber:I
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v4, v1}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->get(I)Z

    move-result v3

    .line 499
    .local v3, keepCached:Z
    if-nez v3, :cond_0

    .line 500
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    .line 501
    .local v0, bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 502
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 495
    .end local v0           #bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    .end local v1           #frameNumber:I
    .end local v3           #keepCached:Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 504
    .restart local v1       #frameNumber:I
    .restart local v3       #keepCached:Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    .end local v1           #frameNumber:I
    .end local v3           #keepCached:Z
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private getBitmapForFrameInternal(IZ)Lcom/facebook/common/references/CloseableReference;
    .locals 13
    .parameter "frameNumber"
    .parameter "forceImmediate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    const/4 v3, 0x0

    .line 247
    .local v3, renderedOnCallingThread:Z
    const/4 v2, 0x0

    .line 248
    .local v2, deferred:Z
    iget-object v8, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v8}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v6

    .line 250
    .local v6, startMs:J
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    :try_start_1
    iget-object v8, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->set(IZ)V

    .line 252
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->getCachedOrPredecodedFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 253
    .local v0, bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_3

    .line 254
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    iget-object v8, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v8}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v8

    sub-long v4, v8, v6

    .line 274
    .local v4, elapsedMs:J
    const-wide/16 v8, 0xa

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    .line 275
    const-string v1, ""

    .line 276
    .local v1, comment:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 277
    const-string v1, "renderedOnCallingThread"

    .line 283
    :goto_0
    sget-object v8, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v9, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v9, v10, v11, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    .end local v0           #bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    .end local v1           #comment:Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 278
    .restart local v0       #bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    .restart local v1       #comment:Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 279
    const-string v1, "deferred"

    goto :goto_0

    .line 281
    :cond_2
    const-string v1, "ok"

    goto :goto_0

    .line 256
    .end local v1           #comment:Ljava/lang/String;
    .end local v4           #elapsedMs:J
    :cond_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    if-eqz p2, :cond_8

    .line 260
    const/4 v3, 0x1

    .line 261
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->obtainBitmapInternal()Lcom/facebook/common/references/CloseableReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 263
    :try_start_4
    iget-object v9, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedImageCompositor:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v9, p1, v8}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->renderFrame(ILandroid/graphics/Bitmap;)V

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->maybeCacheRenderedBitmap(ILcom/facebook/common/references/CloseableReference;)V

    .line 265
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v8

    .line 267
    :try_start_5
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 273
    iget-object v9, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v9}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v10

    sub-long v4, v10, v6

    .line 274
    .restart local v4       #elapsedMs:J
    const-wide/16 v10, 0xa

    cmp-long v9, v4, v10

    if-lez v9, :cond_4

    .line 275
    const-string v1, ""

    .line 276
    .restart local v1       #comment:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 277
    const-string v1, "renderedOnCallingThread"

    .line 283
    :goto_2
    sget-object v9, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v10, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v9, v10, v11, v12, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v1           #comment:Ljava/lang/String;
    :cond_4
    move-object v0, v8

    .line 285
    goto :goto_1

    .line 256
    .end local v0           #bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    .end local v4           #elapsedMs:J
    :catchall_0
    move-exception v8

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 273
    :catchall_1
    move-exception v8

    iget-object v9, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v9}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v10

    sub-long v4, v10, v6

    .line 274
    .restart local v4       #elapsedMs:J
    const-wide/16 v10, 0xa

    cmp-long v9, v4, v10

    if-lez v9, :cond_5

    .line 275
    const-string v1, ""

    .line 276
    .restart local v1       #comment:Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 277
    const-string v1, "renderedOnCallingThread"

    .line 283
    :goto_3
    sget-object v9, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v10, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v9, v10, v11, v12, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    .end local v1           #comment:Ljava/lang/String;
    :cond_5
    throw v8

    .line 278
    .restart local v0       #bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    .restart local v1       #comment:Ljava/lang/String;
    :cond_6
    if-eqz v2, :cond_7

    .line 279
    const-string v1, "deferred"

    goto :goto_2

    .line 281
    :cond_7
    const-string v1, "ok"

    goto :goto_2

    .line 267
    .end local v1           #comment:Ljava/lang/String;
    .end local v4           #elapsedMs:J
    :catchall_2
    move-exception v8

    :try_start_8
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 270
    :cond_8
    const/4 v2, 0x1

    .line 271
    const/4 v0, 0x0

    .line 273
    .end local v0           #bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    iget-object v8, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v8}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v8

    sub-long v4, v8, v6

    .line 274
    .restart local v4       #elapsedMs:J
    const-wide/16 v8, 0xa

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    .line 275
    const-string v1, ""

    .line 276
    .restart local v1       #comment:Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 277
    const-string v1, "renderedOnCallingThread"

    .line 283
    :goto_4
    sget-object v8, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v9, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v9, v10, v11, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 278
    :cond_9
    if-eqz v2, :cond_a

    .line 279
    const-string v1, "deferred"

    goto :goto_4

    .line 281
    :cond_a
    const-string v1, "ok"

    goto :goto_4

    .line 278
    :cond_b
    if-eqz v2, :cond_c

    .line 279
    const-string v1, "deferred"

    goto :goto_3

    .line 281
    :cond_c
    const-string v1, "ok"

    goto :goto_3
.end method

.method private declared-synchronized getCachedOrPredecodedFrame(I)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .parameter "frameNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    .line 527
    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/CloseableReference;

    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->cloneOrNull(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 528
    .local v0, ret:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_0

    .line 529
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getPreDecodedFrame(I)Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 531
    :cond_0
    monitor-exit p0

    return-object v0

    .line 526
    .end local v0           #ret:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getDefaultMaxBytes(Landroid/app/ActivityManager;)I
    .locals 2
    .parameter "activityManager"

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 387
    .local v0, memory:I
    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 388
    const/high16 v1, 0x50

    .line 390
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x30

    goto :goto_0
.end method

.method private declared-synchronized hasCachedOrPredecodedFrame(I)Z
    .locals 1
    .parameter "frameNumber"

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 536
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->hasPreDecodedFrame(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private maybeCacheBitmapDuringRender(ILandroid/graphics/Bitmap;)V
    .locals 3
    .parameter "frameNumber"
    .parameter "bitmap"

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, cacheBitmap:Z
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->get(I)Z

    move-result v1

    .line 299
    .local v1, shouldCache:Z
    if-eqz v1, :cond_0

    .line 300
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 302
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    if-eqz v0, :cond_1

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->copyAndCacheBitmapDuringRendering(ILandroid/graphics/Bitmap;)V

    .line 306
    :cond_1
    return-void

    .line 300
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    .end local v1           #shouldCache:Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private declared-synchronized maybeCacheRenderedBitmap(ILcom/facebook/common/references/CloseableReference;)V
    .locals 4
    .parameter "frameNumber"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p2, bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->get(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 523
    :goto_0
    monitor-exit p0

    return-void

    .line 516
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    .line 517
    .local v0, existingIndex:I
    if-ltz v0, :cond_1

    .line 518
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/CloseableReference;

    .line 519
    .local v1, oldReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 520
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 522
    .end local v1           #oldReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 512
    .end local v0           #existingIndex:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private obtainBitmapInternal()Lcom/facebook/common/references/CloseableReference;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    monitor-enter p0

    .line 329
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 330
    .local v2, nowNanos:J
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x14

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    add-long v4, v2, v6

    .line 331
    .local v4, waitUntilNanos:J
    :goto_0
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 333
    :try_start_1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v8, v4, v2

    invoke-virtual {v6, p0, v8, v9}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 334
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 337
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 346
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #nowNanos:J
    .end local v4           #waitUntilNanos:J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 341
    .restart local v2       #nowNanos:J
    .restart local v4       #waitUntilNanos:J
    :cond_0
    :try_start_3
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->createNewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mResourceReleaserForBitmaps:Lcom/facebook/common/references/ResourceReleaser;

    invoke-static {v0, v6}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v6

    return-object v6

    .line 344
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    :try_start_4
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    iget-object v7, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private declared-synchronized onFutureFinished(Lbolts/Task;I)V
    .locals 8
    .parameter
    .parameter "frameNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, future:Lbolts/Task;,"Lbolts/Task<*>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, p2}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v1

    .line 468
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 469
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 470
    .local v0, futureAtIndex:Lbolts/Task;,"Lbolts/Task<*>;"
    if-ne v0, p1, :cond_0

    .line 471
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 472
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 473
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v3

    const-string v4, "Failed to render frame %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    .end local v0           #futureAtIndex:Lbolts/Task;,"Lbolts/Task<*>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 467
    .end local v1           #index:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private runPrefetch(I)V
    .locals 5
    .parameter "frameNumber"

    .prologue
    .line 435
    monitor-enter p0

    .line 436
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    monitor-exit p0

    .line 464
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->hasCachedOrPredecodedFrame(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    monitor-exit p0

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    .line 447
    invoke-interface {v2, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getPreDecodedFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 449
    .local v1, preDecodedFrame:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_2

    .line 450
    :try_start_2
    invoke-direct {p0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->maybeCacheRenderedBitmap(ILcom/facebook/common/references/CloseableReference;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 462
    :goto_1
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_0

    .line 452
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->obtainBitmapInternal()Lcom/facebook/common/references/CloseableReference;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 454
    .local v0, bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :try_start_4
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedImageCompositor:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->renderFrame(ILandroid/graphics/Bitmap;)V

    .line 455
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->maybeCacheRenderedBitmap(ILcom/facebook/common/references/CloseableReference;)V

    .line 456
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v3, "Prefetch rendered frame %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 458
    :try_start_5
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 462
    .end local v0           #bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :catchall_1
    move-exception v2

    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v2

    .line 458
    .restart local v0       #bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method private declared-synchronized schedulePrefetches()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 355
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    iget v9, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCurrentFrameIndex:I

    invoke-interface {v8, v9}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameInfo(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v1

    .line 356
    .local v1, frameInfo:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    iget-object v8, v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->disposalMethod:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v9, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v8, v9, :cond_2

    move v3, v6

    .line 358
    .local v3, keepOnePreceding:Z
    :goto_0
    const/4 v9, 0x0

    iget v10, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCurrentFrameIndex:I

    if-eqz v3, :cond_3

    move v8, v6

    :goto_1
    sub-int v8, v10, v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 359
    .local v5, startFrame:I
    iget-object v8, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    iget-boolean v8, v8, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->allowPrefetching:Z

    if-eqz v8, :cond_4

    const/4 v4, 0x3

    .line 360
    .local v4, numToPrefetch:I
    :goto_2
    if-eqz v3, :cond_5

    :goto_3
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 361
    add-int v6, v5, v4

    iget-object v7, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v7}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getFrameCount()I

    move-result v7

    rem-int v0, v6, v7

    .line 362
    .local v0, endFrame:I
    invoke-direct {p0, v5, v0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->cancelFuturesOutsideOfRange(II)V

    .line 364
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->shouldKeepAllFramesInMemory()Z

    move-result v6

    if-nez v6, :cond_1

    .line 365
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->setAll(Z)V

    .line 366
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    invoke-virtual {v6, v5, v0}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->removeOutsideRange(II)V

    .line 370
    move v2, v5

    .local v2, frameNumber:I
    :goto_4
    if-ltz v2, :cond_0

    .line 371
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v6, v2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 372
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->set(IZ)V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->dropBitmapsThatShouldNotBeCached()V

    .line 378
    .end local v2           #frameNumber:I
    :cond_1
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    iget-boolean v6, v6, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->allowPrefetching:Z

    if-eqz v6, :cond_7

    .line 379
    invoke-direct {p0, v5, v4}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->doPrefetch(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :goto_5
    monitor-exit p0

    return-void

    .end local v0           #endFrame:I
    .end local v3           #keepOnePreceding:Z
    .end local v4           #numToPrefetch:I
    .end local v5           #startFrame:I
    :cond_2
    move v3, v7

    .line 356
    goto :goto_0

    .restart local v3       #keepOnePreceding:Z
    :cond_3
    move v8, v7

    .line 358
    goto :goto_1

    .restart local v5       #startFrame:I
    :cond_4
    move v4, v7

    .line 359
    goto :goto_2

    .restart local v4       #numToPrefetch:I
    :cond_5
    move v6, v7

    .line 360
    goto :goto_3

    .line 370
    .restart local v0       #endFrame:I
    .restart local v2       #frameNumber:I
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 381
    .end local v2           #frameNumber:I
    :cond_7
    :try_start_1
    iget v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCurrentFrameIndex:I

    iget v7, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCurrentFrameIndex:I

    invoke-direct {p0, v6, v7}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->cancelFuturesOutsideOfRange(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 355
    .end local v0           #endFrame:I
    .end local v1           #frameInfo:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;
    .end local v3           #keepOnePreceding:Z
    .end local v4           #numToPrefetch:I
    .end local v5           #startFrame:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private shouldKeepAllFramesInMemory()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 395
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    iget-boolean v1, v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->forceKeepAllFramesInMemory:Z

    if-eqz v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mApproxKiloBytesToHoldAllFrames:D

    iget-wide v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMaximumKiloBytes:D

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appendDebugOptionString(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "sb"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    iget-boolean v0, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->forceKeepAllFramesInMemory:Z

    if-eqz v0, :cond_1

    .line 229
    const-string v0, "Pinned To Memory"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :goto_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->shouldKeepAllFramesInMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    iget-boolean v0, v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->allowPrefetching:Z

    if-eqz v0, :cond_0

    .line 239
    const-string v0, " MT"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_0
    return-void

    .line 231
    :cond_1
    iget-wide v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mApproxKiloBytesToHoldAllFrames:D

    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMaximumKiloBytes:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 232
    const-string v0, "within "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMaximumKiloBytes:D

    double-to-int v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->appendMemoryString(Ljava/lang/StringBuilder;I)V

    goto :goto_0

    .line 234
    :cond_2
    const-string v0, "exceeds "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public declared-synchronized dropCaches()V
    .locals 4

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mBitmapsToKeepCached:Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/animated/impl/WhatToKeepCachedArray;->setAll(Z)V

    .line 200
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->dropBitmapsThatShouldNotBeCached()V

    .line 201
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 202
    .local v0, freeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 203
    sget-object v2, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    .end local v0           #freeBitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 205
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 206
    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->dropCaches()V

    .line 207
    sget-object v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v2, "Total bitmaps: %d"

    sget-object v3, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 138
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->TAG:Ljava/lang/Class;

    const-string v1, "Finalizing with rendered bitmaps"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 141
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->sTotalBitmaps:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 142
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic forNewBounds(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->forNewBounds(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    move-result-object v0

    return-object v0
.end method

.method public forNewBounds(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;
    .locals 7
    .parameter "bounds"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->forNewBounds(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    move-result-object v5

    .line 185
    .local v5, newBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    if-ne v5, v0, :cond_0

    .line 188
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mExecutorService:Lcom/facebook/common/executors/SerialExecutorService;

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableOptions:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;-><init>(Lcom/facebook/common/executors/SerialExecutorService;Landroid/app/ActivityManager;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public getBitmapForFrame(I)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .parameter "frameNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iput p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCurrentFrameIndex:I

    .line 164
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->getBitmapForFrameInternal(IZ)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 165
    .local v0, result:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->schedulePrefetches()V

    .line 166
    return-object v0
.end method

.method getBitmapForFrameBlocking(I)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .parameter "frameNumber"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iput p1, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCurrentFrameIndex:I

    .line 177
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->getBitmapForFrameInternal(IZ)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 178
    .local v0, result:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->schedulePrefetches()V

    .line 179
    return-object v0
.end method

.method declared-synchronized getDecodesInFlight()Ljava/util/Map;
    .locals 4
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lbolts/Task",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 542
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbolts/Task<*>;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mDecodesInFlight:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_0
    monitor-exit p0

    return-object v1

    .line 541
    .end local v0           #i:I
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lbolts/Task<*>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getFramesCached()Ljava/util/Set;
    .locals 3
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 551
    .local v1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 552
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_0
    monitor-exit p0

    return-object v1

    .line 550
    .end local v0           #i:I
    .end local v1           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getMemoryUsage()I
    .locals 6

    .prologue
    .line 212
    const/4 v2, 0x0

    .line 213
    .local v2, bytes:I
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 215
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    invoke-virtual {v5, v0}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->getSizeOfBitmap(Landroid/graphics/Bitmap;)I

    move-result v5

    add-int/2addr v2, v5

    .line 216
    goto :goto_0

    .line 217
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 218
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mCachedBitmaps:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/CloseableReference;

    .line 219
    .local v1, bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v4}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;->getSizeOfBitmap(Landroid/graphics/Bitmap;)I

    move-result v4

    add-int/2addr v2, v4

    .line 217
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 221
    .end local v1           #bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    invoke-interface {v4}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;->getMemoryUsage()I

    move-result v4

    add-int/2addr v2, v4

    .line 223
    return v2

    .line 221
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getPreviewBitmap()Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->getAnimatedImageResult()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->getPreviewBitmap()Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized releaseBitmapInternal(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public renderFrame(ILandroid/graphics/Canvas;)V
    .locals 1
    .parameter "frameNumber"
    .parameter "canvas"

    .prologue
    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
