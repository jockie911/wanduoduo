.class public Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imageloader/core/ImageLoaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final DEFAULT_TASK_PROCESSING_TYPE:Lio/rong/imageloader/core/assist/QueueProcessingType; = null

.field public static final DEFAULT_THREAD_POOL_SIZE:I = 0x3

.field public static final DEFAULT_THREAD_PRIORITY:I = 0x3

.field private static final WARNING_OVERLAP_DISK_CACHE_NAME_GENERATOR:Ljava/lang/String; = "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

.field private static final WARNING_OVERLAP_DISK_CACHE_PARAMS:Ljava/lang/String; = "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

.field private static final WARNING_OVERLAP_EXECUTOR:Ljava/lang/String; = "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

.field private static final WARNING_OVERLAP_MEMORY_CACHE:Ljava/lang/String; = "memoryCache() and memoryCacheSize() calls overlap each other"


# instance fields
.field private context:Landroid/content/Context;

.field private customExecutor:Z

.field private customExecutorForCachedImages:Z

.field private decoder:Lio/rong/imageloader/core/decode/ImageDecoder;

.field private defaultDisplayImageOptions:Lio/rong/imageloader/core/DisplayImageOptions;

.field private denyCacheImageMultipleSizesInMemory:Z

.field private diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

.field private diskCacheFileCount:I

.field private diskCacheFileNameGenerator:Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;

.field private diskCacheSize:J

.field private downloader:Lio/rong/imageloader/core/download/ImageDownloader;

.field private maxImageHeightForDiskCache:I

.field private maxImageHeightForMemoryCache:I

.field private maxImageWidthForDiskCache:I

.field private maxImageWidthForMemoryCache:I

.field private memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

.field private memoryCacheSize:I

.field private processorForDiskCache:Lio/rong/imageloader/core/process/BitmapProcessor;

.field private taskExecutor:Ljava/util/concurrent/Executor;

.field private taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

.field private tasksProcessingType:Lio/rong/imageloader/core/assist/QueueProcessingType;

.field private threadPoolSize:I

.field private threadPriority:I

.field private writeLogs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lio/rong/imageloader/core/assist/QueueProcessingType;->FIFO:Lio/rong/imageloader/core/assist/QueueProcessingType;

    sput-object v0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lio/rong/imageloader/core/assist/QueueProcessingType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    .line 167
    iput v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    .line 168
    iput v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I

    .line 169
    iput v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I

    .line 170
    iput-object v3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lio/rong/imageloader/core/process/BitmapProcessor;

    .line 172
    iput-object v3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 173
    iput-object v3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 174
    iput-boolean v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    .line 175
    iput-boolean v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    .line 177
    iput v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    .line 178
    iput v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    .line 179
    iput-boolean v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    .line 180
    sget-object v0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lio/rong/imageloader/core/assist/QueueProcessingType;

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lio/rong/imageloader/core/assist/QueueProcessingType;

    .line 182
    iput v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    .line 184
    iput v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    .line 186
    iput-object v3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

    .line 187
    iput-object v3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    .line 188
    iput-object v3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;

    .line 189
    iput-object v3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .line 191
    iput-object v3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lio/rong/imageloader/core/DisplayImageOptions;

    .line 193
    iput-boolean v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    return v0
.end method

