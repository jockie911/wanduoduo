.class public Lio/rong/imlib/filetransfer/CallDispatcher;
.super Ljava/lang/Object;
.source "CallDispatcher.java"


# static fields
.field private static final MAX_RUNNING_TASK:I = 0x4


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private final readyCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lio/rong/imlib/filetransfer/Call$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lio/rong/imlib/filetransfer/Call$AsyncCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->readyCalls:Ljava/util/Deque;

    .line 18
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->runningCalls:Ljava/util/Deque;

    return-void
.end method

.method private promoteCalls()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 80
    iget-object v2, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v2, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lio/rong/imlib/filetransfer/Call$AsyncCall;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/filetransfer/Call$AsyncCall;

    .line 86
    .local v0, call:Lio/rong/imlib/filetransfer/Call$AsyncCall;
    iget-object v2, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p0}, Lio/rong/imlib/filetransfer/CallDispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imlib/filetransfer/Call$AsyncCall;->future:Ljava/util/concurrent/Future;

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 89
    iget-object v2, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    if-lt v2, v3, :cond_2

    goto :goto_0
.end method

.method private threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .parameter "name"
    .parameter "daemon"

    .prologue
    .line 34
    new-instance v0, Lio/rong/imlib/filetransfer/CallDispatcher$1;

    invoke-direct {v0, p0, p1, p2}, Lio/rong/imlib/filetransfer/CallDispatcher$1;-><init>(Lio/rong/imlib/filetransfer/CallDispatcher;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Object;Lio/rong/imlib/filetransfer/CancelCallback;)V
    .locals 3
    .parameter "tag"
    .parameter "callback"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/filetransfer/Call$AsyncCall;

    .line 55
    .local v0, call:Lio/rong/imlib/filetransfer/Call$AsyncCall;
    invoke-virtual {v0}, Lio/rong/imlib/filetransfer/Call$AsyncCall;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v0, p2}, Lio/rong/imlib/filetransfer/Call$AsyncCall;->cancel(Lio/rong/imlib/filetransfer/CancelCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v0           #call:Lio/rong/imlib/filetransfer/Call$AsyncCall;
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :cond_1
    :try_start_1
    iget-object v2, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/filetransfer/Call$AsyncCall;

    .line 63
    .restart local v0       #call:Lio/rong/imlib/filetransfer/Call$AsyncCall;
    invoke-virtual {v0}, Lio/rong/imlib/filetransfer/Call$AsyncCall;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    invoke-virtual {v0, p2}, Lio/rong/imlib/filetransfer/Call$AsyncCall;->cancel(Lio/rong/imlib/filetransfer/CancelCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    .end local v0           #call:Lio/rong/imlib/filetransfer/Call$AsyncCall;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 69
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v2, -0x3

    :try_start_2
    invoke-interface {p2, v2}, Lio/rong/imlib/filetransfer/CancelCallback;->onError(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized enqueue(Lio/rong/imlib/filetransfer/Call$AsyncCall;)V
    .locals 2
    .parameter "asyncCall"

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lio/rong/imlib/filetransfer/CallDispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lio/rong/imlib/filetransfer/Call$AsyncCall;->future:Ljava/util/concurrent/Future;

    .line 47
    iget-object v0, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized finish(Lio/rong/imlib/filetransfer/Call$AsyncCall;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not in running list."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lio/rong/imlib/filetransfer/CallDispatcher;->promoteCalls()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 9

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 23
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "HttpEngine Dispatcher"

    const/4 v8, 0x0

    invoke-direct {p0, v0, v8}, Lio/rong/imlib/filetransfer/CallDispatcher;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 30
    :cond_0
    iget-object v0, p0, Lio/rong/imlib/filetransfer/CallDispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
