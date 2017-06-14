.class final Lio/rong/imageloader/core/LoadAndDisplayImageTask;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/rong/imageloader/utils/IoUtils$CopyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
    }
.end annotation


# static fields
.field private static final ERROR_NO_IMAGE_STREAM:Ljava/lang/String; = "No stream for image [%s]"

.field private static final ERROR_POST_PROCESSOR_NULL:Ljava/lang/String; = "Post-processor returned null [%s]"

.field private static final ERROR_PRE_PROCESSOR_NULL:Ljava/lang/String; = "Pre-processor returned null [%s]"

.field private static final ERROR_PROCESSOR_FOR_DISK_CACHE_NULL:Ljava/lang/String; = "Bitmap processor for disk cache returned null [%s]"

.field private static final LOG_CACHE_IMAGE_IN_MEMORY:Ljava/lang/String; = "Cache image in memory [%s]"

.field private static final LOG_CACHE_IMAGE_ON_DISK:Ljava/lang/String; = "Cache image on disk [%s]"

.field private static final LOG_DELAY_BEFORE_LOADING:Ljava/lang/String; = "Delay %d ms before loading...  [%s]"

.field private static final LOG_GET_IMAGE_FROM_MEMORY_CACHE_AFTER_WAITING:Ljava/lang/String; = "...Get cached bitmap from memory after waiting. [%s]"

.field private static final LOG_LOAD_IMAGE_FROM_DISK_CACHE:Ljava/lang/String; = "Load image from disk cache [%s]"

.field private static final LOG_LOAD_IMAGE_FROM_NETWORK:Ljava/lang/String; = "Load image from network [%s]"

.field private static final LOG_POSTPROCESS_IMAGE:Ljava/lang/String; = "PostProcess image before displaying [%s]"

.field private static final LOG_PREPROCESS_IMAGE:Ljava/lang/String; = "PreProcess image before caching in memory [%s]"

.field private static final LOG_PROCESS_IMAGE_BEFORE_CACHE_ON_DISK:Ljava/lang/String; = "Process image before cache on disk [%s]"

.field private static final LOG_RESIZE_CACHED_IMAGE_FILE:Ljava/lang/String; = "Resize image in disk cache [%s]"

.field private static final LOG_RESUME_AFTER_PAUSE:Ljava/lang/String; = ".. Resume loading [%s]"

.field private static final LOG_START_DISPLAY_IMAGE_TASK:Ljava/lang/String; = "Start display image task [%s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_COLLECTED:Ljava/lang/String; = "ImageAware was collected by GC. Task is cancelled. [%s]"

.field private static final LOG_TASK_CANCELLED_IMAGEAWARE_REUSED:Ljava/lang/String; = "ImageAware is reused for another image. Task is cancelled. [%s]"

.field private static final LOG_TASK_INTERRUPTED:Ljava/lang/String; = "Task was interrupted [%s]"

.field private static final LOG_WAITING_FOR_IMAGE_LOADED:Ljava/lang/String; = "Image already is loading. Waiting... [%s]"

.field private static final LOG_WAITING_FOR_RESUME:Ljava/lang/String; = "ImageLoader is paused. Waiting...  [%s]"


# instance fields
.field private final configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

.field private final decoder:Lio/rong/imageloader/core/decode/ImageDecoder;

.field private final downloader:Lio/rong/imageloader/core/download/ImageDownloader;

.field private final engine:Lio/rong/imageloader/core/ImageLoaderEngine;

.field private final handler:Landroid/os/Handler;

.field final imageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

.field private final imageLoadingInfo:Lio/rong/imageloader/core/ImageLoadingInfo;

.field final listener:Lio/rong/imageloader/core/listener/ImageLoadingListener;

.field private loadedFrom:Lio/rong/imageloader/core/assist/LoadedFrom;

.field private final memoryCacheKey:Ljava/lang/String;

.field private final networkDeniedDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

.field final options:Lio/rong/imageloader/core/DisplayImageOptions;

.field final progressListener:Lio/rong/imageloader/core/listener/ImageLoadingProgressListener;

.field private final slowNetworkDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

.field private final syncLoading:Z

.field private final targetSize:Lio/rong/imageloader/core/assist/ImageSize;

