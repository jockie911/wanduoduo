.class public Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;
.super Ljava/lang/Object;
.source "PlayerEvaluationFragment$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;",
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
    .local p0, this:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;,"TT;"
    const v5, 0x7f0e0278

    const v4, 0x7f0e0277

    const v3, 0x7f0e0276

    const v2, 0x7f0e0275

    .line 11
    const-string v1, "field \'btnAll\' and method \'onClick\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'btnAll\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnAll:Landroid/widget/Button;

    .line 13
    new-instance v1, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$1;-><init>(Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'btnPrefect\' and method \'onClick\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'btnPrefect\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnPrefect:Landroid/widget/Button;

    .line 23
    new-instance v1, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$2;-><init>(Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const-string v1, "field \'btnOk\' and method \'onClick\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'btnOk\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnOk:Landroid/widget/Button;

    .line 33
    new-instance v1, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$3;-><init>(Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const-string v1, "field \'btnBad\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'btnBad\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p2, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnBad:Landroid/widget/Button;

    .line 43
    new-instance v1, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder$4;-><init>(Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;,"TT;"
    const/4 v0, 0x0

    .line 54
    iput-object v0, p1, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnAll:Landroid/widget/Button;

    .line 55
    iput-object v0, p1, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnPrefect:Landroid/widget/Button;

    .line 56
    iput-object v0, p1, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnOk:Landroid/widget/Button;

    .line 57
    iput-object v0, p1, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;->btnBad:Landroid/widget/Button;

    .line 58
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/personability/PlayerEvaluationFragment;)V

    return-void
.end method
