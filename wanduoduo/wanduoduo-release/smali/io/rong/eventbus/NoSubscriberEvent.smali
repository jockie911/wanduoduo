.class public final Lio/rong/eventbus/NoSubscriberEvent;
.super Ljava/lang/Object;
.source "NoSubscriberEvent.java"


# instance fields
.field public final eventBus:Lio/rong/eventbus/EventBus;

.field public final originalEvent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/rong/eventbus/EventBus;Ljava/lang/Object;)V
    .locals 0
    .parameter "eventBus"
    .parameter "originalEvent"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/rong/eventbus/NoSubscriberEvent;->eventBus:Lio/rong/eventbus/EventBus;

    .line 32
    iput-object p2, p0, Lio/rong/eventbus/NoSubscriberEvent;->originalEvent:Ljava/lang/Object;

    .line 33
    return-void
.end method
