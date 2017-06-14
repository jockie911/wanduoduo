.class final Lde/greenrobot/event/SubscriberMethod;
.super Ljava/lang/Object;
.source "SubscriberMethod.java"


# instance fields
.field final eventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final method:Ljava/lang/reflect/Method;

.field methodString:Ljava/lang/String;

.field final priority:I

.field final sticky:Z

.field final threadMode:Lde/greenrobot/event/ThreadMode;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lde/greenrobot/event/ThreadMode;IZ)V
    .locals 0
    .parameter "method"
    .parameter
    .parameter "threadMode"
    .parameter "priority"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Lde/greenrobot/event/ThreadMode;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, eventType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    .line 31
    iput-object p3, p0, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;

    .line 32
    iput-object p2, p0, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;

    .line 33
    iput p4, p0, Lde/greenrobot/event/SubscriberMethod;->priority:I

    .line 34
    iput-boolean p5, p0, Lde/greenrobot/event/SubscriberMethod;->sticky:Z

    .line 35
    return-void
.end method

.method private declared-synchronized checkMethodString()V
    .locals 3

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lde/greenrobot/event/SubscriberMethod;->methodString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lde/greenrobot/event/SubscriberMethod;->methodString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v0           #builder:Ljava/lang/StringBuilder;
    :cond_0
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "other"

    .prologue
    .line 39
    if-ne p1, p0, :cond_0

    .line 40
    const/4 v1, 0x1

    .line 48
    :goto_0
    return v1

    .line 41
    :cond_0
    instance-of v1, p1, Lde/greenrobot/event/SubscriberMethod;

    if-eqz v1, :cond_1

    .line 42
    invoke-direct {p0}, Lde/greenrobot/event/SubscriberMethod;->checkMethodString()V

    move-object v0, p1

    .line 43
    check-cast v0, Lde/greenrobot/event/SubscriberMethod;

    .line 44
    .local v0, otherSubscriberMethod:Lde/greenrobot/event/SubscriberMethod;
    invoke-direct {v0}, Lde/greenrobot/event/SubscriberMethod;->checkMethodString()V

    .line 46
    iget-object v1, p0, Lde/greenrobot/event/SubscriberMethod;->methodString:Ljava/lang/String;

    iget-object v2, v0, Lde/greenrobot/event/SubscriberMethod;->methodString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 48
    .end local v0           #otherSubscriberMethod:Lde/greenrobot/event/SubscriberMethod;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    return v0
.end method