.field final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/rong/imageloader/core/ImageLoaderEngine;Lio/rong/imageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
    .locals 1
    .parameter "engine"
    .parameter "imageLoadingInfo"
    .parameter "handler"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lio/rong/imageloader/core/assist/LoadedFrom;->NETWORK:Lio/rong/imageloader/core/assist/LoadedFrom;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lio/rong/imageloader/core/assist/LoadedFrom;

    .line 99
    iput-object p1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    .line 100
    iput-object p2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lio/rong/imageloader/core/ImageLoadingInfo;

    .line 101
    iput-object p3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 103
    iget-object v0, p1, Lio/rong/imageloader/core/ImageLoaderEngine;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    .line 104
    iget-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->downloader:Lio/rong/imageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->downloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .line 105
    iget-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->networkDeniedDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .line 106
    iget-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->slowNetworkDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->slowNetworkDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .line 107
    iget-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->decoder:Lio/rong/imageloader/core/decode/ImageDecoder;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->decoder:Lio/rong/imageloader/core/decode/ImageDecoder;

    .line 108
    iget-object v0, p2, Lio/rong/imageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 109
    iget-object v0, p2, Lio/rong/imageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    .line 110
    iget-object v0, p2, Lio/rong/imageloader/core/ImageLoadingInfo;->imageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

    .line 111
    iget-object v0, p2, Lio/rong/imageloader/core/ImageLoadingInfo;->targetSize:Lio/rong/imageloader/core/assist/ImageSize;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->targetSize:Lio/rong/imageloader/core/assist/ImageSize;

    .line 112
    iget-object v0, p2, Lio/rong/imageloader/core/ImageLoadingInfo;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    .line 113
    iget-object v0, p2, Lio/rong/imageloader/core/ImageLoadingInfo;->listener:Lio/rong/imageloader/core/listener/ImageLoadingListener;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->listener:Lio/rong/imageloader/core/listener/ImageLoadingListener;

    .line 114
    iget-object v0, p2, Lio/rong/imageloader/core/ImageLoadingInfo;->progressListener:Lio/rong/imageloader/core/listener/ImageLoadingProgressListener;

    iput-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->progressListener:Lio/rong/imageloader/core/listener/ImageLoadingProgressListener;

    .line 115
    iget-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lio/rong/imageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    .line 116
    return-void
.end method

.method static synthetic access$000(Lio/rong/imageloader/core/LoadAndDisplayImageTask;)Lio/rong/imageloader/core/ImageLoaderConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    return-object v0
.end method

.method private checkTaskInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    new-instance v0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    invoke-direct {v0, p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lio/rong/imageloader/core/LoadAndDisplayImageTask;)V

    throw v0

    .line 454
    :cond_0
    return-void
.end method

.method private checkTaskNotActual()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
        }
    .end annotation

    .prologue
    .line 401
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->checkViewCollected()V

    .line 402
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->checkViewReused()V

    .line 403
    return-void
.end method

.method private checkViewCollected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->isViewCollected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    new-instance v0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    invoke-direct {v0, p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lio/rong/imageloader/core/LoadAndDisplayImageTask;)V

    throw v0

    .line 418
    :cond_0
    return-void
.end method

