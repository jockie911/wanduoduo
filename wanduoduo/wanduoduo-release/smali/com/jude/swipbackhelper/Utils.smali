.class public Lcom/jude/swipbackhelper/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static convertActivityFromTranslucent(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 29
    :try_start_0
    const-class v1, Landroid/app/Activity;

    const-string v2, "convertFromTranslucent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 30
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 31
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static convertActivityToTranslucent(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    .line 50
    :try_start_0
    const-class v5, Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 52
    .local v3, translucentConversionListenerClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 53
    .local v1, clazz:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TranslucentConversionListener"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 54
    move-object v3, v1

    .line 52
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    .end local v1           #clazz:Ljava/lang/Class;
    :cond_1
    const-class v4, Landroid/app/Activity;

    const-string v5, "convertToTranslucent"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 59
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 60
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0           #classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    .end local v3           #translucentConversionListenerClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    return-void

    .line 63
    :catch_0
    move-exception v4

    goto :goto_1
.end method
