.class Lde/greenrobot/event/SubscriberMethodFinder;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"


# static fields
.field private static final BRIDGE:I = 0x40

.field private static final INDEX:Lde/greenrobot/event/SubscriberIndex; = null

.field private static final METHOD_CACHE:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MODIFIERS_IGNORE:I = 0x1448

.field private static final SYNTHETIC:I = 0x1000


# instance fields
.field private final strictMethodVerification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 39
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lde/greenrobot/event/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    .line 45
    const/4 v3, 0x0

    .line 47
    .local v3, newIndex:Lde/greenrobot/event/SubscriberIndex;
    :try_start_0
    const-string v4, "de.greenrobot.event.GeneratedSubscriberIndex"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lde/greenrobot/event/SubscriberIndex;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    sput-object v3, Lde/greenrobot/event/SubscriberMethodFinder;->INDEX:Lde/greenrobot/event/SubscriberIndex;

    .line 56
    return-void

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, e:Ljava/lang/ClassNotFoundException;
    sget-object v4, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    const-string v5, "No subscriber index available, reverting to dynamic look-up"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 53
    .local v2, e:Ljava/lang/Exception;
    sget-object v4, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    const-string v5, "Could not init subscriber index, reverting to dynamic look-up"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method constructor <init>(Z)V
    .locals 0
    .parameter "strictMethodVerification"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Lde/greenrobot/event/SubscriberMethodFinder;->strictMethodVerification:Z

    .line 62
    return-void
.end method

