.class public abstract Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AbstractAnimatedDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Lcom/facebook/drawable/base/DrawableWithCaches;


# static fields
.field private static final NO_FRAME:I = -0x1

.field private static final POLL_FOR_RENDERED_FRAME_MS:I = 0x5

.field private static final TAG:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final WATCH_DOG_TIMER_MIN_TIMEOUT_MS:J = 0x3e8L

.field private static final WATCH_DOG_TIMER_POLL_INTERVAL_MS:J = 0x7d0L


# instance fields
.field private mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

.field private final mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

.field private mApplyTransformation:Z

.field private final mDstRect:Landroid/graphics/Rect;

.field private final mDurationMs:I

.field private final mFrameCount:I

.field private mHaveWatchdogScheduled:Z

.field private final mInvalidateTask:Ljava/lang/Runnable;

.field private mInvalidateTaskScheduled:Z

.field private mIsRunning:Z

.field private mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDrawnFrameMonotonicNumber:I

.field private mLastDrawnFrameNumber:I

.field private mLastInvalidateTimeMs:J

.field private volatile mLogId:Ljava/lang/String;

.field private final mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mNextFrameTask:Ljava/lang/Runnable;

.field private mNextFrameTaskMs:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mPendingRenderedFrameMonotonicNumber:I

.field private mPendingRenderedFrameNumber:I

.field private final mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

.field private mScheduledFrameMonotonicNumber:I

.field private mScheduledFrameNumber:I

.field private final mStartTask:Ljava/lang/Runnable;

.field private mStartTimeMs:J

.field private mSx:F

.field private mSy:F

.field private final mTotalLoops:I

.field private final mTransparentPaint:Landroid/graphics/Paint;

.field private mWaitingForDraw:Z

.field private final mWatchdogTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;

    sput-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;Lcom/facebook/common/time/MonotonicClock;)V
    .locals 6
    .parameter "scheduledExecutorServiceForUiThread"
    .parameter "animatedDrawableBackend"
    .parameter "animatedDrawableDiagnostics"
    .parameter "monotonicClock"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/high16 v2, 0x3f80

    .line 136
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 80
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    .line 83
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    .line 89
    iput-wide v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastInvalidateTimeMs:J

    .line 94
    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSx:F

    .line 95
    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSy:F

    .line 98
    iput-wide v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    .line 100
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$1;-><init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTask:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$2;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$2;-><init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$3;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$3;-><init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$4;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable$4;-><init>(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWatchdogTask:Ljava/lang/Runnable;

    .line 137
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    .line 138
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 139
    iput-object p3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    .line 140
    iput-object p4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    .line 141
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getDurationMs()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    .line 142
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getFrameCount()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    .line 143
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->setBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;)V

    .line 144
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getLoopCount()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTotalLoops:I

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->resetToPreviewFrame()V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->onStart()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->onNextFrame()V

    return-void
.end method

