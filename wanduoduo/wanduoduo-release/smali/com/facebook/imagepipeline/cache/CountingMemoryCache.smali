.class public Lcom/facebook/imagepipeline/cache/CountingMemoryCache;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/MemoryCache;
.implements Lcom/facebook/common/memory/MemoryTrimmable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,
        Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;,
        Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/MemoryCache",
        "<TK;TV;>;",
        "Lcom/facebook/common/memory/MemoryTrimmable;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field static final PARAMS_INTERCHECK_INTERVAL_MS:J
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;

.field final mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingLruMap",
            "<TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/CountingLruMap",
            "<TK;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLastCacheParamsCheck:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field protected mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Supplier",
            "<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->PARAMS_INTERCHECK_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;Lcom/facebook/common/internal/Supplier;)V
    .locals 2
    .parameter
    .parameter "cacheTrimStrategy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor",
            "<TV;>;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;",
            "Lcom/facebook/common/internal/Supplier",
            "<",
            "Lcom/facebook/imagepipeline/cache/MemoryCacheParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, valueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;,"Lcom/facebook/imagepipeline/cache/ValueDescriptor<TV;>;"
    .local p3, memoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;,"Lcom/facebook/common/internal/Supplier<Lcom/facebook/imagepipeline/cache/MemoryCacheParams;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    .line 129
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 130
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;-><init>(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    .line 131
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;

    .line 132
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    .line 133
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mLastCacheParamsCheck:J

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/imagepipeline/cache/CountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->releaseClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    return-void
.end method

.method private declared-synchronized canCacheNewValue(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;

    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/ValueDescriptor;->getSizeInBytes(Ljava/lang/Object;)I

    move-result v0

    .line 204
    .local v0, newValueSize:I
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v1, v1, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntrySize:I

    if-gt v0, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getInUseCount()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntries:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getInUseSizeInBytes()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v2, v2, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 203
    .end local v0           #newValueSize:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized decreaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 480
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return-void

    .line 479
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized increaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 473
    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    monitor-exit p0

    return-void

    .line 472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    const/4 v0, 0x1

    .line 464
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-boolean v1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-void

    .line 465
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized makeOrphans(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, oldEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 456
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 457
    .local v0, oldEntry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 455
    .end local v0           #oldEntry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 460
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized maybeAddToExclusives(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    if-nez v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private maybeClose(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, oldEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 428
    .local v0, oldEntry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    goto :goto_0

    .line 431
    .end local v0           #oldEntry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method

.method private maybeEvictEntries()V
    .locals 6

    .prologue
    .line 381
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v3, v3, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxEvictionQueueEntries:I

    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v4, v4, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheEntries:I

    .line 384
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getInUseCount()I

    move-result v5

    sub-int/2addr v4, v5

    .line 382
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 385
    .local v0, maxCount:I
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v3, v3, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxEvictionQueueSize:I

    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iget v4, v4, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;->maxCacheSize:I

    .line 387
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getInUseSizeInBytes()I

    move-result v5

    sub-int/2addr v4, v5

    .line 385
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 388
    .local v1, maxSize:I
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->trimExclusivelyOwnedEntries(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 389
    .local v2, oldEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 390
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 392
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 393
    return-void

    .line 390
    .end local v0           #maxCount:I
    .end local v1           #maxSize:I
    .end local v2           #oldEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static maybeNotifyExclusiveEntryInsertion(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;->onExclusivityChanged(Ljava/lang/Object;Z)V

    .line 451
    :cond_0
    return-void
.end method

.method private static maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->key:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;->onExclusivityChanged(Ljava/lang/Object;Z)V

    .line 445
    :cond_0
    return-void
.end method

.method private maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_0

    .line 435
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 436
    .local v0, entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    goto :goto_0

    .line 439
    .end local v0           #entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method

.method private declared-synchronized maybeUpdateCacheParams()V
    .locals 4

    .prologue
    .line 366
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mLastCacheParamsCheck:J

    sget-wide v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->PARAMS_INTERCHECK_INTERVAL_MS:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 371
    :goto_0
    monitor-exit p0

    return-void

    .line 369
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mLastCacheParamsCheck:J

    .line 370
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParamsSupplier:Lcom/facebook/common/internal/Supplier;

    invoke-interface {v0}, Lcom/facebook/common/internal/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/cache/MemoryCacheParams;

    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mMemoryCacheParams:Lcom/facebook/imagepipeline/cache/MemoryCacheParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->increaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 235
    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    .line 236
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$2;

    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$2;-><init>(Lcom/facebook/imagepipeline/cache/CountingMemoryCache;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 235
    invoke-static {v0, v1}, Lcom/facebook/common/references/CloseableReference;->of(Ljava/lang/Object;Lcom/facebook/common/references/ResourceReleaser;)Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 486
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->isOrphan:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private releaseClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->decreaseClientCount(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeAddToExclusives(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Z

    move-result v0

    .line 253
    .local v0, isExclusiveAdded:Z
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 254
    .local v1, oldRefToClose:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<TV;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 256
    if-eqz v0, :cond_0

    .end local p1           #entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryInsertion(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 257
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeUpdateCacheParams()V

    .line 258
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeEvictEntries()V

    .line 259
    return-void

    .line 254
    .end local v0           #isExclusiveAdded:Z
    .end local v1           #oldRefToClose:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<TV;>;"
    .restart local p1       #entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 256
    .restart local v0       #isExclusiveAdded:Z
    .restart local v1       #oldRefToClose:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<TV;>;"
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized trimExclusivelyOwnedEntries(II)Ljava/util/ArrayList;
    .locals 3
    .parameter "count"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 404
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 405
    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 407
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v2

    if-gt v2, p1, :cond_1

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gt v2, p2, :cond_1

    .line 408
    const/4 v1, 0x0

    .line 416
    :cond_0
    monitor-exit p0

    return-object v1

    .line 410
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v1, oldEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v2

    if-gt v2, p1, :cond_2

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 412
    :cond_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getFirstKey()Ljava/lang/Object;

    move-result-object v0

    .line 413
    .local v0, key:Ljava/lang/Object;,"TK;"
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 404
    .end local v0           #key:Ljava/lang/Object;,"TK;"
    .end local v1           #oldEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private wrapValueDescriptor(Lcom/facebook/imagepipeline/cache/ValueDescriptor;)Lcom/facebook/imagepipeline/cache/ValueDescriptor;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor",
            "<TV;>;)",
            "Lcom/facebook/imagepipeline/cache/ValueDescriptor",
            "<",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, evictableValueDescriptor:Lcom/facebook/imagepipeline/cache/ValueDescriptor;,"Lcom/facebook/imagepipeline/cache/ValueDescriptor<TV;>;"
    new-instance v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$1;-><init>(Lcom/facebook/imagepipeline/cache/CountingMemoryCache;Lcom/facebook/imagepipeline/cache/ValueDescriptor;)V

    return-object v0
.end method


# virtual methods
.method public cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference",
            "<TV;>;)",
            "Lcom/facebook/common/references/CloseableReference",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, valueRef:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public cache(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference",
            "<TV;>;",
            "Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver",
            "<TK;>;)",
            "Lcom/facebook/common/references/CloseableReference",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, valueRef:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<TV;>;"
    .local p3, observer:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver<TK;>;"
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeUpdateCacheParams()V

    .line 177
    const/4 v4, 0x0

    .line 178
    .local v4, oldRefToClose:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<TV;>;"
    const/4 v0, 0x0

    .line 179
    .local v0, clientRef:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<TV;>;"
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v5, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v5, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 182
    .local v3, oldExclusive:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    iget-object v5, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v5, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 183
    .local v2, oldEntry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    if-eqz v2, :cond_0

    .line 184
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->makeOrphan(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 185
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->referenceToClose(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v4

    .line 188
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->canCacheNewValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->of(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/CountingMemoryCache$EntryStateObserver;)Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    move-result-object v1

    .line 190
    .local v1, newEntry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    iget-object v5, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v5, p1, v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 193
    .end local v1           #newEntry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-static {v4}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 195
    invoke-static {v3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 197
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeEvictEntries()V

    .line 198
    return-object v0

    .line 193
    .end local v2           #oldEntry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    .end local v3           #oldExclusive:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 324
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->clear()Ljava/util/ArrayList;

    move-result-object v1

    .line 326
    .local v1, oldExclusives:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->clear()Ljava/util/ArrayList;

    move-result-object v0

    .line 327
    .local v0, oldEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 328
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 330
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 331
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeUpdateCacheParams()V

    .line 332
    return-void

    .line 328
    .end local v0           #oldEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    .end local v1           #oldExclusives:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public declared-synchronized contains(Lcom/android/internal/util/Predicate;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<TK;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getMatchingEntries(Lcom/android/internal/util/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 216
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, clientRef:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<TV;>;"
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 221
    .local v2, oldExclusive:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 222
    .local v1, entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 223
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->newClientReference(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    .line 225
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 227
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeUpdateCacheParams()V

    .line 228
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeEvictEntries()V

    .line 229
    return-object v0

    .line 225
    .end local v1           #entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    .end local v2           #oldExclusive:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public declared-synchronized getCount()I
    .locals 1

    .prologue
    .line 492
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEvictionQueueCount()I
    .locals 1

    .prologue
    .line 512
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEvictionQueueSizeInBytes()I
    .locals 1

    .prologue
    .line 517
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInUseCount()I
    .locals 2

    .prologue
    .line 502
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInUseSizeInBytes()I
    .locals 2

    .prologue
    .line 507
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSizeInBytes()I
    .locals 1

    .prologue
    .line 497
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAll(Lcom/android/internal/util/Predicate;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<TK;>;)I"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<TK;>;"
    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->removeAll(Lcom/android/internal/util/Predicate;)Ljava/util/ArrayList;

    move-result-object v1

    .line 310
    .local v1, oldExclusives:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->removeAll(Lcom/android/internal/util/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 311
    .local v0, oldEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 312
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 314
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 315
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeUpdateCacheParams()V

    .line 316
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeEvictEntries()V

    .line 317
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    .line 312
    .end local v0           #oldEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    .end local v1           #oldExclusives:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public reuse(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 277
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const/4 v1, 0x0

    .line 279
    .local v1, clientRef:Lcom/facebook/common/references/CloseableReference;,"Lcom/facebook/common/references/CloseableReference<TV;>;"
    const/4 v4, 0x0

    .line 280
    .local v4, removed:Z
    const/4 v3, 0x0

    .line 281
    .local v3, oldExclusive:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v5, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mExclusiveEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v5, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    move-object v3, v0

    .line 283
    if-eqz v3, :cond_0

    .line 284
    iget-object v5, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v5, p1}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;

    .line 285
    .local v2, entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget v5, v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->clientCount:I

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 289
    iget-object v1, v2, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;->valueRef:Lcom/facebook/common/references/CloseableReference;

    .line 290
    const/4 v4, 0x1

    .line 292
    .end local v2           #entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    if-eqz v4, :cond_1

    .line 294
    invoke-static {v3}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;)V

    .line 296
    :cond_1
    return-object v1

    .line 286
    .restart local v2       #entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 292
    .end local v2           #entry:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public trim(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 10
    .parameter "trimType"

    .prologue
    .line 349
    .local p0, this:Lcom/facebook/imagepipeline/cache/CountingMemoryCache;,"Lcom/facebook/imagepipeline/cache/CountingMemoryCache<TK;TV;>;"
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCacheTrimStrategy:Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;

    invoke-interface {v3, p1}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache$CacheTrimStrategy;->getTrimRatio(Lcom/facebook/common/memory/MemoryTrimType;)D

    move-result-wide v4

    .line 350
    .local v4, trimRatio:D
    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->mCachedEntries:Lcom/facebook/imagepipeline/cache/CountingLruMap;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/cache/CountingLruMap;->getSizeInBytes()I

    move-result v3

    int-to-double v6, v3

    const-wide/high16 v8, 0x3ff0

    sub-double/2addr v8, v4

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 352
    .local v1, targetCacheSize:I
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->getInUseSizeInBytes()I

    move-result v6

    sub-int v6, v1, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 353
    .local v2, targetEvictionQueueSize:I
    const v3, 0x7fffffff

    invoke-direct {p0, v3, v2}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->trimExclusivelyOwnedEntries(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 354
    .local v0, oldEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->makeOrphans(Ljava/util/ArrayList;)V

    .line 355
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeClose(Ljava/util/ArrayList;)V

    .line 357
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeNotifyExclusiveEntryRemoval(Ljava/util/ArrayList;)V

    .line 358
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeUpdateCacheParams()V

    .line 359
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/CountingMemoryCache;->maybeEvictEntries()V

    .line 360
    return-void

    .line 355
    .end local v0           #oldEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/facebook/imagepipeline/cache/CountingMemoryCache$Entry<TK;TV;>;>;"
    .end local v1           #targetCacheSize:I
    .end local v2           #targetEvictionQueueSize:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
