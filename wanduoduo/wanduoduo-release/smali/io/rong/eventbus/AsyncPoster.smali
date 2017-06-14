.class Lio/rong/eventbus/AsyncPoster;
.super Ljava/lang/Object;
.source "AsyncPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final eventBus:Lio/rong/eventbus/EventBus;

.field private final queue:Lio/rong/eventbus/PendingPostQueue;


# direct methods
.method constructor <init>(Lio/rong/eventbus/EventBus;)V
    .locals 1
    .parameter "eventBus"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/rong/eventbus/AsyncPoster;->eventBus:Lio/rong/eventbus/EventBus;

    .line 31
    new-instance v0, Lio/rong/eventbus/PendingPostQueue;

    invoke-direct {v0}, Lio/rong/eventbus/PendingPostQueue;-><init>()V

    iput-object v0, p0, Lio/rong/eventbus/AsyncPoster;->queue:Lio/rong/eventbus/PendingPostQueue;

    .line 32
    return-void
.end method


# virtual methods
.method public enqueue(Lio/rong/eventbus/Subscription;Ljava/lang/Object;)V
    .locals 2
    .parameter "subscription"
    .parameter "event"

    .prologue
    .line 35
    invoke-static {p1, p2}, Lio/rong/eventbus/PendingPost;->obtainPendingPost(Lio/rong/eventbus/Subscription;Ljava/lang/Object;)Lio/rong/eventbus/PendingPost;

    move-result-object v0

    .line 36
    .local v0, pendingPost:Lio/rong/eventbus/PendingPost;
    iget-object v1, p0, Lio/rong/eventbus/AsyncPoster;->queue:Lio/rong/eventbus/PendingPostQueue;

    invoke-virtual {v1, v0}, Lio/rong/eventbus/PendingPostQueue;->enqueue(Lio/rong/eventbus/PendingPost;)V

    .line 37
    iget-object v1, p0, Lio/rong/eventbus/AsyncPoster;->eventBus:Lio/rong/eventbus/EventBus;

    invoke-virtual {v1}, Lio/rong/eventbus/EventBus;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lio/rong/eventbus/AsyncPoster;->queue:Lio/rong/eventbus/PendingPostQueue;

    invoke-virtual {v1}, Lio/rong/eventbus/PendingPostQueue;->poll()Lio/rong/eventbus/PendingPost;

    move-result-object v0

    .line 43
    .local v0, pendingPost:Lio/rong/eventbus/PendingPost;
    if-nez v0, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No pending post available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    iget-object v1, p0, Lio/rong/eventbus/AsyncPoster;->eventBus:Lio/rong/eventbus/EventBus;

    invoke-virtual {v1, v0}, Lio/rong/eventbus/EventBus;->invokeSubscriber(Lio/rong/eventbus/PendingPost;)V

    .line 47
    return-void
.end method
