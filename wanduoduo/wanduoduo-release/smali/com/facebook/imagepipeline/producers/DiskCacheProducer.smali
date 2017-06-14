.class public Lcom/facebook/imagepipeline/producers/DiskCacheProducer;
.super Ljava/lang/Object;
.source "DiskCacheProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/Producer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/Producer",
        "<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# static fields
.field static final PRODUCER_NAME:Ljava/lang/String; = "DiskCacheProducer"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field static final VALUE_FOUND:Ljava/lang/String; = "cached_value_found"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

.field private final mChooseCacheByImageSize:Z

.field private final mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field private final mForceSmallCacheThresholdBytes:I

.field private final mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/Producer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/imagepipeline/cache/CacheKeyFactory;Lcom/facebook/imagepipeline/producers/Producer;I)V
    .locals 1
    .parameter "defaultBufferedDiskCache"
    .parameter "smallImageBufferedDiskCache"
    .parameter "cacheKeyFactory"
    .parameter
    .parameter "forceSmallCacheThresholdBytes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/imagepipeline/cache/CacheKeyFactory;",
            "Lcom/facebook/imagepipeline/producers/Producer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p4, inputProducer:Lcom/facebook/imagepipeline/producers/Producer;,"Lcom/facebook/imagepipeline/producers/Producer<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 55
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 56
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    .line 57
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    .line 58
    iput p5, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mForceSmallCacheThresholdBytes:I

    .line 59
    if-lez p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mChooseCacheByImageSize:Z

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lbolts/Task;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->isTaskCancelled(Lbolts/Task;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->maybeStartInputProducer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mChooseCacheByImageSize:Z

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mForceSmallCacheThresholdBytes:I

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;)Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;)Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    return-object v0
.end method