.method static synthetic access$402(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTaskScheduled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doWatchdogCheck()V

    return-void
.end method

.method private computeAndScheduleNextFrame(Z)V
    .locals 15
    .parameter "scheduleNextFrame"

    .prologue
    .line 253
    iget v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    if-nez v10, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v10}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v8

    .line 257
    .local v8, nowMs:J
    iget-wide v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    sub-long v10, v8, v10

    iget v12, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    int-to-long v12, v12

    div-long/2addr v10, v12

    long-to-int v2, v10

    .line 258
    .local v2, loops:I
    iget v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTotalLoops:I

    if-lez v10, :cond_2

    iget v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTotalLoops:I

    if-ge v2, v10, :cond_0

    .line 262
    :cond_2
    iget-wide v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    sub-long v10, v8, v10

    iget v12, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    int-to-long v12, v12

    rem-long/2addr v10, v12

    long-to-int v5, v10

    .line 263
    .local v5, timestampMs:I
    iget-object v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v10, v5}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getFrameForTimestampMs(I)I

    move-result v3

    .line 264
    .local v3, newCurrentFrameNumber:I
    iget v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    if-eq v10, v3, :cond_3

    const/4 v0, 0x1

    .line 265
    .local v0, changed:Z
    :goto_1
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 266
    iget v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    mul-int/2addr v10, v2

    add-int/2addr v10, v3

    iput v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    .line 268
    if-eqz p1, :cond_0

    .line 274
    if-eqz v0, :cond_4

    .line 275
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    goto :goto_0

    .line 264
    .end local v0           #changed:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 277
    .restart local v0       #changed:Z
    :cond_4
    iget-object v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    iget v11, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    invoke-interface {v10, v11}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getTimestampMsForFrame(I)I

    move-result v10

    iget-object v11, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    iget v12, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 278
    invoke-interface {v11, v12}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getDurationMsForFrame(I)I

    move-result v11

    add-int/2addr v10, v11

    sub-int v1, v10, v5

    .line 280
    .local v1, durationMs:I
    iget v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    rem-int v4, v10, v11

    .line 281
    .local v4, nextFrame:I
    int-to-long v10, v1

    add-long v6, v8, v10

    .line 282
    .local v6, nextFrameMs:J
    iget-wide v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    iget-wide v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    cmp-long v10, v10, v6

    if-lez v10, :cond_0

    .line 283
    :cond_5
    sget-object v10, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v11, "(%s) Next frame (%d) in %d ms"

    iget-object v12, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v10, v11, v12, v13, v14}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    iget-object v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v10}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 285
    iget-object v10, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v10, v6, v7}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 286
    iput-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    goto/16 :goto_0
.end method

.method private doInvalidateSelf()V
    .locals 2

    .prologue
    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWaitingForDraw:Z

    .line 493
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastInvalidateTimeMs:J

    .line 494
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->invalidateSelf()V

    .line 495
    return-void
.end method

.method private doWatchdogCheck()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 465
    iput-boolean v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mHaveWatchdogScheduled:Z

    .line 466
    iget-boolean v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-nez v6, :cond_0

    .line 489
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v6}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v2

    .line 472
    .local v2, now:J
    iget-boolean v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWaitingForDraw:Z

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastInvalidateTimeMs:J

    sub-long v6, v2, v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_2

    move v1, v4

    .line 476
    .local v1, hasNotDrawnWithinTimeout:Z
    :goto_1
    iget-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    iget-wide v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    sub-long v6, v2, v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_3

    move v0, v4

    .line 479
    .local v0, hasNotAdvancedFrameWithinTimeout:Z
    :goto_2
    if-nez v1, :cond_1

    if-eqz v0, :cond_4

    .line 480
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->dropCaches()V

    .line 481
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    goto :goto_0

    .end local v0           #hasNotAdvancedFrameWithinTimeout:Z
    .end local v1           #hasNotDrawnWithinTimeout:Z
    :cond_2
    move v1, v5

    .line 472
    goto :goto_1

    .restart local v1       #hasNotDrawnWithinTimeout:Z
    :cond_3
    move v0, v5

    .line 476
    goto :goto_2

    .line 483
    .restart local v0       #hasNotAdvancedFrameWithinTimeout:Z
    :cond_4
    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v6, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWatchdogTask:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v8, v9, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 487
    iput-boolean v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mHaveWatchdogScheduled:Z

    goto :goto_0
.end method

