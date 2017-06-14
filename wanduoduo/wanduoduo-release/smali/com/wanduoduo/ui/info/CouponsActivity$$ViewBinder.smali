.class public Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "CouponsActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/info/CouponsActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/CouponsActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/info/CouponsActivity;,"TT;"
    const v5, 0x7f0e00f2

    const v4, 0x7f0e00f1

    const v3, 0x7f0e00ee

    const v2, 0x7f0e00ed

    .line 11
    const-string v1, "field \'llOldPassCoupons\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'llOldPassCoupons\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/CouponsActivity;->llOldPassCoupons:Landroid/widget/LinearLayout;

    .line 13
    const-string v1, "field \'tvOldPassCoupons\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvOldPassCoupons\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/CouponsActivity;->tvOldPassCoupons:Landroid/widget/TextView;

    .line 15
    new-instance v1, Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder;Lcom/wanduoduo/ui/info/CouponsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const-string v1, "field \'llCouponsSearch\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'llCouponsSearch\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/CouponsActivity;->llCouponsSearch:Landroid/widget/LinearLayout;

    .line 25
    const-string v1, "field \'etCouponsSearch\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etCouponsSearch\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/CouponsActivity;->etCouponsSearch:Landroid/widget/EditText;

    .line 27
    const v1, 0x7f0e00ef

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder;Lcom/wanduoduo/ui/info/CouponsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/info/CouponsActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/CouponsActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/info/CouponsActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/info/CouponsActivity;,"TT;"
    const/4 v0, 0x0

    .line 39
    iput-object v0, p1, Lcom/wanduoduo/ui/info/CouponsActivity;->llOldPassCoupons:Landroid/widget/LinearLayout;

    .line 40
    iput-object v0, p1, Lcom/wanduoduo/ui/info/CouponsActivity;->tvOldPassCoupons:Landroid/widget/TextView;

    .line 41
    iput-object v0, p1, Lcom/wanduoduo/ui/info/CouponsActivity;->llCouponsSearch:Landroid/widget/LinearLayout;

    .line 42
    iput-object v0, p1, Lcom/wanduoduo/ui/info/CouponsActivity;->etCouponsSearch:Landroid/widget/EditText;

    .line 43
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/info/CouponsActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/info/CouponsActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/info/CouponsActivity;)V

    return-void
.end method