.method static getExtraMap(Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 2
    .parameter "listener"
    .parameter "requestId"
    .parameter "valueFound"
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/ProducerListener;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/producers/ProducerListener;->requiresExtraMap(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cached_value_found"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private static isTaskCancelled(Lbolts/Task;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, task:Lbolts/Task;,"Lbolts/Task<*>;"
    invoke-virtual {p0}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeStartInputProducer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 2
    .parameter
    .parameter
    .parameter "producerContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, consumerOfDiskCacheProducer:Lcom/facebook/imagepipeline/producers/Consumer;,"Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    .local p2, consumerOfInputProducer:Lcom/facebook/imagepipeline/producers/Consumer;,"Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    invoke-interface {p3}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getLowestPermittedRequestLevel()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v0

    sget-object v1, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->DISK_CACHE:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 167
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 168
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mInputProducer:Lcom/facebook/imagepipeline/producers/Producer;

    invoke-interface {v0, p2, p3}, Lcom/facebook/imagepipeline/producers/Producer;->produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    goto :goto_0
.end method

.method private onFinishDiskReads(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lbolts/Continuation;
    .locals 8
    .parameter
    .parameter "preferredCache"
    .parameter "preferredCacheKey"
    .parameter "producerContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/cache/common/CacheKey;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")",
            "Lbolts/Continuation",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, consumer:Lcom/facebook/imagepipeline/producers/Consumer;,"Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    invoke-interface {p4}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, requestId:Ljava/lang/String;
    invoke-interface {p4}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v2

    .line 118
    .local v2, listener:Lcom/facebook/imagepipeline/producers/ProducerListener;
    new-instance v0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$2;-><init>(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;Lcom/facebook/imagepipeline/producers/ProducerListener;Ljava/lang/String;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    return-object v0
.end method

.method private subscribeTaskForRequestCancellation(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 1
    .parameter "isCancelled"
    .parameter "producerContext"

    .prologue
    .line 189
    new-instance v0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$3;-><init>(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->addCallbacks(Lcom/facebook/imagepipeline/producers/ProducerContextCallbacks;)V

    .line 196
    return-void
.end method


# virtual methods
.method public produceResults(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 18
    .parameter
    .parameter "producerContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, consumer:Lcom/facebook/imagepipeline/producers/Consumer;,"Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getImageRequest()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v10

    .line 66
    .local v10, imageRequest:Lcom/facebook/imagepipeline/request/ImageRequest;
    invoke-virtual {v10}, Lcom/facebook/imagepipeline/request/ImageRequest;->isDiskCacheEnabled()Z

    move-result v15

    if-nez v15, :cond_0

    .line 67
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->maybeStartInputProducer(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 109
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getListener()Lcom/facebook/imagepipeline/producers/ProducerListener;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->getId()Ljava/lang/String;

    move-result-object v16

    const-string v17, "DiskCacheProducer"

    invoke-interface/range {v15 .. v17}, Lcom/facebook/imagepipeline/producers/ProducerListener;->onProducerStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mCacheKeyFactory:Lcom/facebook/imagepipeline/cache/CacheKeyFactory;

    invoke-interface {v15, v10}, Lcom/facebook/imagepipeline/cache/CacheKeyFactory;->getEncodedCacheKey(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/cache/common/CacheKey;

    move-result-object v6

    .line 74
    .local v6, cacheKey:Lcom/facebook/cache/common/CacheKey;
    invoke-virtual {v10}, Lcom/facebook/imagepipeline/request/ImageRequest;->getImageType()Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    move-result-object v15

    sget-object v16, Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;->SMALL:Lcom/facebook/imagepipeline/request/ImageRequest$ImageType;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v12, 0x1

    .line 75
    .local v12, isSmallRequest:Z
    :goto_1
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 77
    .local v13, preferredCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    :goto_2
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-direct {v11, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 79
    .local v11, isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mChooseCacheByImageSize:Z

    if-eqz v15, :cond_5

    .line 80
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v15, v6}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->containsSync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v5

    .line 81
    .local v5, alreadyInSmall:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    invoke-virtual {v15, v6}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->containsSync(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v4

    .line 84
    .local v4, alreadyInMain:Z
    if-nez v5, :cond_1

    if-nez v4, :cond_4

    .line 85
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 86
    .local v9, firstCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 91
    .local v14, secondCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    :goto_3
    invoke-virtual {v9, v6, v11}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->get(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;

    move-result-object v8

    .line 92
    .local v8, diskLookupTask:Lbolts/Task;,"Lbolts/Task<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    new-instance v15, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v14, v6, v11}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$1;-><init>(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v8, v15}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v8

    .line 106
    .end local v4           #alreadyInMain:Z
    .end local v5           #alreadyInSmall:Z
    .end local v9           #firstCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .end local v14           #secondCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v6, v2}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->onFinishDiskReads(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lbolts/Continuation;

    move-result-object v7

    .line 107
    .local v7, continuation:Lbolts/Continuation;,"Lbolts/Continuation<Lcom/facebook/imagepipeline/image/EncodedImage;Ljava/lang/Void;>;"
    invoke-virtual {v8, v7}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->subscribeTaskForRequestCancellation(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    goto :goto_0

    .line 74
    .end local v7           #continuation:Lbolts/Continuation;,"Lbolts/Continuation<Lcom/facebook/imagepipeline/image/EncodedImage;Ljava/lang/Void;>;"
    .end local v8           #diskLookupTask:Lbolts/Task;,"Lbolts/Task<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    .end local v11           #isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v12           #isSmallRequest:Z
    .end local v13           #preferredCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 75
    .restart local v12       #isSmallRequest:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    goto :goto_2

    .line 88
    .restart local v4       #alreadyInMain:Z
    .restart local v5       #alreadyInSmall:Z
    .restart local v11       #isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v13       #preferredCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 89
    .restart local v9       #firstCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .restart local v14       #secondCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    goto :goto_3

    .line 103
    .end local v4           #alreadyInMain:Z
    .end local v5           #alreadyInSmall:Z
    .end local v9           #firstCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    .end local v14           #secondCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    :cond_5
    invoke-virtual {v13, v6, v11}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->get(Lcom/facebook/cache/common/CacheKey;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/Task;

    move-result-object v8

    .restart local v8       #diskLookupTask:Lbolts/Task;,"Lbolts/Task<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    goto :goto_4
.end method
