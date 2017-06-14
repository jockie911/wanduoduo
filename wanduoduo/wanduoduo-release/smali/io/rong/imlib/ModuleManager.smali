.class public Lio/rong/imlib/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imlib/ModuleManager$PreHandleListener;
    }
.end annotation


# static fields
.field private static preHandleListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/rong/imlib/ModuleManager$PreHandleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static addPreHandlerListener(Lio/rong/imlib/ModuleManager$PreHandleListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 37
    sget-object v0, Lio/rong/imlib/ModuleManager;->preHandleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public static handleReceivedMessage(Lio/rong/imlib/model/Message;IZ)Z
    .locals 3
    .parameter "message"
    .parameter "left"
    .parameter "offline"

    .prologue
    .line 28
    sget-object v2, Lio/rong/imlib/ModuleManager;->preHandleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/ModuleManager$PreHandleListener;

    .line 29
    .local v1, listener:Lio/rong/imlib/ModuleManager$PreHandleListener;
    invoke-interface {v1, p0, p1, p2}, Lio/rong/imlib/ModuleManager$PreHandleListener;->onReceived(Lio/rong/imlib/model/Message;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    const/4 v2, 0x1

    .line 33
    .end local v1           #listener:Lio/rong/imlib/ModuleManager$PreHandleListener;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Lio/rong/imlib/IHandler;)V
    .locals 7
    .parameter "context"
    .parameter "stub"

    .prologue
    .line 15
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lio/rong/imlib/ModuleManager;->preHandleListeners:Ljava/util/ArrayList;

    .line 18
    :try_start_0
    const-string v3, "io.rong.calllib.RongCallClient"

    .line 19
    .local v3, moduleName:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lio/rong/imlib/IHandler;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 21
    .local v1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v0           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #moduleName:Ljava/lang/String;
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v2

    .line 23
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "ModuleManager"

    const-string v5, "Can not find RongCallClient module."

    invoke-static {v4, v5}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static removePreHandlerListener(Lio/rong/imlib/ModuleManager$PreHandleListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 41
    sget-object v0, Lio/rong/imlib/ModuleManager;->preHandleListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method
