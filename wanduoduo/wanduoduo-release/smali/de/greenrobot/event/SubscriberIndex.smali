.class abstract Lde/greenrobot/event/SubscriberIndex;
.super Ljava/lang/Object;
.source "SubscriberIndex.java"


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;[",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/greenrobot/event/SubscriberIndex;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method createSubscriberMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lde/greenrobot/event/ThreadMode;IZ)Lde/greenrobot/event/SubscriberMethod;
    .locals 7
    .parameter
    .parameter "methodName"
    .parameter
    .parameter "threadMode"
    .parameter "priority"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Lde/greenrobot/event/ThreadMode;",
            "IZ)",
            "Lde/greenrobot/event/SubscriberMethod;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, subscriberClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, eventType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 28
    .local v1, method:Ljava/lang/reflect/Method;
    new-instance v0, Lde/greenrobot/event/SubscriberMethod;

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lde/greenrobot/event/ThreadMode;IZ)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 29
    .end local v1           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    .line 30
    .local v6, e:Ljava/lang/NoSuchMethodException;
    new-instance v0, Lde/greenrobot/event/EventBusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find subscriber method in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Maybe a missing ProGuard rule?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method abstract createSubscribersFor(Ljava/lang/Class;)[Lde/greenrobot/event/SubscriberMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lde/greenrobot/event/SubscriberMethod;"
        }
    .end annotation
.end method

.method getSubscribersFor(Ljava/lang/Class;)[Lde/greenrobot/event/SubscriberMethod;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lde/greenrobot/event/SubscriberMethod;"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, subscriberClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lde/greenrobot/event/SubscriberIndex;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/greenrobot/event/SubscriberMethod;

    .line 13
    .local v0, entries:[Lde/greenrobot/event/SubscriberMethod;
    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lde/greenrobot/event/SubscriberIndex;->createSubscribersFor(Ljava/lang/Class;)[Lde/greenrobot/event/SubscriberMethod;

    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object v1, p0, Lde/greenrobot/event/SubscriberIndex;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_0
    return-object v0
.end method
