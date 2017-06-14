.class public final Lio/rong/imageloader/core/ImageLoaderConfiguration;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imageloader/core/ImageLoaderConfiguration$1;,
        Lio/rong/imageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;,
        Lio/rong/imageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader;,
        Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    }
.end annotation


# instance fields
.field final customExecutor:Z

.field final customExecutorForCachedImages:Z

.field final decoder:Lio/rong/imageloader/core/decode/ImageDecoder;

.field final defaultDisplayImageOptions:Lio/rong/imageloader/core/DisplayImageOptions;

.field final diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

.field final downloader:Lio/rong/imageloader/core/download/ImageDownloader;

.field final maxImageHeightForDiskCache:I

.field final maxImageHeightForMemoryCache:I

.field final maxImageWidthForDiskCache:I

.field final maxImageWidthForMemoryCache:I

.field final memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

.field final networkDeniedDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

.field final processorForDiskCache:Lio/rong/imageloader/core/process/BitmapProcessor;

.field final resources:Landroid/content/res/Resources;

.field final slowNetworkDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

.field final taskExecutor:Ljava/util/concurrent/Executor;

.field final taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

.field final tasksProcessingType:Lio/rong/imageloader/core/assist/QueueProcessingType;

.field final threadPoolSize:I

.field final threadPriority:I


# direct methods
.method private constructor <init>(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$000(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    .line 80
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$100(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->maxImageWidthForMemoryCache:I

    .line 81
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$200(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->maxImageHeightForMemoryCache:I

    .line 82
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$300(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiskCache:I

    .line 83
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$400(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiskCache:I

    .line 84
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lio/rong/imageloader/core/process/BitmapProcessor;
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$500(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->processorForDiskCache:Lio/rong/imageloader/core/process/BitmapProcessor;

    .line 85
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$600(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 86
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$700(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 87
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$800(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->threadPoolSize:I

    .line 88
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$900(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->threadPriority:I

    .line 89
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lio/rong/imageloader/core/assist/QueueProcessingType;
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$1000(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/core/assist/QueueProcessingType;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->tasksProcessingType:Lio/rong/imageloader/core/assist/QueueProcessingType;

    .line 90
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$1100(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/cache/disc/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    .line 91
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$1200(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/cache/memory/MemoryCache;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

    .line 92
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lio/rong/imageloader/core/DisplayImageOptions;
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$1300(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lio/rong/imageloader/core/DisplayImageOptions;

    .line 93
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lio/rong/imageloader/core/download/ImageDownloader;
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$1400(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->downloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .line 94
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lio/rong/imageloader/core/decode/ImageDecoder;
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$1500(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/core/decode/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->decoder:Lio/rong/imageloader/core/decode/ImageDecoder;

    .line 96
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$1600(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->customExecutor:Z

    .line 97
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$1700(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->customExecutorForCachedImages:Z

    .line 99
    new-instance v0, Lio/rong/imageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader;

    iget-object v1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->downloader:Lio/rong/imageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader;-><init>(Lio/rong/imageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->networkDeniedDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .line 100
    new-instance v0, Lio/rong/imageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;

    iget-object v1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->downloader:Lio/rong/imageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;-><init>(Lio/rong/imageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->slowNetworkDownloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .line 102
    #getter for: Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z
    invoke-static {p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->access$1800(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Z

    move-result v0

    invoke-static {v0}, Lio/rong/imageloader/utils/L;->writeDebugLogs(Z)V

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;Lio/rong/imageloader/core/ImageLoaderConfiguration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration;-><init>(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)V

    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Lio/rong/imageloader/core/ImageLoaderConfiguration;
    .locals 1
    .parameter "context"

    .prologue
    .line 127
    new-instance v0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v0, p0}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->build()Lio/rong/imageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getMaxImageSize()Lio/rong/imageloader/core/assist/ImageSize;
    .locals 4

    .prologue
    .line 131
    iget-object v3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 133
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->maxImageWidthForMemoryCache:I

    .line 134
    .local v2, width:I
    if-gtz v2, :cond_0

    .line 135
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 137
    :cond_0
    iget v1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration;->maxImageHeightForMemoryCache:I

    .line 138
    .local v1, height:I
    if-gtz v1, :cond_1

    .line 139
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 141
    :cond_1
    new-instance v3, Lio/rong/imageloader/core/assist/ImageSize;

    invoke-direct {v3, v2, v1}, Lio/rong/imageloader/core/assist/ImageSize;-><init>(II)V

    return-object v3
.end method
