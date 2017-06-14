.class public Lio/rong/imkit/cache/RongCache;
.super Ljava/lang/Object;
.source "RongCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private final queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "maxSize"

    .prologue
    .line 59
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-gtz p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput p1, p0, Lio/rong/imkit/cache/RongCache;->maxSize:I

    .line 65
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    .line 66
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/cache/RongCache;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 67
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, p2}, Lio/rong/imkit/cache/RongCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 280
    .local v0, result:I
    if-gez v0, :cond_0

    .line 281
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    return v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    .prologue
    .line 341
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/rong/imkit/cache/RongCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "evicted"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    .local p2, key:Ljava/lang/Object;,"TK;"
    .local p3, oldValue:Ljava/lang/Object;,"TV;"
    .local p4, newValue:Ljava/lang/Object;,"TV;"
    return-void
.end method

.method public final evictAll()V
    .locals 1

    .prologue
    .line 301
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lio/rong/imkit/cache/RongCache;->trimToSize(I)V

    .line 302
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    .prologue
    .line 355
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/rong/imkit/cache/RongCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const/4 v2, 0x0

    .line 76
    if-nez p1, :cond_0

    move-object v1, v2

    .line 135
    :goto_0
    return-object v1

    .line 82
    :cond_0
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v3, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    .local v1, mapValue:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_1

    .line 90
    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 91
    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 93
    iget v2, p0, Lio/rong/imkit/cache/RongCache;->hitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/rong/imkit/cache/RongCache;->hitCount:I

    .line 94
    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit p0

    goto :goto_0

    .line 99
    .end local v1           #mapValue:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 98
    .restart local v1       #mapValue:Ljava/lang/Object;,"TV;"
    :cond_1
    :try_start_1
    iget v3, p0, Lio/rong/imkit/cache/RongCache;->missCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lio/rong/imkit/cache/RongCache;->missCount:I

    .line 99
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-virtual {p0, p1}, Lio/rong/imkit/cache/RongCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, createdValue:Ljava/lang/Object;,"TV;"
    if-nez v0, :cond_2

    move-object v1, v2

    .line 110
    goto :goto_0

    .line 114
    :cond_2
    monitor-enter p0

    .line 115
    :try_start_2
    iget v2, p0, Lio/rong/imkit/cache/RongCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/rong/imkit/cache/RongCache;->createCount:I

    .line 116
    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_3

    .line 120
    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    if-eqz v1, :cond_4

    .line 131
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lio/rong/imkit/cache/RongCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_3
    :try_start_3
    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 126
    iget v2, p0, Lio/rong/imkit/cache/RongCache;->size:I

    invoke-direct {p0, p1, v0}, Lio/rong/imkit/cache/RongCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lio/rong/imkit/cache/RongCache;->size:I

    goto :goto_1

    .line 128
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 134
    :cond_4
    iget v2, p0, Lio/rong/imkit/cache/RongCache;->maxSize:I

    invoke-virtual {p0, v2}, Lio/rong/imkit/cache/RongCache;->trimToSize(I)V

    move-object v1, v0

    .line 135
    goto :goto_0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    .prologue
    .line 326
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/rong/imkit/cache/RongCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    .prologue
    .line 319
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/rong/imkit/cache/RongCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    .prologue
    .line 334
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/rong/imkit/cache/RongCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_1
    monitor-enter p0

    .line 152
    :try_start_0
    iget v1, p0, Lio/rong/imkit/cache/RongCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/rong/imkit/cache/RongCache;->putCount:I

    .line 153
    iget v1, p0, Lio/rong/imkit/cache/RongCache;->size:I

    invoke-direct {p0, p1, p2}, Lio/rong/imkit/cache/RongCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lio/rong/imkit/cache/RongCache;->size:I

    .line 154
    iget-object v1, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, previous:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_2

    .line 156
    iget v1, p0, Lio/rong/imkit/cache/RongCache;->size:I

    invoke-direct {p0, p1, v0}, Lio/rong/imkit/cache/RongCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lio/rong/imkit/cache/RongCache;->size:I

    .line 158
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-eqz v0, :cond_3

    .line 161
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Lio/rong/imkit/cache/RongCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    :goto_0
    iget v1, p0, Lio/rong/imkit/cache/RongCache;->maxSize:I

    invoke-virtual {p0, v1}, Lio/rong/imkit/cache/RongCache;->trimToSize(I)V

    .line 170
    return-object v0

    .line 158
    .end local v0           #previous:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 166
    .restart local v0       #previous:Ljava/lang/Object;,"TV;"
    :cond_3
    iget-object v1, p0, Lio/rong/imkit/cache/RongCache;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    .prologue
    .line 348
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/rong/imkit/cache/RongCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_0

    .line 219
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_0
    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v1, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, previous:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_1

    .line 229
    iget-object v1, p0, Lio/rong/imkit/cache/RongCache;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 230
    iget v1, p0, Lio/rong/imkit/cache/RongCache;->size:I

    invoke-direct {p0, p1, v0}, Lio/rong/imkit/cache/RongCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lio/rong/imkit/cache/RongCache;->size:I

    .line 232
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    if-eqz v0, :cond_2

    .line 235
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Lio/rong/imkit/cache/RongCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    :cond_2
    return-object v0

    .line 232
    .end local v0           #previous:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final declared-synchronized size()I
    .locals 1

    .prologue
    .line 310
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lio/rong/imkit/cache/RongCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    const/4 v1, 0x0

    .line 368
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lio/rong/imkit/cache/RongCache;->hitCount:I

    iget v3, p0, Lio/rong/imkit/cache/RongCache;->missCount:I

    add-int v0, v2, v3

    .line 369
    .local v0, accesses:I
    if-eqz v0, :cond_0

    iget v2, p0, Lio/rong/imkit/cache/RongCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 370
    .local v1, hitPercent:I
    :cond_0
    const-string v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lio/rong/imkit/cache/RongCache;->maxSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lio/rong/imkit/cache/RongCache;->hitCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lio/rong/imkit/cache/RongCache;->missCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 368
    .end local v0           #accesses:I
    .end local v1           #hitPercent:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public trimToSize(I)V
    .locals 5
    .parameter "maxSize"

    .prologue
    .line 184
    .local p0, this:Lio/rong/imkit/cache/RongCache;,"Lio/rong/imkit/cache/RongCache<TK;TV;>;"
    :goto_0
    monitor-enter p0

    .line 185
    :try_start_0
    iget v2, p0, Lio/rong/imkit/cache/RongCache;->size:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lio/rong/imkit/cache/RongCache;->size:I

    if-eqz v2, :cond_1

    .line 186
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 190
    :cond_1
    :try_start_1
    iget v2, p0, Lio/rong/imkit/cache/RongCache;->size:I

    if-le v2, p1, :cond_2

    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    :cond_2
    monitor-exit p0

    .line 210
    return-void

    .line 194
    :cond_3
    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 195
    .local v0, key:Ljava/lang/Object;,"TK;"
    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 197
    .local v1, value:Ljava/lang/Object;,"TV;"
    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget v2, p0, Lio/rong/imkit/cache/RongCache;->size:I

    invoke-direct {p0, v0, v1}, Lio/rong/imkit/cache/RongCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lio/rong/imkit/cache/RongCache;->size:I

    .line 199
    iget v2, p0, Lio/rong/imkit/cache/RongCache;->evictionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/rong/imkit/cache/RongCache;->evictionCount:I

    .line 204
    iget-object v2, p0, Lio/rong/imkit/cache/RongCache;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 206
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lio/rong/imkit/cache/RongCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
