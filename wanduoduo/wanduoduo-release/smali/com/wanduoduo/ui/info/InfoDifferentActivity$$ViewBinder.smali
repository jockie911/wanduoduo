.class public Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "InfoDifferentActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/info/InfoDifferentActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoDifferentActivity;Ljava/lang/Object;)V
    .locals 4
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/info/InfoDifferentActivity;,"TT;"
    const v3, 0x7f0e01ef

    const v2, 0x7f0e01ec

    .line 11
    const-string v1, "field \'llBaseTitleBar\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'llBaseTitleBar\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    .line 13
    const-string v1, "field \'tvRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvRightTitleBar\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 15
    new-instance v1, Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoDifferentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/info/InfoDifferentActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoDifferentActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/info/InfoDifferentActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/info/InfoDifferentActivity;,"TT;"
    const/4 v0, 0x0

    .line 26
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    .line 27
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoDifferentActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 28
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/info/InfoDifferentActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/info/InfoDifferentActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/info/InfoDifferentActivity;)V

    return-void
.end method