.method static clearCaches()V
    .locals 2

    .prologue
    .line 172
    sget-object v1, Lde/greenrobot/event/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    monitor-enter v1

    .line 173
    :try_start_0
    sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 174
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findSubscriberMethodsWithIndex(Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, subscriberClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v2, p1

    .line 94
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 95
    sget-object v8, Lde/greenrobot/event/SubscriberMethodFinder;->INDEX:Lde/greenrobot/event/SubscriberIndex;

    invoke-virtual {v8, v2}, Lde/greenrobot/event/SubscriberIndex;->getSubscribersFor(Ljava/lang/Class;)[Lde/greenrobot/event/SubscriberMethod;

    move-result-object v1

    .line 96
    .local v1, array:[Lde/greenrobot/event/SubscriberMethod;
    if-eqz v1, :cond_0

    array-length v8, v1

    if-lez v8, :cond_0

    .line 97
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v7, subscriberMethods:Ljava/util/List;,"Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    move-object v0, v1

    .local v0, arr$:[Lde/greenrobot/event/SubscriberMethod;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 99
    .local v6, subscriberMethod:Lde/greenrobot/event/SubscriberMethod;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    .end local v0           #arr$:[Lde/greenrobot/event/SubscriberMethod;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #subscriberMethod:Lde/greenrobot/event/SubscriberMethod;
    .end local v7           #subscriberMethods:Ljava/util/List;,"Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, name:Ljava/lang/String;
    const-string v8, "java."

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "javax."

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "android."

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 111
    .end local v1           #array:[Lde/greenrobot/event/SubscriberMethod;
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    sget-object v7, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_2
    return-object v7

    .line 108
    .restart local v1       #array:[Lde/greenrobot/event/SubscriberMethod;
    .restart local v5       #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 110
    goto :goto_0
.end method

.method private findSubscriberMethodsWithReflection(Ljava/lang/Class;)Ljava/util/List;
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, subscriberClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v20, subscriberMethods:Ljava/util/List;,"Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    move-object/from16 v8, p1

    .line 117
    .local v8, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 118
    .local v9, eventTypesFound:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v13, methodKeyBuilder:Ljava/lang/StringBuilder;
    :goto_0
    if-eqz v8, :cond_0

    .line 120
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    .line 121
    .local v17, name:Ljava/lang/String;
    const-string v1, "java."

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "javax."

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android."

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    .end local v17           #name:Ljava/lang/String;
    :cond_0
    return-object v20

    .line 127
    .restart local v17       #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v15

    .line 128
    .local v15, methods:[Ljava/lang/reflect/Method;
    move-object v7, v15

    .local v7, arr$:[Ljava/lang/reflect/Method;
    array-length v11, v7

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_5

    aget-object v2, v7, v10

    .line 129
    .local v2, method:Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v16

    .line 130
    .local v16, modifiers:I
    and-int/lit8 v1, v16, 0x1

    if-eqz v1, :cond_4

    move/from16 v0, v16

    and-int/lit16 v1, v0, 0x1448

    if-nez v1, :cond_4

    .line 131
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v18

    .line 132
    .local v18, parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object/from16 v0, v18

    array-length v1, v0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    .line 133
    const-class v1, Lde/greenrobot/event/Subscribe;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    check-cast v19, Lde/greenrobot/event/Subscribe;

    .line 134
    .local v19, subscribeAnnotation:Lde/greenrobot/event/Subscribe;
    if-eqz v19, :cond_2

    .line 135
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    .line 136
    .local v14, methodName:Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v3, v18, v1

    .line 137
    .local v3, eventType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 138
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const/16 v1, 0x3e

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 142
    .local v12, methodKey:Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-interface/range {v19 .. v19}, Lde/greenrobot/event/Subscribe;->threadMode()Lde/greenrobot/event/ThreadMode;

    move-result-object v4

    .line 145
    .local v4, threadMode:Lde/greenrobot/event/ThreadMode;
    new-instance v1, Lde/greenrobot/event/SubscriberMethod;

    invoke-interface/range {v19 .. v19}, Lde/greenrobot/event/Subscribe;->priority()I

    move-result v5

    invoke-interface/range {v19 .. v19}, Lde/greenrobot/event/Subscribe;->sticky()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lde/greenrobot/event/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lde/greenrobot/event/ThreadMode;IZ)V

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v3           #eventType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #threadMode:Lde/greenrobot/event/ThreadMode;
    .end local v12           #methodKey:Ljava/lang/String;
    .end local v14           #methodName:Ljava/lang/String;
    .end local v18           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v19           #subscribeAnnotation:Lde/greenrobot/event/Subscribe;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 149
    .restart local v18       #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lde/greenrobot/event/SubscriberMethodFinder;->strictMethodVerification:Z

    if-eqz v1, :cond_2

    .line 150
    const-class v1, Lde/greenrobot/event/Subscribe;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 152
    .restart local v14       #methodName:Ljava/lang/String;
    new-instance v1, Lde/greenrobot/event/EventBusException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@Subscribe method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "must have exactly 1 parameter but has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    .end local v14           #methodName:Ljava/lang/String;
    .end local v18           #parameterTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lde/greenrobot/event/SubscriberMethodFinder;->strictMethodVerification:Z

    if-eqz v1, :cond_2

    .line 157
    const-class v1, Lde/greenrobot/event/Subscribe;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 159
    .restart local v14       #methodName:Ljava/lang/String;
    new-instance v1, Lde/greenrobot/event/EventBusException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a illegal @Subscribe method: must be public, non-static, and non-abstract"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v14           #methodName:Ljava/lang/String;
    .end local v16           #modifiers:I
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    .line 167
    goto/16 :goto_0
.end method


# virtual methods
.method findSubscriberMethods(Ljava/lang/Class;Z)Ljava/util/List;
    .locals 6
    .parameter
    .parameter "forceReflection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/util/List",
            "<",
            "Lde/greenrobot/event/SubscriberMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, subscriberClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, key:Ljava/lang/String;
    sget-object v4, Lde/greenrobot/event/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    monitor-enter v4

    .line 68
    :try_start_0
    sget-object v3, Lde/greenrobot/event/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 69
    .local v1, subscriberMethods:Ljava/util/List;,"Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    monitor-exit v4

    .line 70
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 88
    .end local v1           #subscriberMethods:Ljava/util/List;,"Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    .local v2, subscriberMethods:Ljava/util/List;,"Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :goto_0
    return-object v2

    .line 69
    .end local v2           #subscriberMethods:Ljava/util/List;,"Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 73
    .restart local v1       #subscriberMethods:Ljava/util/List;,"Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :cond_0
    sget-object v3, Lde/greenrobot/event/SubscriberMethodFinder;->INDEX:Lde/greenrobot/event/SubscriberIndex;

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    .line 74
    invoke-direct {p0, p1}, Lde/greenrobot/event/SubscriberMethodFinder;->findSubscriberMethodsWithIndex(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    invoke-direct {p0, p1}, Lde/greenrobot/event/SubscriberMethodFinder;->findSubscriberMethodsWithReflection(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 81
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    new-instance v3, Lde/greenrobot/event/EventBusException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscriber "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and its super classes have no public methods with the @Subscribe annotation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_2
    invoke-direct {p0, p1}, Lde/greenrobot/event/SubscriberMethodFinder;->findSubscriberMethodsWithReflection(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 85
    :cond_3
    sget-object v4, Lde/greenrobot/event/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    monitor-enter v4

    .line 86
    :try_start_1
    sget-object v3, Lde/greenrobot/event/SubscriberMethodFinder;->METHOD_CACHE:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v4

    move-object v2, v1

    .line 88
    .end local v1           #subscriberMethods:Ljava/util/List;,"Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    .restart local v2       #subscriberMethods:Ljava/util/List;,"Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    goto :goto_0

    .line 87
    .end local v2           #subscriberMethods:Ljava/util/List;,"Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    .restart local v1       #subscriberMethods:Ljava/util/List;,"Ljava/util/List<Lde/greenrobot/event/SubscriberMethod;>;"
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method