.method private checkViewReused()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->isViewReused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;

    invoke-direct {v0, p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;-><init>(Lio/rong/imageloader/core/LoadAndDisplayImageTask;)V

    throw v0

    .line 434
    :cond_0
    return-void
.end method

.method private decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "imageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

    invoke-interface {v1}, Lio/rong/imageloader/core/imageaware/ImageAware;->getScaleType()Lio/rong/imageloader/core/assist/ViewScaleType;

    move-result-object v5

    .line 263
    .local v5, viewScaleType:Lio/rong/imageloader/core/assist/ViewScaleType;
    new-instance v0, Lio/rong/imageloader/core/decode/ImageDecodingInfo;

    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->targetSize:Lio/rong/imageloader/core/assist/ImageSize;

    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->getDownloader()Lio/rong/imageloader/core/download/ImageDownloader;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lio/rong/imageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/imageloader/core/assist/ImageSize;Lio/rong/imageloader/core/assist/ViewScaleType;Lio/rong/imageloader/core/download/ImageDownloader;Lio/rong/imageloader/core/DisplayImageOptions;)V

    .line 265
    .local v0, decodingInfo:Lio/rong/imageloader/core/decode/ImageDecodingInfo;
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->decoder:Lio/rong/imageloader/core/decode/ImageDecoder;

    invoke-interface {v1, v0}, Lio/rong/imageloader/core/decode/ImageDecoder;->decode(Lio/rong/imageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private delayIfNeed()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lio/rong/imageloader/core/DisplayImageOptions;->shouldDelayBeforeLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    const-string v3, "Delay %d ms before loading...  [%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v5}, Lio/rong/imageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :try_start_0
    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lio/rong/imageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    move-result v1

    .line 211
    :goto_0
    return v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Task was interrupted [%s]"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lio/rong/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    move v1, v2

    .line 211
    goto :goto_0
.end method

.method private downloadImage()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->getDownloader()Lio/rong/imageloader/core/download/ImageDownloader;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lio/rong/imageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/rong/imageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 292
    .local v0, is:Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 293
    const-string v2, "No stream for image [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lio/rong/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :goto_0
    return v1

    .line 297
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lio/rong/imageloader/core/ImageLoaderConfiguration;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p0}, Lio/rong/imageloader/cache/disc/DiskCache;->save(Ljava/lang/String;Ljava/io/InputStream;Lio/rong/imageloader/utils/IoUtils$CopyListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 299
    invoke-static {v0}, Lio/rong/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lio/rong/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private fireCancelEvent()V
    .locals 4

    .prologue
    .line 373
    iget-boolean v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    new-instance v0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$3;

    invoke-direct {v0, p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask$3;-><init>(Lio/rong/imageloader/core/LoadAndDisplayImageTask;)V

    .line 380
    .local v0, r:Ljava/lang/Runnable;
    const/4 v1, 0x0

    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    invoke-static {v0, v1, v2, v3}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lio/rong/imageloader/core/ImageLoaderEngine;)V

    goto :goto_0
.end method

.method private fireFailEvent(Lio/rong/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "failType"
    .parameter "failCause"

    .prologue
    .line 353
    iget-boolean v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    new-instance v0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;

    invoke-direct {v0, p0, p1, p2}, Lio/rong/imageloader/core/LoadAndDisplayImageTask$2;-><init>(Lio/rong/imageloader/core/LoadAndDisplayImageTask;Lio/rong/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 369
    .local v0, r:Ljava/lang/Runnable;
    const/4 v1, 0x0

    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    invoke-static {v0, v1, v2, v3}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lio/rong/imageloader/core/ImageLoaderEngine;)V

    goto :goto_0
.end method

.method private fireProgressEvent(II)Z
    .locals 4
    .parameter "current"
    .parameter "total"

    .prologue
    const/4 v1, 0x0

    .line 339
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->isTaskInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v1

    .line 340
    :cond_1
    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->progressListener:Lio/rong/imageloader/core/listener/ImageLoadingProgressListener;

    if-eqz v2, :cond_2

    .line 341
    new-instance v0, Lio/rong/imageloader/core/LoadAndDisplayImageTask$1;

    invoke-direct {v0, p0, p1, p2}, Lio/rong/imageloader/core/LoadAndDisplayImageTask$1;-><init>(Lio/rong/imageloader/core/LoadAndDisplayImageTask;II)V

    .line 347
    .local v0, r:Ljava/lang/Runnable;
    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    invoke-static {v0, v1, v2, v3}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lio/rong/imageloader/core/ImageLoaderEngine;)V

    .line 349
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getDownloader()Lio/rong/imageloader/core/download/ImageDownloader;
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v1}, Lio/rong/imageloader/core/ImageLoaderEngine;->isNetworkDenied()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->networkDeniedDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .line 392
    .local v0, d:Lio/rong/imageloader/core/download/ImageDownloader;
    :goto_0
    return-object v0

    .line 387
    .end local v0           #d:Lio/rong/imageloader/core/download/ImageDownloader;
    :cond_0
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v1}, Lio/rong/imageloader/core/ImageLoaderEngine;->isSlowNetwork()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    iget-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->slowNetworkDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .restart local v0       #d:Lio/rong/imageloader/core/download/ImageDownloader;
    goto :goto_0

    .line 390
    .end local v0           #d:Lio/rong/imageloader/core/download/ImageDownloader;
    :cond_1
    iget-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->downloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .restart local v0       #d:Lio/rong/imageloader/core/download/ImageDownloader;
    goto :goto_0
.end method

