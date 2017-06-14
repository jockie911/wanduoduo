.class public Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder;
.super Ljava/lang/Object;
.source "BaseListRefreshFragment$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/base/BaseListRefreshFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/ButterKnife$ViewBinder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder;,"Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/base/BaseListRefreshFragment;Ljava/lang/Object;)V
    .locals 5
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
    .local p0, this:Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder;,"Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/base/BaseListRefreshFragment;,"TT;"
    const v4, 0x7f0e0229

    const v3, 0x7f0e0228

    const v2, 0x7f0e00ba

    .line 11
    const-string v1, "field \'baseListView\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'baseListView\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p2, Lcom/wanduoduo/base/BaseListRefreshFragment;->baseListView:Landroid/widget/ListView;

    .line 13
    const-string v1, "field \'refreshLayout\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'refreshLayout\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cjj/MaterialRefreshLayout;

    iput-object v1, p2, Lcom/wanduoduo/base/BaseListRefreshFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    .line 15
    const-string v1, "field \'tvEmpty\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvEmpty\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/base/BaseListRefreshFragment;->tvEmpty:Landroid/widget/TextView;

    .line 17
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder;,"Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/base/BaseListRefreshFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/base/BaseListRefreshFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/base/BaseListRefreshFragment;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder;,"Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/base/BaseListRefreshFragment;,"TT;"
    const/4 v0, 0x0

    .line 20
    iput-object v0, p1, Lcom/wanduoduo/base/BaseListRefreshFragment;->baseListView:Landroid/widget/ListView;

    .line 21
    iput-object v0, p1, Lcom/wanduoduo/base/BaseListRefreshFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    .line 22
    iput-object v0, p1, Lcom/wanduoduo/base/BaseListRefreshFragment;->tvEmpty:Landroid/widget/TextView;

    .line 23
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder;,"Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/base/BaseListRefreshFragment;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/base/BaseListRefreshFragment$$ViewBinder;->unbind(Lcom/wanduoduo/base/BaseListRefreshFragment;)V

    return-void
.end method
