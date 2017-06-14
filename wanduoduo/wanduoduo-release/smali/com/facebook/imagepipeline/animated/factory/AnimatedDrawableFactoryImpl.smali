.class public Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;
.super Ljava/lang/Object;
.source "AnimatedDrawableFactoryImpl.java"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactory;


# instance fields
.field private final mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

.field private final mAnimatedDrawableCachingBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;

.field private final mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

.field private final mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mResources:Landroid/content/res/Resources;

.field private final mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "animatedDrawableBackendProvider"
    .parameter "animatedDrawableCachingBackendProvider"
    .parameter "animatedDrawableUtil"
    .parameter "scheduledExecutorService"
    .parameter "resources"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    .line 55
    iput-object p2, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->mAnimatedDrawableCachingBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;

    .line 56
    iput-object p3, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    .line 57
    iput-object p4, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    .line 58
    new-instance v0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl$1;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl$1;-><init>(Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    .line 65
    iput-object p5, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->mResources:Landroid/content/res/Resources;

    .line 66
    return-void
.end method

.method private create(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;
    .locals 6
    .parameter "animatedImageResult"
    .parameter "options"

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;->getImage()Lcom/facebook/imagepipeline/animated/base/AnimatedImage;

    move-result-object v1

    .line 96
    .local v1, animatedImage:Lcom/facebook/imagepipeline/animated/base/AnimatedImage;
    new-instance v2, Landroid/graphics/Rect;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getWidth()I

    move-result v3

    invoke-interface {v1}, Lcom/facebook/imagepipeline/animated/base/AnimatedImage;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    .local v2, initialBounds:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->mAnimatedDrawableBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;

    .line 98
    invoke-interface {v3, p1, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableBackendProvider;->get(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;

    move-result-object v0

    .line 99
    .local v0, animatedDrawableBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;
    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->createAnimatedDrawable(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;

    move-result-object v3

    return-object v3
.end method

.method private createAnimatedDrawable(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;
    .locals 6
    .parameter "options"
    .parameter "animatedDrawableBackend"

    .prologue
    .line 112
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 114
    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->mAnimatedDrawableCachingBackendProvider:Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;

    .line 115
    invoke-interface {v3, p2, p1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImplProvider;->get(Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;)Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableCachingBackendImpl;

    move-result-object v0

    .line 118
    .local v0, animatedDrawableCachingBackend:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;
    iget-boolean v3, p1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->enableDebugging:Z

    if-eqz v3, :cond_0

    .line 119
    new-instance v1, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;

    iget-object v3, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->mAnimatedDrawableUtil:Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;

    invoke-direct {v1, v3, v2}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsImpl;-><init>(Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;Landroid/util/DisplayMetrics;)V

    .line 125
    .local v1, animatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;
    :goto_0
    new-instance v3, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;

    iget-object v4, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->mScheduledExecutorServiceForUiThread:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, p0, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableCachingBackend;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;Lcom/facebook/common/time/MonotonicClock;)V

    return-object v3

    .line 122
    .end local v1           #animatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;
    :cond_0
    invoke-static {}, Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsNoop;->getInstance()Lcom/facebook/imagepipeline/animated/impl/AnimatedDrawableDiagnosticsNoop;

    move-result-object v1

    .restart local v1       #animatedDrawableDiagnostics:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableDiagnostics;
    goto :goto_0
.end method

.method private getImageIfCloseableAnimatedImage(Lcom/facebook/imagepipeline/image/CloseableImage;)Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    .locals 1
    .parameter "image"

    .prologue
    .line 103
    instance-of v0, p1, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;

    .end local p1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->getImageResult()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public create(Lcom/facebook/imagepipeline/image/CloseableImage;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "closeableImage"

    .prologue
    .line 77
    instance-of v1, p1, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;

    if-eqz v1, :cond_0

    .line 78
    check-cast p1, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;

    .end local p1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/CloseableAnimatedImage;->getImageResult()Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;

    move-result-object v0

    .line 79
    .local v0, result:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    sget-object v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;->DEFAULTS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;

    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/animated/factory/AnimatedDrawableFactoryImpl;->create(Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableOptions;)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawable;

    move-result-object v1

    return-object v1

    .line 81
    .end local v0           #result:Lcom/facebook/imagepipeline/animated/base/AnimatedImageResult;
    .restart local p1
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized image class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
