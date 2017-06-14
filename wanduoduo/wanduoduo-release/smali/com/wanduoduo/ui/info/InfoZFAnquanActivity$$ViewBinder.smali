.class public Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "InfoZFAnquanActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;,"TT;"
    const v4, 0x7f0e012b

    const v3, 0x7f0e012a

    const v2, 0x7f0e0129

    .line 11
    const-string v1, "field \'relSetPsd\' and method \'onClick\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'relSetPsd\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->relSetPsd:Landroid/widget/RelativeLayout;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'relChangePsd\' and method \'onClick\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'relChangePsd\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->relChangePsd:Landroid/widget/RelativeLayout;

    .line 23
    new-instance v1, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const-string v1, "field \'relForgetPsd\' and method \'onClick\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'relForgetPsd\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->relForgetPsd:Landroid/widget/RelativeLayout;

    .line 33
    new-instance v1, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;,"TT;"
    const/4 v0, 0x0

    .line 44
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->relSetPsd:Landroid/widget/RelativeLayout;

    .line 45
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->relChangePsd:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;->relForgetPsd:Landroid/widget/RelativeLayout;

    .line 47
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/info/InfoZFAnquanActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/info/InfoZFAnquanActivity;)V

    return-void
.end method
