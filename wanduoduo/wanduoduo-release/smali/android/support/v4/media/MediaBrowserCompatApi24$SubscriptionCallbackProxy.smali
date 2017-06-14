.class Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;
.super Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;
.source "MediaBrowserCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubscriptionCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;",
        ">",
        "Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, this:Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;,"Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy<TT;>;"
    .local p1, callback:Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;,"TT;"
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;-><init>(Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)V

    .line 53
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .parameter "parentId"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter "options"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;,"Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy<TT;>;"
    .local p2, children:Ljava/util/List;,"Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;

    .line 59
    invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;->itemListToParcelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-interface {v0, p1, v1, p3}, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "parentId"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter "options"
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    .prologue
    .line 64
    .local p0, this:Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;,"Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    return-void
.end method