.method static synthetic access$1000(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/core/assist/QueueProcessingType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lio/rong/imageloader/core/assist/QueueProcessingType;

    return-object v0
.end method

.method static synthetic access$1100(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/cache/disc/DiskCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    return-object v0
.end method

.method static synthetic access$1200(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/cache/memory/MemoryCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

    return-object v0
.end method

.method static synthetic access$1300(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/core/DisplayImageOptions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lio/rong/imageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic access$1400(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/core/download/ImageDownloader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lio/rong/imageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method static synthetic access$1500(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/core/decode/ImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lio/rong/imageloader/core/decode/ImageDecoder;

    return-object v0
.end method

.method static synthetic access$1600(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    return v0
.end method

.method static synthetic access$1700(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    return v0
.end method

.method static synthetic access$1800(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-boolean v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    return v0
.end method

.method static synthetic access$200(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    return v0
.end method

.method static synthetic access$300(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I

    return v0
.end method

.method static synthetic access$400(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I

    return v0
.end method

.method static synthetic access$500(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Lio/rong/imageloader/core/process/BitmapProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lio/rong/imageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$600(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$700(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$800(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    return v0
.end method

.method static synthetic access$900(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    return v0
.end method

.method private initEmptyFieldsWithDefaultValues()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 564
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_7

    .line 565
    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iget v1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iget-object v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lio/rong/imageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lio/rong/imageloader/core/DefaultConfigurationFactory;->createExecutor(IILio/rong/imageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 570
    :goto_0
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    .line 571
    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iget v1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iget-object v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lio/rong/imageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lio/rong/imageloader/core/DefaultConfigurationFactory;->createExecutor(IILio/rong/imageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 576
    :goto_1
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    if-nez v0, :cond_1

    .line 577
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;

    if-nez v0, :cond_0

    .line 578
    invoke-static {}, Lio/rong/imageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;

    .line 580
    :cond_0
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;

    iget-wide v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    iget v4, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    invoke-static {v0, v1, v2, v3, v4}, Lio/rong/imageloader/core/DefaultConfigurationFactory;->createDiskCache(Landroid/content/Context;Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;JI)Lio/rong/imageloader/cache/disc/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    .line 583
    :cond_1
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

    if-nez v0, :cond_2

    .line 584
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    iget v1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    invoke-static {v0, v1}, Lio/rong/imageloader/core/DefaultConfigurationFactory;->createMemoryCache(Landroid/content/Context;I)Lio/rong/imageloader/cache/memory/MemoryCache;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

    .line 586
    :cond_2
    iget-boolean v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    if-eqz v0, :cond_3

    .line 587
    new-instance v0, Lio/rong/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;

    iget-object v1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

    invoke-static {}, Lio/rong/imageloader/utils/MemoryCacheUtils;->createFuzzyKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/rong/imageloader/cache/memory/impl/FuzzyKeyMemoryCache;-><init>(Lio/rong/imageloader/cache/memory/MemoryCache;Ljava/util/Comparator;)V

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

    .line 589
    :cond_3
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lio/rong/imageloader/core/download/ImageDownloader;

    if-nez v0, :cond_4

    .line 590
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/rong/imageloader/core/DefaultConfigurationFactory;->createImageDownloader(Landroid/content/Context;)Lio/rong/imageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .line 592
    :cond_4
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lio/rong/imageloader/core/decode/ImageDecoder;

    if-nez v0, :cond_5

    .line 593
    iget-boolean v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    invoke-static {v0}, Lio/rong/imageloader/core/DefaultConfigurationFactory;->createImageDecoder(Z)Lio/rong/imageloader/core/decode/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lio/rong/imageloader/core/decode/ImageDecoder;

    .line 595
    :cond_5
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lio/rong/imageloader/core/DisplayImageOptions;

    if-nez v0, :cond_6

    .line 596
    invoke-static {}, Lio/rong/imageloader/core/DisplayImageOptions;->createSimple()Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lio/rong/imageloader/core/DisplayImageOptions;

    .line 598
    :cond_6
    return-void

    .line 568
    :cond_7
    iput-boolean v3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    goto :goto_0

    .line 574
    :cond_8
    iput-boolean v3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    goto :goto_1
.end method


# virtual methods
.method public build()Lio/rong/imageloader/core/ImageLoaderConfiguration;
    .locals 2

    .prologue
    .line 559
    invoke-direct {p0}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->initEmptyFieldsWithDefaultValues()V

    .line 560
    new-instance v0, Lio/rong/imageloader/core/ImageLoaderConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/rong/imageloader/core/ImageLoaderConfiguration;-><init>(Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;Lio/rong/imageloader/core/ImageLoaderConfiguration$1;)V

    return-object v0
.end method

.method public defaultDisplayImageOptions(Lio/rong/imageloader/core/DisplayImageOptions;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .parameter "defaultDisplayImageOptions"

    .prologue
    .line 543
    iput-object p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lio/rong/imageloader/core/DisplayImageOptions;

    .line 544
    return-object p0
.end method

.method public denyCacheImageMultipleSizesInMemory()Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    .line 334
    return-object p0
.end method

.method public discCache(Lio/rong/imageloader/cache/disc/DiskCache;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .parameter "diskCache"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache(Lio/rong/imageloader/cache/disc/DiskCache;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public discCacheExtraOptions(IILio/rong/imageloader/core/process/BitmapProcessor;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .parameter "maxImageWidthForDiskCache"
    .parameter "maxImageHeightForDiskCache"
    .parameter "processorForDiskCache"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheExtraOptions(IILio/rong/imageloader/core/process/BitmapProcessor;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public discCacheFileCount(I)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .parameter "maxFileCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p0, p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount(I)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public discCacheFileNameGenerator(Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .parameter "fileNameGenerator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public discCacheSize(I)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .parameter "maxCacheSize"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public diskCache(Lio/rong/imageloader/cache/disc/DiskCache;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 5
    .parameter "diskCache"

    .prologue
    const/4 v4, 0x0

    .line 503
    iget-wide v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    if-lez v0, :cond_1

    .line 504
    :cond_0
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    :cond_1
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;

    if-eqz v0, :cond_2

    .line 507
    const-string v0, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    :cond_2
    iput-object p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    .line 511
    return-object p0
.end method

.method public diskCacheExtraOptions(IILio/rong/imageloader/core/process/BitmapProcessor;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .parameter "maxImageWidthForDiskCache"
    .parameter "maxImageHeightForDiskCache"
    .parameter "processorForDiskCache"

    .prologue
    .line 234
    iput p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I

    .line 235
    iput p2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I

    .line 236
    iput-object p3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lio/rong/imageloader/core/process/BitmapProcessor;

    .line 237
    return-object p0
.end method

.method public diskCacheFileCount(I)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "maxFileCount"

    .prologue
    .line 451
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxFileCount must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_1

    .line 454
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    :cond_1
    iput p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    .line 458
    return-object p0
.end method

.method public diskCacheFileNameGenerator(Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "fileNameGenerator"

    .prologue
    .line 474
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_0

    .line 475
    const-string v0, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    :cond_0
    iput-object p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lio/rong/imageloader/cache/disc/naming/FileNameGenerator;

    .line 479
    return-object p0
.end method

.method public diskCacheSize(I)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "maxCacheSize"

    .prologue
    .line 426
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lio/rong/imageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_1

    .line 429
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :cond_1
    int-to-long v0, p1

    iput-wide v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    .line 433
    return-object p0
.end method

.method public imageDecoder(Lio/rong/imageloader/core/decode/ImageDecoder;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .parameter "imageDecoder"

    .prologue
    .line 532
    iput-object p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lio/rong/imageloader/core/decode/ImageDecoder;

    .line 533
    return-object p0
.end method

.method public imageDownloader(Lio/rong/imageloader/core/download/ImageDownloader;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .parameter "imageDownloader"

    .prologue
    .line 521
    iput-object p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lio/rong/imageloader/core/download/ImageDownloader;

    .line 522
    return-object p0
.end method

.method public memoryCache(Lio/rong/imageloader/cache/memory/MemoryCache;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "memoryCache"

    .prologue
    .line 403
    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    :cond_0
    iput-object p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

    .line 408
    return-object p0
.end method

.method public memoryCacheExtraOptions(II)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .parameter "maxImageWidthForMemoryCache"
    .parameter "maxImageHeightForMemoryCache"

    .prologue
    .line 208
    iput p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    .line 209
    iput p2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    .line 210
    return-object p0
.end method

.method public memoryCacheSize(I)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "memoryCacheSize"

    .prologue
    .line 359
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "memoryCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

    if-eqz v0, :cond_1

    .line 362
    const-string v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    :cond_1
    iput p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    .line 366
    return-object p0
.end method

.method public memoryCacheSizePercentage(I)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 5
    .parameter "availableMemoryPercent"

    .prologue
    .line 379
    if-lez p1, :cond_0

    const/16 v2, 0x64

    if-lt p1, v2, :cond_1

    .line 380
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "availableMemoryPercent must be in range (0 < % < 100)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    :cond_1
    iget-object v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lio/rong/imageloader/cache/memory/MemoryCache;

    if-eqz v2, :cond_2

    .line 384
    const-string v2, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 388
    .local v0, availableMemory:J
    long-to-float v2, v0

    int-to-float v3, p1

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    .line 389
    return-object p0
.end method

.method public taskExecutor(Ljava/util/concurrent/Executor;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "executor"

    .prologue
    const/4 v1, 0x3

    .line 254
    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lio/rong/imageloader/core/assist/QueueProcessingType;

    sget-object v1, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lio/rong/imageloader/core/assist/QueueProcessingType;

    if-eq v0, v1, :cond_1

    .line 255
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_1
    iput-object p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 259
    return-object p0
.end method

.method public taskExecutorForCachedImages(Ljava/util/concurrent/Executor;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "executorForCachedImages"

    .prologue
    const/4 v1, 0x3

    .line 281
    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lio/rong/imageloader/core/assist/QueueProcessingType;

    sget-object v1, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lio/rong/imageloader/core/assist/QueueProcessingType;

    if-eq v0, v1, :cond_1

    .line 282
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :cond_1
    iput-object p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 286
    return-object p0
.end method

.method public tasksProcessingOrder(Lio/rong/imageloader/core/assist/QueueProcessingType;)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "tasksProcessingType"

    .prologue
    .line 342
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_1
    iput-object p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lio/rong/imageloader/core/assist/QueueProcessingType;

    .line 347
    return-object p0
.end method

.method public threadPoolSize(I)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "threadPoolSize"

    .prologue
    .line 294
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_1
    iput p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    .line 299
    return-object p0
.end method

.method public threadPriority(I)Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 4
    .parameter "threadPriority"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 308
    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/rong/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    :cond_1
    if-ge p1, v2, :cond_2

    .line 313
    iput v2, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    .line 321
    :goto_0
    return-object p0

    .line 315
    :cond_2
    if-le p1, v3, :cond_3

    .line 316
    iput v3, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    goto :goto_0

    .line 318
    :cond_3
    iput p1, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    goto :goto_0
.end method

.method public writeDebugLogs()Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1

    .prologue
    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/imageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    .line 554
    return-object p0
.end method
