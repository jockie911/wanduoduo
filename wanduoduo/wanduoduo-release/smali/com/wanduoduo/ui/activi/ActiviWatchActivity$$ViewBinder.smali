.class public Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "ActiviWatchActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/activi/ActiviWatchActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/activi/ActiviWatchActivity;Ljava/lang/Object;)V
    .locals 6
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
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/activi/ActiviWatchActivity;,"TT;"
    const v5, 0x7f0e01ef

    const v4, 0x7f0e00cc

    const v3, 0x7f0e00ca

    const v2, 0x7f0e00c8

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

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder;Lcom/wanduoduo/ui/activi/ActiviWatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'cbFirst\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'cbFirst\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbFirst:Landroid/widget/CheckBox;

    .line 23
    const-string v1, "field \'cbSecond\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'cbSecond\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbSecond:Landroid/widget/CheckBox;

    .line 25
    const-string v1, "field \'cbThird\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'cbThird\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbThird:Landroid/widget/CheckBox;

    .line 27
    const v1, 0x7f0e00c7

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder;Lcom/wanduoduo/ui/activi/ActiviWatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v1, 0x7f0e00c9

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 37
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder;Lcom/wanduoduo/ui/activi/ActiviWatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v1, 0x7f0e00cb

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 46
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder;Lcom/wanduoduo/ui/activi/ActiviWatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/activi/ActiviWatchActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/activi/ActiviWatchActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/activi/ActiviWatchActivity;,"TT;"
    const/4 v0, 0x0

    .line 57
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 58
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbFirst:Landroid/widget/CheckBox;

    .line 59
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbSecond:Landroid/widget/CheckBox;

    .line 60
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;->cbThird:Landroid/widget/CheckBox;

    .line 61
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/activi/ActiviWatchActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/activi/ActiviWatchActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/activi/ActiviWatchActivity;)V

    return-void
.end method
