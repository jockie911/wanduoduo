.class Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector$1;
.super Lrx/Subscriber;
.source "OnSubscribeDelaySubscriptionWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;Lrx/Subscriber;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    .local p0, this:Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector$1;,"Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector$1;->this$0:Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 47
    .local p0, this:Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector$1;,"Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector$1;->this$0:Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;

    iget-object v0, v0, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;->source:Lrx/Observable;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector$1;->val$child:Lrx/Subscriber;

    invoke-static {v1}, Lrx/observers/Subscribers;->wrap(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 48
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 52
    .local p0, this:Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector$1;,"Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector$1;,"Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector.1;"
    .local p1, t:Ljava/lang/Object;,"TU;"
    return-void
.end method
