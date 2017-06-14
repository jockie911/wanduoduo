.class final Lio/rong/imageloader/core/ProcessAndDisplayImageTask;
.super Ljava/lang/Object;
.source "ProcessAndDisplayImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_POSTPROCESS_IMAGE:Ljava/lang/String; = "PostProcess image before displaying [%s]"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final engine:Lio/rong/imageloader/core/ImageLoaderEngine;

.field private final handler:Landroid/os/Handler;

.field private final imageLoadingInfo:Lio/rong/imageloader/core/ImageLoadingInfo;


# direct methods
.method public constructor <init>(Lio/rong/imageloader/core/ImageLoaderEngine;Landroid/graphics/Bitmap;Lio/rong/imageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V
    .locals 0
    .parameter "engine"
    .parameter "bitmap"
    .parameter "imageLoadingInfo"
    .parameter "handler"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lio/rong/imageloader/core/ProcessAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    .line 44
    iput-object p2, p0, Lio/rong/imageloader/core/ProcessAndDisplayImageTask;->bitmap:Landroid/graphics/Bitmap;

    .line 45
    iput-object p3, p0, Lio/rong/imageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lio/rong/imageloader/core/ImageLoadingInfo;

    .line 46
    iput-object p4, p0, Lio/rong/imageloader/core/ProcessAndDisplayImageTask;->handler:Landroid/os/Handler;

    .line 47
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 51
    const-string v3, "PostProcess image before displaying [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lio/rong/imageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lio/rong/imageloader/core/ImageLoadingInfo;

    iget-object v6, v6, Lio/rong/imageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lio/rong/imageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v3, p0, Lio/rong/imageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lio/rong/imageloader/core/ImageLoadingInfo;

    iget-object v3, v3, Lio/rong/imageloader/core/ImageLoadingInfo;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lio/rong/imageloader/core/DisplayImageOptions;->getPostProcessor()Lio/rong/imageloader/core/process/BitmapProcessor;

    move-result-object v2

    .line 54
    .local v2, processor:Lio/rong/imageloader/core/process/BitmapProcessor;
    iget-object v3, p0, Lio/rong/imageloader/core/ProcessAndDisplayImageTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3}, Lio/rong/imageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    .local v1, processedBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Lio/rong/imageloader/core/DisplayBitmapTask;

    iget-object v3, p0, Lio/rong/imageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lio/rong/imageloader/core/ImageLoadingInfo;

    iget-object v4, p0, Lio/rong/imageloader/core/ProcessAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    sget-object v5, Lio/rong/imageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lio/rong/imageloader/core/assist/LoadedFrom;

    invoke-direct {v0, v1, v3, v4, v5}, Lio/rong/imageloader/core/DisplayBitmapTask;-><init>(Landroid/graphics/Bitmap;Lio/rong/imageloader/core/ImageLoadingInfo;Lio/rong/imageloader/core/ImageLoaderEngine;Lio/rong/imageloader/core/assist/LoadedFrom;)V

    .line 57
    .local v0, displayBitmapTask:Lio/rong/imageloader/core/DisplayBitmapTask;
    iget-object v3, p0, Lio/rong/imageloader/core/ProcessAndDisplayImageTask;->imageLoadingInfo:Lio/rong/imageloader/core/ImageLoadingInfo;

    iget-object v3, v3, Lio/rong/imageloader/core/ImageLoadingInfo;->options:Lio/rong/imageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lio/rong/imageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v3

    iget-object v4, p0, Lio/rong/imageloader/core/ProcessAndDisplayImageTask;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lio/rong/imageloader/core/ProcessAndDisplayImageTask;->engine:Lio/rong/imageloader/core/ImageLoaderEngine;

    invoke-static {v0, v3, v4, v5}, Lio/rong/imageloader/core/LoadAndDisplayImageTask;->runTask(Ljava/lang/Runnable;ZLandroid/os/Handler;Lio/rong/imageloader/core/ImageLoaderEngine;)V

    .line 58
    return-void
.end method
