.class final Lio/rong/eventbus/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field volatile active:Z

.field final priority:I

.field final subscriber:Ljava/lang/Object;

.field final subscriberMethod:Lio/rong/eventbus/SubscriberMethod;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lio/rong/eventbus/SubscriberMethod;I)V
    .locals 1
    .parameter "subscriber"
    .parameter "subscriberMethod"
    .parameter "priority"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/rong/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    .line 30
    iput-object p2, p0, Lio/rong/eventbus/Subscription;->subscriberMethod:Lio/rong/eventbus/SubscriberMethod;

    .line 31
    iput p3, p0, Lio/rong/eventbus/Subscription;->priority:I

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/rong/eventbus/Subscription;->active:Z

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 37
    instance-of v2, p1, Lio/rong/eventbus/Subscription;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 38
    check-cast v0, Lio/rong/eventbus/Subscription;

    .line 39
    .local v0, otherSubscription:Lio/rong/eventbus/Subscription;
    iget-object v2, p0, Lio/rong/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    iget-object v3, v0, Lio/rong/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lio/rong/eventbus/Subscription;->subscriberMethod:Lio/rong/eventbus/SubscriberMethod;

    iget-object v3, v0, Lio/rong/eventbus/Subscription;->subscriberMethod:Lio/rong/eventbus/SubscriberMethod;

    invoke-virtual {v2, v3}, Lio/rong/eventbus/SubscriberMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 42
    .end local v0           #otherSubscription:Lio/rong/eventbus/Subscription;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lio/rong/eventbus/Subscription;->subscriber:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lio/rong/eventbus/Subscription;->subscriberMethod:Lio/rong/eventbus/SubscriberMethod;

    iget-object v1, v1, Lio/rong/eventbus/SubscriberMethod;->methodString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
