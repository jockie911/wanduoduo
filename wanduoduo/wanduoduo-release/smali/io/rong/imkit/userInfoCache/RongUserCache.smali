.class Lio/rong/imkit/userInfoCache/RongUserCache;
.super Ljava/lang/Object;
.source "RongUserCache.java"


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
.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private size:I


# direct methods
.method constructor <init>(I)V
    .locals 4
    .parameter "maxSize"

    .prologue
    .line 11
    .local p0, this:Lio/rong/imkit/userInfoCache/RongUserCache;,"Lio/rong/imkit/userInfoCache/RongUserCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-gtz p1, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    iput p1, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->maxSize:I

    .line 16
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->map:Ljava/util/LinkedHashMap;

    .line 17
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lio/rong/imkit/userInfoCache/RongUserCache;,"Lio/rong/imkit/userInfoCache/RongUserCache<TK;TV;>;"
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, this:Lio/rong/imkit/userInfoCache/RongUserCache;,"Lio/rong/imkit/userInfoCache/RongUserCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    if-nez p1, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 30
    :cond_0
    monitor-enter p0

    .line 31
    :try_start_0
    iget-object v0, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, this:Lio/rong/imkit/userInfoCache/RongUserCache;,"Lio/rong/imkit/userInfoCache/RongUserCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 37
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null || value == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_1
    monitor-enter p0

    .line 42
    :try_start_0
    iget v2, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->size:I

    .line 43
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, previous:Ljava/lang/Object;,"TV;"
    if-eqz v0, :cond_2

    .line 45
    iget v2, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->size:I

    .line 47
    :cond_2
    iget v2, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->size:I

    iget v3, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->maxSize:I

    if-le v2, v3, :cond_4

    .line 48
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    .local v1, toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v1, :cond_3

    .line 50
    monitor-exit p0

    .line 56
    .end local v1           #toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    return-object v0

    .line 52
    .restart local v1       #toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3
    iget-object v2, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->map:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget v2, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/rong/imkit/userInfoCache/RongUserCache;->size:I

    .line 55
    .end local v1           #toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_4
    monitor-exit p0

    goto :goto_0

    .end local v0           #previous:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