.method private onNextFrame()V
    .locals 2

    .prologue
    .line 237
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    .line 238
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onNextFrameMethodBegin()V

    .line 246
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->computeAndScheduleNextFrame(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onNextFrameMethodEnd()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onNextFrameMethodEnd()V

    throw v0
.end method

.method private onStart()V
    .locals 6

    .prologue
    .line 219
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-nez v2, :cond_0

    .line 234
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onStartMethodBegin()V

    .line 224
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    .line 225
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 226
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    .line 227
    iget-wide v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTimeMs:J

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getDurationMsForFrame(I)I

    move-result v4

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 228
    .local v0, nextFrameMs:J
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 229
    iput-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    .line 230
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onStartMethodEnd()V

    goto :goto_0

    .end local v0           #nextFrameMs:J
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onStartMethodEnd()V

    throw v2
.end method

.method private renderFrame(Landroid/graphics/Canvas;II)Z
    .locals 7
    .parameter "canvas"
    .parameter "frameNumber"
    .parameter "frameMonotonicNumber"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 434
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 435
    invoke-interface {v2, p2}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getBitmapForFrame(I)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 436
    .local v0, bitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_2

    .line 437
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 438
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v2}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 442
    :cond_0
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    if-le p3, v2, :cond_1

    .line 443
    iget v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    sub-int v2, p3, v2

    add-int/lit8 v1, v2, -0x1

    .line 444
    .local v1, droppedFrames:I
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->incrementDrawnFrames(I)V

    .line 445
    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->incrementDroppedFrames(I)V

    .line 446
    if-lez v1, :cond_1

    .line 447
    sget-object v2, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v4, "(%s) Dropped %d frames"

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    .end local v1           #droppedFrames:I
    :cond_1
    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    .line 451
    iput p2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    .line 452
    iput p3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    .line 453
    sget-object v2, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v4, "(%s) Drew frame %d"

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v2, v3

    .line 456
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetToPreviewFrame()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 154
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getFrameForPreview()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 155
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    .line 156
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    .line 157
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameMonotonicNumber:I

    .line 158
    return-void
.end method

.method private scheduleInvalidatePoll()V
    .locals 4

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTaskScheduled:Z

    if-eqz v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTaskScheduled:Z

    .line 410
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mInvalidateTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method


