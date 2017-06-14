.class public Lio/rong/eventbus/util/ErrorDialogConfig;
.super Ljava/lang/Object;
.source "ErrorDialogConfig.java"


# instance fields
.field defaultDialogIconId:I

.field final defaultErrorMsgId:I

.field defaultEventTypeOnDialogClosed:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final defaultTitleId:I

.field eventBus:Lio/rong/eventbus/EventBus;

.field logExceptions:Z

.field final mapping:Lio/rong/eventbus/util/ExceptionToResourceMapping;

.field final resources:Landroid/content/res/Resources;

.field tagForLoggingExceptions:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 1
    .parameter "resources"
    .parameter "defaultTitleId"
    .parameter "defaultMsgId"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->logExceptions:Z

    .line 20
    iput-object p1, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;

    .line 21
    iput p2, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->defaultTitleId:I

    .line 22
    iput p3, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->defaultErrorMsgId:I

    .line 23
    new-instance v0, Lio/rong/eventbus/util/ExceptionToResourceMapping;

    invoke-direct {v0}, Lio/rong/eventbus/util/ExceptionToResourceMapping;-><init>()V

    iput-object v0, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->mapping:Lio/rong/eventbus/util/ExceptionToResourceMapping;

    .line 24
    return-void
.end method


# virtual methods
.method public addMapping(Ljava/lang/Class;I)Lio/rong/eventbus/util/ErrorDialogConfig;
    .locals 1
    .parameter
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Throwable;",
            ">;I)",
            "Lio/rong/eventbus/util/ErrorDialogConfig;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->mapping:Lio/rong/eventbus/util/ExceptionToResourceMapping;

    invoke-virtual {v0, p1, p2}, Lio/rong/eventbus/util/ExceptionToResourceMapping;->addMapping(Ljava/lang/Class;I)Lio/rong/eventbus/util/ExceptionToResourceMapping;

    .line 28
    return-object p0
.end method

.method public disableExceptionLogging()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->logExceptions:Z

    .line 51
    return-void
.end method

.method getEventBus()Lio/rong/eventbus/EventBus;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->eventBus:Lio/rong/eventbus/EventBus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->eventBus:Lio/rong/eventbus/EventBus;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lio/rong/eventbus/EventBus;->getDefault()Lio/rong/eventbus/EventBus;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageIdForThrowable(Ljava/lang/Throwable;)I
    .locals 4
    .parameter "throwable"

    .prologue
    .line 32
    iget-object v1, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->mapping:Lio/rong/eventbus/util/ExceptionToResourceMapping;

    invoke-virtual {v1, p1}, Lio/rong/eventbus/util/ExceptionToResourceMapping;->mapThrowable(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object v0

    .line 33
    .local v0, resId:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 37
    :goto_0
    return v1

    .line 36
    :cond_0
    sget-object v1, Lio/rong/eventbus/EventBus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No specific message ressource ID found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget v1, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->defaultErrorMsgId:I

    goto :goto_0
.end method

.method public setDefaultDialogIconId(I)V
    .locals 0
    .parameter "defaultDialogIconId"

    .prologue
    .line 42
    iput p1, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->defaultDialogIconId:I

    .line 43
    return-void
.end method

.method public setDefaultEventTypeOnDialogClosed(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, defaultEventTypeOnDialogClosed:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;

    .line 47
    return-void
.end method

.method public setEventBus(Lio/rong/eventbus/EventBus;)V
    .locals 0
    .parameter "eventBus"

    .prologue
    .line 58
    iput-object p1, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->eventBus:Lio/rong/eventbus/EventBus;

    .line 59
    return-void
.end method

.method public setTagForLoggingExceptions(Ljava/lang/String;)V
    .locals 0
    .parameter "tagForLoggingExceptions"

    .prologue
    .line 54
    iput-object p1, p0, Lio/rong/eventbus/util/ErrorDialogConfig;->tagForLoggingExceptions:Ljava/lang/String;

    .line 55
    return-void
.end method