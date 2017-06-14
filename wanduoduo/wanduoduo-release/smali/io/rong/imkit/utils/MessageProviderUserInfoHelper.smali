.class public Lio/rong/imkit/utils/MessageProviderUserInfoHelper;
.super Ljava/lang/Object;
.source "MessageProviderUserInfoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageProviderUserInfoHelper"

.field private static mHelper:Lio/rong/imkit/utils/MessageProviderUserInfoHelper;


# instance fields
.field cacheUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageIdUserIdsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lio/rong/imlib/model/MessageContent;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mUserInfoHandler:Landroid/os/Handler;

.field mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mMessageIdUserIdsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->cacheUserIds:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MessageProviderUserInfoHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mWorkThread:Landroid/os/HandlerThread;

    .line 47
    iget-object v0, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mUserInfoHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public static getInstance()Lio/rong/imkit/utils/MessageProviderUserInfoHelper;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mHelper:Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mHelper:Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    invoke-direct {v0}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;-><init>()V

    sput-object v0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mHelper:Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mHelper:Lio/rong/imkit/utils/MessageProviderUserInfoHelper;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized isCacheUserId(Ljava/lang/String;)Z
    .locals 1
    .parameter "userId"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->cacheUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
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

.method public isRequestGetUserInfo()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mMessageIdUserIdsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyMessageUpdate(Ljava/lang/String;)V
    .locals 8
    .parameter "userId"

    .prologue
    .line 93
    iget-object v3, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mMessageIdUserIdsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    .local v0, messageUserIdsIterator:Ljava/util/Iterator;
    iget-object v3, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mUserInfoHandler:Landroid/os/Handler;

    new-instance v4, Lio/rong/imkit/utils/MessageProviderUserInfoHelper$1;

    invoke-direct {v4, p0, p1}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper$1;-><init>(Lio/rong/imkit/utils/MessageProviderUserInfoHelper;Ljava/lang/String;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 105
    .local v2, userIdMessageEntry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 107
    .local v1, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 114
    iget-object v3, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mMessageIdUserIdsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v3, "MessageProviderUserInfoHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMessageUpdate --notify--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    :cond_2
    const-string v3, "MessageProviderUserInfoHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMessageUpdate --wait--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    .end local v1           #userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #userIdMessageEntry:Ljava/util/Map$Entry;
    :cond_3
    return-void
.end method

.method public registerMessageUserInfo(Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V
    .locals 4
    .parameter "message"
    .parameter "userId"

    .prologue
    .line 71
    const-string v1, "MessageProviderUserInfoHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerMessageUserInfo userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mMessageIdUserIdsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 75
    .local v0, userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .restart local v0       #userIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->mMessageIdUserIdsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    invoke-virtual {p0, p2}, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->setCacheUserId(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method declared-synchronized removeCacheUserId(Ljava/lang/String;)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->cacheUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->cacheUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCacheUserId(Ljava/lang/String;)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->cacheUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lio/rong/imkit/utils/MessageProviderUserInfoHelper;->cacheUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
