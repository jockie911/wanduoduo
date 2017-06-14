.class public Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;
.super Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder;
.source "InfoWatchFragment$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/fragment/info/InfoWatchFragment;",
        ">",
        "Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder<TT;>;"
    invoke-direct {p0}, Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/InfoLikeFragment;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/info/InfoWatchFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/InfoWatchFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/InfoWatchFragment;Ljava/lang/Object;)V
    .locals 3
    .parameter "finder"
    .parameter
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/ButterKnife$Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/fragment/info/InfoWatchFragment;,"TT;"
    invoke-super {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/InfoLikeFragment;Ljava/lang/Object;)V

    .line 12
    const v1, 0x7f0e00e1

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 13
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder$1;-><init>(Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoWatchFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/info/InfoWatchFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/InfoWatchFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic unbind(Lcom/wanduoduo/fragment/info/InfoLikeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 7
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/info/InfoWatchFragment;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/info/InfoWatchFragment;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/fragment/info/InfoWatchFragment;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/fragment/info/InfoWatchFragment;,"TT;"
    invoke-super {p0, p1}, Lcom/wanduoduo/fragment/info/InfoLikeFragment$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/info/InfoLikeFragment;)V

    .line 26
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 7
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/info/InfoWatchFragment;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/info/InfoWatchFragment$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/info/InfoWatchFragment;)V

    return-void
.end method