.method private isTaskInterrupted()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 458
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    const-string v2, "Task was interrupted [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isTaskNotActual()Z
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->isViewCollected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->isViewReused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewCollected()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 422
    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lio/rong/imageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    const-string v2, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isViewReused()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 438
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    iget-object v5, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->imageAware:Lio/rong/imageloader/core/imageaware/ImageAware;

    invoke-virtual {v4, v5}, Lio/rong/imageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lio/rong/imageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, currentCacheKey:Ljava/lang/String;
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v2

    .line 442
    .local v1, imageAwareWasReused:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 443
    const-string v4, "ImageAware is reused for another image. Task is cancelled. [%s]"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    :goto_1
    return v2

    .end local v1           #imageAwareWasReused:Z
    :cond_0
    move v1, v3

    .line 441
    goto :goto_0

    .restart local v1       #imageAwareWasReused:Z
    :cond_1
    move v2, v3

    .line 446
    goto :goto_1
.end method

.method private resizeAndSaveImage(II)Z
    .locals 13
    .parameter "maxWidth"
    .parameter "maxHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 307
    const/4 v9, 0x0

    .line 308
    .local v9, saved:Z
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lio/rong/imageloader/core/ImageLoaderConfiguration;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v1, v2}, Lio/rong/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 309
    .local v10, targetFile:Ljava/io/File;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    new-instance v4, Lio/rong/imageloader/core/assist/ImageSize;

    invoke-direct {v4, p1, p2}, Lio/rong/imageloader/core/assist/ImageSize;-><init>(II)V

    .line 311
    .local v4, targetImageSize:Lio/rong/imageloader/core/assist/ImageSize;
    new-instance v1, Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v2}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lio/rong/imageloader/core/DisplayImageOptions;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Lio/rong/imageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lio/rong/imageloader/core/assist/ImageScaleType;

    invoke-virtual {v1, v2}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lio/rong/imageloader/core/assist/ImageScaleType;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->build()Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v7

    .line 313
    .local v7, specialOptions:Lio/rong/imageloader/core/DisplayImageOptions;
    new-instance v0, Lio/rong/imageloader/core/decode/ImageDecodingInfo;

    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    sget-object v2, Lio/rong/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lio/rong/imageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    sget-object v5, Lio/rong/imageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lio/rong/imageloader/core/assist/ViewScaleType;

    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->getDownloader()Lio/rong/imageloader/core/download/ImageDownloader;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lio/rong/imageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/rong/imageloader/core/assist/ImageSize;Lio/rong/imageloader/core/assist/ViewScaleType;Lio/rong/imageloader/core/download/ImageDownloader;Lio/rong/imageloader/core/DisplayImageOptions;)V

    .line 316
    .local v0, decodingInfo:Lio/rong/imageloader/core/decode/ImageDecodingInfo;
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->decoder:Lio/rong/imageloader/core/decode/ImageDecoder;

    invoke-interface {v1, v0}, Lio/rong/imageloader/core/decode/ImageDecoder;->decode(Lio/rong/imageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 317
    .local v8, bmp:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lio/rong/imageloader/core/ImageLoaderConfiguration;->processorForDiskCache:Lio/rong/imageloader/core/process/BitmapProcessor;

    if-eqz v1, :cond_0

    .line 318
    const-string v1, "Process image before cache on disk [%s]"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lio/rong/imageloader/core/ImageLoaderConfiguration;->processorForDiskCache:Lio/rong/imageloader/core/process/BitmapProcessor;

    invoke-interface {v1, v8}, Lio/rong/imageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 320
    if-nez v8, :cond_0

    .line 321
    const-string v1, "Bitmap processor for disk cache returned null [%s]"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Lio/rong/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    :cond_0
    if-eqz v8, :cond_1

    .line 325
    iget-object v1, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lio/rong/imageloader/core/ImageLoaderConfiguration;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v1, v2, v8}, Lio/rong/imageloader/cache/disc/DiskCache;->save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v9

    .line 326
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    .end local v0           #decodingInfo:Lio/rong/imageloader/core/decode/ImageDecodingInfo;
    .end local v4           #targetImageSize:Lio/rong/imageloader/core/assist/ImageSize;
    .end local v7           #specialOptions:Lio/rong/imageloader/core/DisplayImageOptions;
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    return v9
.end method

