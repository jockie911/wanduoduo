.class public Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;
.super Ljava/lang/Object;
.source "AlreadyBuyServiceFragment$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;",
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
    .local p0, this:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;,"TT;"
    const v4, 0x7f0e0225

    const v3, 0x7f0e0222

    const v2, 0x7f0e021f

    .line 11
    const-string v1, "field \'tvAll\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'tvAll\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->tvAll:Landroid/widget/TextView;

    .line 13
    const v1, 0x7f0e0220

    const-string v2, "field \'vAll\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->vAll:Landroid/view/View;

    .line 15
    const-string v1, "field \'tvIng\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvIng\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->tvIng:Landroid/widget/TextView;

    .line 17
    const v1, 0x7f0e0223

    const-string v2, "field \'vIng\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->vIng:Landroid/view/View;

    .line 19
    const-string v1, "field \'tvDiscuss\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvDiscuss\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->tvDiscuss:Landroid/widget/TextView;

    .line 21
    const v1, 0x7f0e0226

    const-string v2, "field \'vDiscuss\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->vDiscuss:Landroid/view/View;

    .line 23
    const v1, 0x7f0e00c7

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$1;-><init>(Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v1, 0x7f0e0221

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 33
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$2;-><init>(Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v1, 0x7f0e0224

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder$3;-><init>(Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;,"TT;"
    const/4 v0, 0x0

    .line 53
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->tvAll:Landroid/widget/TextView;

    .line 54
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->vAll:Landroid/view/View;

    .line 55
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->tvIng:Landroid/widget/TextView;

    .line 56
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->vIng:Landroid/view/View;

    .line 57
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->tvDiscuss:Landroid/widget/TextView;

    .line 58
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;->vDiscuss:Landroid/view/View;

    .line 59
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/info/AlreadyBuyServiceFragment;)V

    return-void
.end method