# virtual methods
.method public didLastDrawRender()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v5, -0x1

    .line 293
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onDrawMethodBegin()V

    .line 295
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWaitingForDraw:Z

    .line 296
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mHaveWatchdogScheduled:Z

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWatchdogTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mHaveWatchdogScheduled:Z

    .line 304
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mApplyTransformation:Z

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 306
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 308
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->forNewBounds(Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    move-result-object v7

    .line 309
    .local v7, newBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    if-eq v7, v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->dropCaches()V

    .line 311
    iput-object v7, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 312
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0, v7}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->setBackend(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getRenderedWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSx:F

    .line 315
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getRenderedHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSy:F

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mApplyTransformation:Z

    .line 320
    .end local v7           #newBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onDrawMethodEnd()V

    .line 400
    :goto_0
    return-void

    .line 325
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 326
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSx:F

    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mSy:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 329
    const/4 v6, 0x0

    .line 330
    .local v6, didDrawFrame:Z
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    if-eq v0, v5, :cond_4

    .line 332
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameMonotonicNumber:I

    .line 333
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->renderFrame(Landroid/graphics/Canvas;II)Z

    move-result v9

    .line 334
    .local v9, rendered:Z
    or-int/2addr v6, v9

    .line 335
    if-eqz v9, :cond_a

    .line 336
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Rendered pending frame %d"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    .line 338
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameMonotonicNumber:I

    .line 346
    .end local v9           #rendered:Z
    :cond_4
    :goto_1
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    if-ne v0, v5, :cond_6

    .line 348
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-eqz v0, :cond_5

    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->computeAndScheduleNextFrame(Z)V

    .line 351
    :cond_5
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    iget v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->renderFrame(Landroid/graphics/Canvas;II)Z

    move-result v9

    .line 355
    .restart local v9       #rendered:Z
    or-int/2addr v6, v9

    .line 356
    if-eqz v9, :cond_b

    .line 357
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Rendered current frame %d"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-eqz v0, :cond_6

    .line 359
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->computeAndScheduleNextFrame(Z)V

    .line 369
    .end local v9           #rendered:Z
    :cond_6
    :goto_2
    if-nez v6, :cond_7

    .line 370
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_7

    .line 371
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 372
    const/4 v6, 0x1

    .line 373
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Rendered last known frame %d"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    :cond_7
    if-nez v6, :cond_8

    .line 379
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    .line 380
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getPreviewBitmap()Lcom/facebook/common/references/CloseableReference;

    move-result-object v8

    .line 381
    .local v8, previewBitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    if-eqz v8, :cond_8

    .line 382
    invoke-virtual {v8}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 383
    invoke-virtual {v8}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 384
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Rendered preview frame"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    const/4 v6, 0x1

    .line 389
    .end local v8           #previewBitmapReference:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<Landroid/graphics/Bitmap;>;"
    :cond_8
    if-nez v6, :cond_9

    .line 391
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mTransparentPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 392
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Failed to draw a frame"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 395
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 396
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-interface {v0, p1, v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->drawDebugOverlay(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onDrawMethodEnd()V

    goto/16 :goto_0

    .line 341
    .restart local v9       #rendered:Z
    :cond_a
    :try_start_2
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Trying again later for pending %d"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleInvalidatePoll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 398
    .end local v6           #didDrawFrame:Z
    .end local v9           #rendered:Z
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;->onDrawMethodEnd()V

    throw v0

    .line 362
    .restart local v6       #didDrawFrame:Z
    .restart local v9       #rendered:Z
    :cond_b
    :try_start_3
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Trying again later for current %d"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameNumber:I

    .line 364
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    iput v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPendingRenderedFrameMonotonicNumber:I

    .line 365
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleInvalidatePoll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method

.method public dropCaches()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 556
    sget-object v0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->TAG:Ljava/lang/Class;

    const-string v1, "(%s) Dropping caches"

    iget-object v2, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    .line 560
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    .line 561
    iput v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->dropCaches()V

    .line 564
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 162
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 163
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    .line 167
    :cond_0
    return-void
.end method

.method protected getAnimatedDrawableBackend()Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    return-object v0
.end method

.method protected getDuration()I
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, -0x3

    return v0
.end method

.method getScheduledFrameNumber()I
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 509
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    return v0
.end method

.method isWaitingForDraw()Z
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mWaitingForDraw:Z

    return v0
.end method

.method isWaitingForNextFrame()Z
    .locals 4
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 504
    iget-wide v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mNextFrameTaskMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "bounds"

    .prologue
    const/4 v1, -0x1

    .line 207
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mApplyTransformation:Z

    .line 209
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrame:Lcom/facebook/common/references/CloseableReference;

    .line 213
    :cond_0
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameNumber:I

    .line 214
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLastDrawnFrameMonotonicNumber:I

    .line 215
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->dropCaches()V

    .line 216
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 4
    .parameter "level"

    .prologue
    const/4 v2, 0x0

    .line 533
    iget-boolean v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    if-eqz v3, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v2

    .line 538
    :cond_1
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mAnimatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;

    invoke-interface {v3, p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;->getFrameForTimestampMs(I)I

    move-result v1

    .line 539
    .local v1, frame:I
    iget v3, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    if-eq v1, v3, :cond_0

    .line 544
    :try_start_0
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameNumber:I

    .line 545
    iput v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mScheduledFrameMonotonicNumber:I

    .line 546
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    const/4 v2, 0x1

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 191
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    .line 192
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 197
    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->doInvalidateSelf()V

    .line 198
    return-void
.end method

.method public setLogId(Ljava/lang/String;)V
    .locals 0
    .parameter "logId"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mLogId:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 514
    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mDurationMs:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mFrameCount:I

    if-gt v0, v1, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    .line 518
    iget-object v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mStartTask:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v1}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/animated/base/AbstractAnimatedDrawable;->mIsRunning:Z

    .line 524
    return-void
.end method
