.class final Lio/rong/eventbus/BackgroundPoster;
.super Ljava/lang/Object;
.source "BackgroundPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final eventBus:Lio/rong/eventbus/EventBus;

.field private volatile executorRunning:Z

.field private final queue:Lio/rong/eventbus/PendingPostQueue;


# direct methods
.method constructor <init>(Lio/rong/eventbus/EventBus;)V
    .locals 1
    .parameter "eventBus"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/rong/eventbus/BackgroundPoster;->eventBus:Lio/rong/eventbus/EventBus;

    .line 34
    new-instance v0, Lio/rong/eventbus/PendingPostQueue;

    invoke-direct {v0}, Lio/rong/eventbus/PendingPostQueue;-><init>()V

    iput-object v0, p0, Lio/rong/eventbus/BackgroundPoster;->queue:Lio/rong/eventbus/PendingPostQueue;

    .line 35
    return-void
.end method


# virtual methods
.method public enqueue(Lio/rong/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 2
    .parameter "subscription"
    .parameter "event"

    .prologue
    .line 38
    invoke-static {p1, p2}, Lio/rong/eventbus/PendingPost;->obtainPendingPost(Lio/rong/eventbus/Subscription;Ljava/lang/Object;)Lio/rong/eventbus/PendingPost;

    move-result-object v0

    .line 39
    .local v0, pendingPost:Lio/rong/eventbus/PendingPost;
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v1, p0, Lio/rong/eventbus/BackgroundPoster;->queue:Lio/rong/eventbus/PendingPostQueue;

    invoke-virtual {v1, v0}, Lio/rong/eventbus/PendingPostQueue;->enqueue(Lio/rong/eventbus/PendingPost;)V

    .line 41
    iget-boolean v1, p0, Lio/rong/eventbus/BackgroundPoster;->executorRunning:Z

    if-nez v1, :cond_0

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/rong/eventbus/BackgroundPoster;->executorRunning:Z

    .line 43
    iget-object v1, p0, Lio/rong/eventbus/BackgroundPoster;->eventBus:Lio/rong/eventbus/EventBus;

    invoke-virtual {v1}, Lio/rong/eventbus/EventBus;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 45
    :cond_0
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 53
    :goto_0
    :try_start_0
    iget-object v2, p0, Lio/rong/eventbus/BackgroundPoster;->queue:Lio/rong/eventbus/PendingPostQueue;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lio/rong/eventbus/PendingPostQueue;->poll(I)Lio/rong/eventbus/PendingPost;

    move-result-object v1

    .line 54
    .local v1, pendingPost:Lio/rong/eventbus/PendingPost;
    if-nez v1, :cond_1

    .line 55
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :try_start_1
    iget-object v2, p0, Lio/rong/eventbus/BackgroundPoster;->queue:Lio/rong/eventbus/PendingPostQueue;

    invoke-virtual {v2}, Lio/rong/eventbus/PendingPostQueue;->poll()Lio/rong/eventbus/PendingPost;

    move-result-object v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/rong/eventbus/BackgroundPoster;->executorRunning:Z

    .line 60
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    iput-boolean v5, p0, Lio/rong/eventbus/BackgroundPoster;->executorRunning:Z

    .line 72
    .end local v1           #pendingPost:Lio/rong/eventbus/PendingPost;
    :goto_1
    return-void

    .line 62
    .restart local v1       #pendingPost:Lio/rong/eventbus/PendingPost;
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :cond_1
    :try_start_3
    iget-object v2, p0, Lio/rong/eventbus/BackgroundPoster;->eventBus:Lio/rong/eventbus/EventBus;

    invoke-virtual {v2, v1}, Lio/rong/eventbus/EventBus;->invokeSubscriber(Lio/rong/eventbus/PendingPost;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 66
    .end local v1           #pendingPost:Lio/rong/eventbus/PendingPost;
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "Event"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was interruppted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 70
    iput-boolean v5, p0, Lio/rong/eventbus/BackgroundPoster;->executorRunning:Z

    goto :goto_1

    .line 62
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #pendingPost:Lio/rong/eventbus/PendingPost;
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 70
    .end local v1           #pendingPost:Lio/rong/eventbus/PendingPost;
    :catchall_1
    move-exception v2

    iput-boolean v5, p0, Lio/rong/eventbus/BackgroundPoster;->executorRunning:Z

    throw v2
.end method
