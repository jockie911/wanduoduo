.class public Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder;
.super Ljava/lang/Object;
.source "OnLineFragment$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/fragment/OnLineFragment;",
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
    .local p0, this:Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/OnLineFragment;Ljava/lang/Object;)V
    .locals 7
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
    .local p0, this:Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/fragment/OnLineFragment;,"TT;"
    const v6, 0x7f0e026e

    const v5, 0x7f0e01ef

    const v4, 0x7f0e01ee

    const v3, 0x7f0e00e1

    const v2, 0x7f0e00ba

    .line 11
    const-string v1, "field \'tvRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'tvRightTitleBar\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/OnLineFragment;->tvRightTitleBar:Landroid/widget/TextView;

    .line 13
    new-instance v1, Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder$1;-><init>(Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder;Lcom/wanduoduo/fragment/OnLineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'ivLeftTitleBar\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivLeftTitleBar\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/OnLineFragment;->ivLeftTitleBar:Landroid/widget/ImageView;

    .line 23
    const-string v1, "field \'tvTitle\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTitle\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/OnLineFragment;->tvTitle:Landroid/widget/TextView;

    .line 25
    const-string v1, "field \'llIvs\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'llIvs\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/OnLineFragment;->llIvs:Landroid/widget/LinearLayout;

    .line 27
    const-string v1, "field \'refreshLayout\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'refreshLayout\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cjj/MaterialRefreshLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/OnLineFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    .line 29
    const v1, 0x7f0e0271

    const-string v2, "field \'ivInvisable\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0271

    const-string v2, "field \'ivInvisable\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/OnLineFragment;->ivInvisable:Landroid/widget/ImageView;

    .line 31
    new-instance v1, Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder$2;-><init>(Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder;Lcom/wanduoduo/fragment/OnLineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v1, 0x7f0e026f

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder$3;-><init>(Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder;Lcom/wanduoduo/fragment/OnLineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v1, 0x7f0e0270

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 49
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder$4;-><init>(Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder;Lcom/wanduoduo/fragment/OnLineFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/OnLineFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/OnLineFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/fragment/OnLineFragment;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/fragment/OnLineFragment;,"TT;"
    const/4 v0, 0x0

    .line 60
    iput-object v0, p1, Lcom/wanduoduo/fragment/OnLineFragment;->tvRightTitleBar:Landroid/widget/TextView;

    .line 61
    iput-object v0, p1, Lcom/wanduoduo/fragment/OnLineFragment;->ivLeftTitleBar:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p1, Lcom/wanduoduo/fragment/OnLineFragment;->tvTitle:Landroid/widget/TextView;

    .line 63
    iput-object v0, p1, Lcom/wanduoduo/fragment/OnLineFragment;->llIvs:Landroid/widget/LinearLayout;

    .line 64
    iput-object v0, p1, Lcom/wanduoduo/fragment/OnLineFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    .line 65
    iput-object v0, p1, Lcom/wanduoduo/fragment/OnLineFragment;->ivInvisable:Landroid/widget/ImageView;

    .line 66
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/OnLineFragment;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/OnLineFragment$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/OnLineFragment;)V

    return-void
.end method
