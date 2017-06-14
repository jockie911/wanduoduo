.class public Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder;
.super Ljava/lang/Object;
.source "ActiviFragment$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/fragment/ActiviFragment;",
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
    .local p0, this:Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/ActiviFragment;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/fragment/ActiviFragment;,"TT;"
    const v4, 0x7f0e021c

    const v2, 0x7f0e0219

    const v3, 0x7f0e0218

    .line 11
    const-string v1, "field \'tvLeft\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'tvLeft\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/ActiviFragment;->tvLeft:Landroid/widget/TextView;

    .line 13
    const-string v1, "field \'tvRight\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvRight\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/ActiviFragment;->tvRight:Landroid/widget/TextView;

    .line 15
    const v1, 0x7f0e021a

    const-string v2, "field \'vLeft\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/fragment/ActiviFragment;->vLeft:Landroid/view/View;

    .line 17
    const v1, 0x7f0e021d

    const-string v2, "field \'vRight\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/fragment/ActiviFragment;->vRight:Landroid/view/View;

    .line 19
    const-string v1, "field \'relLeft\' and method \'onClick\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'relLeft\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/ActiviFragment;->relLeft:Landroid/widget/RelativeLayout;

    .line 21
    new-instance v1, Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder$1;-><init>(Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder;Lcom/wanduoduo/fragment/ActiviFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v1, 0x7f0e021e

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder$2;-><init>(Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder;Lcom/wanduoduo/fragment/ActiviFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v1, 0x7f0e021b

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 39
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder$3;-><init>(Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder;Lcom/wanduoduo/fragment/ActiviFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/ActiviFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/ActiviFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/fragment/ActiviFragment;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/fragment/ActiviFragment;,"TT;"
    const/4 v0, 0x0

    .line 50
    iput-object v0, p1, Lcom/wanduoduo/fragment/ActiviFragment;->tvLeft:Landroid/widget/TextView;

    .line 51
    iput-object v0, p1, Lcom/wanduoduo/fragment/ActiviFragment;->tvRight:Landroid/widget/TextView;

    .line 52
    iput-object v0, p1, Lcom/wanduoduo/fragment/ActiviFragment;->vLeft:Landroid/view/View;

    .line 53
    iput-object v0, p1, Lcom/wanduoduo/fragment/ActiviFragment;->vRight:Landroid/view/View;

    .line 54
    iput-object v0, p1, Lcom/wanduoduo/fragment/ActiviFragment;->relLeft:Landroid/widget/RelativeLayout;

    .line 55
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/ActiviFragment;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/ActiviFragment$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/ActiviFragment;)V

    return-void
.end method