.method static runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lio/rong/imageloader/core/ImageLoaderEngine;)V
    .locals 0
    .parameter "r"
    .parameter "sync"
    .parameter "handler"
    .parameter "engine"

    .prologue
    .line 470
    if-eqz p1, :cond_0

    .line 471
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 477
    :goto_0
    return-void

    .line 472
    :cond_0
    if-nez p2, :cond_1

    .line 473
    invoke-virtual {p3, p0}, Lio/rong/imageloader/core/ImageLoaderEngine;->fireCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private tryCacheImageOnDisk()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 270
    const-string v4, "Cache image on disk [%s]"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    :try_start_0
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->downloadImage()Z

    move-result v2

    .line 275
    .local v2, loaded:Z
    if-eqz v2, :cond_1

    .line 276
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget v3, v4, Lio/rong/imageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiskCache:I

    .line 277
    .local v3, width:I
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget v1, v4, Lio/rong/imageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiskCache:I

    .line 278
    .local v1, height:I
    if-gtz v3, :cond_0

    if-lez v1, :cond_1

    .line 279
    :cond_0
    const-string v4, "Resize image in disk cache [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    invoke-direct {p0, v3, v1}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->resizeAndSaveImage(II)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1           #height:I
    .end local v3           #width:I
    :cond_1
    :goto_0
    return v2

    .line 283
    .end local v2           #loaded:Z
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lio/rong/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 285
    const/4 v2, 0x0

    .restart local v2       #loaded:Z
    goto :goto_0
.end method

