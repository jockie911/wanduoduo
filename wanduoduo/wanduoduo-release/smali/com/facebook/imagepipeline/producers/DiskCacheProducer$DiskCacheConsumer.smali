.class Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;
.super Lcom/facebook/imagepipeline/producers/DelegatingConsumer;
.source "DiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/producers/DiskCacheProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiskCacheConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/DelegatingConsumer",
        "<",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        "Lcom/facebook/imagepipeline/image/EncodedImage;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

.field private final mCacheKey:Lcom/facebook/cache/common/CacheKey;

.field final synthetic this$0:Lcom/facebook/imagepipeline/producers/DiskCacheProducer;


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)V
    .locals 0
    .parameter
    .parameter
    .parameter "cache"
    .parameter "cacheKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer",
            "<",
            "Lcom/facebook/imagepipeline/image/EncodedImage;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/BufferedDiskCache;",
            "Lcom/facebook/cache/common/CacheKey;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, consumer:Lcom/facebook/imagepipeline/producers/Consumer;,"Lcom/facebook/imagepipeline/producers/Consumer<Lcom/facebook/imagepipeline/image/EncodedImage;>;"
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->this$0:Lcom/facebook/imagepipeline/producers/DiskCacheProducer;

    .line 213
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/DelegatingConsumer;-><init>(Lcom/facebook/imagepipeline/producers/Consumer;)V

    .line 214
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->mCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    .line 215
    iput-object p4, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 216
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/producers/DiskCacheProducer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;-><init>(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/cache/BufferedDiskCache;Lcom/facebook/cache/common/CacheKey;)V

    return-void
.end method


# virtual methods
.method public onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;Z)V
    .locals 3
    .parameter "newResult"
    .parameter "isLast"

    .prologue
    .line 220
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 221
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->this$0:Lcom/facebook/imagepipeline/producers/DiskCacheProducer;

    #getter for: Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mChooseCacheByImageSize:Z
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->access$300(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/EncodedImage;->getSize()I

    move-result v0

    .line 223
    .local v0, size:I
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->this$0:Lcom/facebook/imagepipeline/producers/DiskCacheProducer;

    #getter for: Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mForceSmallCacheThresholdBytes:I
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->access$400(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->this$0:Lcom/facebook/imagepipeline/producers/DiskCacheProducer;

    #getter for: Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mSmallImageBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->access$500(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;)Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {v1, v2, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    .line 232
    .end local v0           #size:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->getConsumer()Lcom/facebook/imagepipeline/producers/Consumer;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onNewResult(Ljava/lang/Object;Z)V

    .line 233
    return-void

    .line 226
    .restart local v0       #size:I
    :cond_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->this$0:Lcom/facebook/imagepipeline/producers/DiskCacheProducer;

    #getter for: Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->mDefaultBufferedDiskCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer;->access$600(Lcom/facebook/imagepipeline/producers/DiskCacheProducer;)Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {v1, v2, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    goto :goto_0

    .line 229
    .end local v0           #size:I
    :cond_2
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->mCache:Lcom/facebook/imagepipeline/cache/BufferedDiskCache;

    iget-object v2, p0, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->mCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-virtual {v1, v2, p1}, Lcom/facebook/imagepipeline/cache/BufferedDiskCache;->put(Lcom/facebook/cache/common/CacheKey;Lcom/facebook/imagepipeline/image/EncodedImage;)V

    goto :goto_0
.end method

.method public bridge synthetic onNewResultImpl(Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    check-cast p1, Lcom/facebook/imagepipeline/image/EncodedImage;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/DiskCacheProducer$DiskCacheConsumer;->onNewResultImpl(Lcom/facebook/imagepipeline/image/EncodedImage;Z)V

    return-void
.end method
