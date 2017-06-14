.class public Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "InfoPayCoinActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/info/InfoPayCoinActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoPayCoinActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;,"TT;"
    const v6, 0x7f0e0118

    const v5, 0x7f0e0117

    const v4, 0x7f0e0115

    const v3, 0x7f0e0113

    const v2, 0x7f0e0112

    .line 11
    const-string v1, "field \'tvMakeSureChongZhi\' and method \'onClick\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'tvMakeSureChongZhi\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoPayCoinActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'cbWeixin\' and method \'onClick\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'cbWeixin\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->cbWeixin:Landroid/widget/CheckBox;

    .line 23
    new-instance v1, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoPayCoinActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const-string v1, "field \'cbZfb\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'cbZfb\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->cbZfb:Landroid/widget/CheckBox;

    .line 33
    new-instance v1, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoPayCoinActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const-string v1, "field \'tvCoin\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvCoin\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->tvCoin:Landroid/widget/TextView;

    .line 43
    const-string v1, "field \'tvPrice\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 44
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvPrice\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->tvPrice:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoPayCoinActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/info/InfoPayCoinActivity;,"TT;"
    const/4 v0, 0x0

    .line 48
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    .line 49
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->cbWeixin:Landroid/widget/CheckBox;

    .line 50
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->cbZfb:Landroid/widget/CheckBox;

    .line 51
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->tvCoin:Landroid/widget/TextView;

    .line 52
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;->tvPrice:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/info/InfoPayCoinActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/info/InfoPayCoinActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/info/InfoPayCoinActivity;)V

    return-void
.end method