.method private tryLoadBitmap()Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lio/rong/imageloader/core/ImageLoaderConfiguration;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    iget-object v5, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v4, v5}, Lio/rong/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 218
    .local v2, imageFile:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 219
    const-string v4, "Load image from disk cache [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    sget-object v4, Lio/rong/imageloader/core/assist/LoadedFrom;->DISC_CACHE:Lio/rong/imageloader/core/assist/LoadedFrom;

    iput-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lio/rong/imageloader/core/assist/LoadedFrom;

    .line 222
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 223
    sget-object v4, Lio/rong/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lio/rong/imageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_4

    .line 226
    :cond_1
    const-string v4, "Load image from network [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    sget-object v4, Lio/rong/imageloader/core/assist/LoadedFrom;->NETWORK:Lio/rong/imageloader/core/assist/LoadedFrom;

    iput-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lio/rong/imageloader/core/assist/LoadedFrom;

    .line 229
    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    .line 230
    .local v3, imageUriForDecoding:Ljava/lang/String;
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lio/rong/imageloader/core/DisplayImageOptions;->isCacheOnDisk()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->tryCacheImageOnDisk()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lio/rong/imageloader/core/ImageLoaderConfiguration;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    iget-object v5, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v4, v5}, Lio/rong/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 232
    if-eqz v2, :cond_2

    .line 233
    sget-object v4, Lio/rong/imageloader/core/download/ImageDownloader$Scheme;->FILE:Lio/rong/imageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    :cond_2
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 238
    invoke-direct {p0, v3}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->decodeImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_4

    .line 241
    :cond_3
    sget-object v4, Lio/rong/imageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lio/rong/imageloader/core/assist/FailReason$FailType;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lio/rong/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 258
    .end local v2           #imageFile:Ljava/io/File;
    .end local v3           #imageUriForDecoding:Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, e:Ljava/lang/IllegalStateException;
    sget-object v4, Lio/rong/imageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lio/rong/imageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v4, v8}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lio/rong/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 246
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 247
    .local v1, e:Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
    throw v1

    .line 248
    .end local v1           #e:Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
    :catch_2
    move-exception v1

    .line 249
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lio/rong/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 250
    sget-object v4, Lio/rong/imageloader/core/assist/FailReason$FailType;->IO_ERROR:Lio/rong/imageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v4, v1}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lio/rong/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 251
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 252
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-static {v1}, Lio/rong/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 253
    sget-object v4, Lio/rong/imageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lio/rong/imageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v4, v1}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lio/rong/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 254
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/Throwable;
    invoke-static {v1}, Lio/rong/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 256
    sget-object v4, Lio/rong/imageloader/core/assist/FailReason$FailType;->UNKNOWN:Lio/rong/imageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v4, v1}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->fireFailEvent(Lio/rong/imageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private waitIfPaused()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 181
    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v3}, Lio/rong/imageloader/core/ImageLoaderEngine;->getPause()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    .line 182
    .local v1, pause:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    iget-object v3, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v3}, Lio/rong/imageloader/core/ImageLoaderEngine;->getPauseLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 184
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    const-string v4, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    invoke-virtual {v4}, Lio/rong/imageloader/core/ImageLoaderEngine;->getPauseLock()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    :try_start_2
    const-string v2, ".. Resume loading [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :cond_1
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->isTaskNotActual()Z

    move-result v2

    :goto_0
    return v2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "Task was interrupted [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    monitor-exit v3

    goto :goto_0

    .line 194
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method getLoadingUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public onBytesCopied(II)Z
    .locals 1
    .parameter "current"
    .parameter "total"

    .prologue
    .line 334
    iget-boolean v0, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->fireProgressEvent(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 120
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->waitIfPaused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->delayIfNeed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 123
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lio/rong/imageloader/core/ImageLoadingInfo;

    iget-object v3, v4, Lio/rong/imageloader/core/ImageLoadingInfo;->loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 124
    .local v3, loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;
    const-string v4, "Start display image task [%s]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    const-string v4, "Image already is loading. Waiting... [%s]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 132
    :try_start_0
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 134
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lio/rong/imageloader/core/ImageLoaderConfiguration;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

    iget-object v5, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-interface {v4, v5}, Lio/rong/imageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 136
    :cond_3
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->tryLoadBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    if-nez v0, :cond_4

    .line 172
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 139
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 140
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->checkTaskInterrupted()V

    .line 142
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lio/rong/imageloader/core/DisplayImageOptions;->shouldPreProcess()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    const-string v4, "PreProcess image before caching in memory [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lio/rong/imageloader/core/DisplayImageOptions;->getPreProcessor()Lio/rong/imageloader/core/process/BitmapProcessor;

    move-result-object v4

    invoke-interface {v4, v0}, Lio/rong/imageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    if-nez v0, :cond_5

    .line 146
    const-string v4, "Pre-processor returned null [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_5
    if-eqz v0, :cond_6

    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lio/rong/imageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 151
    const-string v4, "Cache image in memory [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->configuration:Lio/rong/imageloader/core/ImageLoaderConfiguration;

    iget-object v4, v4, Lio/rong/imageloader/core/ImageLoaderConfiguration;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

    iget-object v5, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lio/rong/imageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 159
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lio/rong/imageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 160
    const-string v4, "PostProcess image before displaying [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v4}, Lio/rong/imageloader/core/DisplayImageOptions;->getPostProcessor()Lio/rong/imageloader/core/process/BitmapProcessor;

    move-result-object v4

    invoke-interface {v4, v0}, Lio/rong/imageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    if-nez v0, :cond_7

    .line 163
    const-string v4, "Post-processor returned null [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_7
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->checkTaskNotActual()V

    .line 167
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->checkTaskInterrupted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    new-instance v1, Lio/rong/imageloader/core/DisplayBitmapTask;

    iget-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->imageLoadingInfo:Lio/rong/imageloader/core/ImageLoadingInfo;

    iget-object v5, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    iget-object v6, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lio/rong/imageloader/core/assist/LoadedFrom;

    invoke-direct {v1, v0, v4, v5, v6}, Lio/rong/imageloader/core/DisplayBitmapTask;-><init>(Landroid/graphics/Bitmap;Lio/rong/imageloader/core/ImageLoadingInfo;Lio/rong/imageloader/core/ImageLoaderEngine;Lio/rong/imageloader/core/assist/LoadedFrom;)V

    .line 176
    .local v1, displayBitmapTask:Lio/rong/imageloader/core/DisplayBitmapTask;
    iget-boolean v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->syncLoading:Z

    iget-object v5, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    invoke-static {v1, v4, v5, v6}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lio/rong/imageloader/core/ImageLoaderEngine;)V

    goto/16 :goto_0

    .line 155
    .end local v1           #displayBitmapTask:Lio/rong/imageloader/core/DisplayBitmapTask;
    :cond_8
    :try_start_2
    sget-object v4, Lio/rong/imageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lio/rong/imageloader/core/assist/LoadedFrom;

    iput-object v4, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->loadedFrom:Lio/rong/imageloader/core/assist/LoadedFrom;

    .line 156
    const-string v4, "...Get cached bitmap from memory after waiting. [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->memoryCacheKey:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 168
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 169
    .local v2, e:Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
    :try_start_3
    invoke-direct {p0}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->fireCancelEvent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .end local v2           #e:Lio/rong/imageloader/core/LoadAndDisplayImageTask$TaskCancelledException;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method
