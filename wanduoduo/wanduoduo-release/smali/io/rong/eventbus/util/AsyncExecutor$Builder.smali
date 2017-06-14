.class public Lio/rong/eventbus/util/AsyncExecutor$Builder;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/eventbus/util/AsyncExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private eventBus:Lio/rong/eventbus/EventBus;

.field private failureEventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/eventbus/util/AsyncExecutor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lio/rong/eventbus/util/AsyncExecutor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/rong/eventbus/util/AsyncExecutor;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/rong/eventbus/util/AsyncExecutor$Builder;->buildForScope(Ljava/lang/Object;)Lio/rong/eventbus/util/AsyncExecutor;

    move-result-object v0

    return-object v0
.end method

.method public buildForActivityScope(Landroid/app/Activity;)Lio/rong/eventbus/util/AsyncExecutor;
    .locals 1
    .parameter "activity"

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/eventbus/util/AsyncExecutor$Builder;->buildForScope(Ljava/lang/Object;)Lio/rong/eventbus/util/AsyncExecutor;

    move-result-object v0

    return-object v0
.end method

.method public buildForScope(Ljava/lang/Object;)Lio/rong/eventbus/util/AsyncExecutor;
    .locals 6
    .parameter "executionContext"

    .prologue
    .line 66
    iget-object v0, p0, Lio/rong/eventbus/util/AsyncExecutor$Builder;->eventBus:Lio/rong/eventbus/EventBus;

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lio/rong/eventbus/EventBus;->getDefault()Lio/rong/eventbus/EventBus;

    move-result-object v0

    iput-object v0, p0, Lio/rong/eventbus/util/AsyncExecutor$Builder;->eventBus:Lio/rong/eventbus/EventBus;

    .line 69
    :cond_0
    iget-object v0, p0, Lio/rong/eventbus/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/rong/eventbus/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    .line 72
    :cond_1
    iget-object v0, p0, Lio/rong/eventbus/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 73
    const-class v0, Lio/rong/eventbus/util/ThrowableFailureEvent;

    iput-object v0, p0, Lio/rong/eventbus/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    .line 75
    :cond_2
    new-instance v0, Lio/rong/eventbus/util/AsyncExecutor;

    iget-object v1, p0, Lio/rong/eventbus/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lio/rong/eventbus/util/AsyncExecutor$Builder;->eventBus:Lio/rong/eventbus/EventBus;

    iget-object v3, p0, Lio/rong/eventbus/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lio/rong/eventbus/util/AsyncExecutor;-><init>(Ljava/util/concurrent/Executor;Lio/rong/eventbus/EventBus;Ljava/lang/Class;Ljava/lang/Object;Lio/rong/eventbus/util/AsyncExecutor$1;)V

    return-object v0
.end method

.method public eventBus(Lio/rong/eventbus/EventBus;)Lio/rong/eventbus/util/AsyncExecutor$Builder;
    .locals 0
    .parameter "eventBus"

    .prologue
    .line 53
    iput-object p1, p0, Lio/rong/eventbus/util/AsyncExecutor$Builder;->eventBus:Lio/rong/eventbus/EventBus;

    .line 54
    return-object p0
.end method

.method public failureEventType(Ljava/lang/Class;)Lio/rong/eventbus/util/AsyncExecutor$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lio/rong/eventbus/util/AsyncExecutor$Builder;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, failureEventType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lio/rong/eventbus/util/AsyncExecutor$Builder;->failureEventType:Ljava/lang/Class;

    .line 49
    return-object p0
.end method

.method public threadPool(Ljava/util/concurrent/Executor;)Lio/rong/eventbus/util/AsyncExecutor$Builder;
    .locals 0
    .parameter "threadPool"

    .prologue
    .line 43
    iput-object p1, p0, Lio/rong/eventbus/util/AsyncExecutor$Builder;->threadPool:Ljava/util/concurrent/Executor;

    .line 44
    return-object p0
.end method
