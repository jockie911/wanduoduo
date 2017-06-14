.class public final Lio/rong/eventbus/SubscriberExceptionEvent;
.super Ljava/lang/Object;
.source "SubscriberExceptionEvent.java"


# instance fields
.field public final causingEvent:Ljava/lang/Object;

.field public final causingSubscriber:Ljava/lang/Object;

.field public final eventBus:Lio/rong/eventbus/EventBus;

.field public final throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/rong/eventbus/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "eventBus"
    .parameter "throwable"
    .parameter "causingEvent"
    .parameter "causingSubscriber"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/rong/eventbus/SubscriberExceptionEvent;->eventBus:Lio/rong/eventbus/EventBus;

    .line 39
    iput-object p2, p0, Lio/rong/eventbus/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;

    .line 40
    iput-object p3, p0, Lio/rong/eventbus/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;

    .line 41
    iput-object p4, p0, Lio/rong/eventbus/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;

    .line 42
    return-void
.end method
