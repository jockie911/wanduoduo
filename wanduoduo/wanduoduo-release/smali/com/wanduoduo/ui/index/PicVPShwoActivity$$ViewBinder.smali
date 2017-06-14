.class public Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "PicVPShwoActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/index/PicVPShwoActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/index/PicVPShwoActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/index/PicVPShwoActivity;,"TT;"
    const v3, 0x7f0e019f

    const v2, 0x7f0e0181

    .line 11
    const-string v1, "field \'viewpager\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'viewpager\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p2, Lcom/wanduoduo/ui/index/PicVPShwoActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    .line 13
    const-string v1, "field \'tvNum\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvNum\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/index/PicVPShwoActivity;->tvNum:Landroid/widget/TextView;

    .line 15
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/index/PicVPShwoActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/index/PicVPShwoActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/index/PicVPShwoActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/index/PicVPShwoActivity;,"TT;"
    const/4 v0, 0x0

    .line 18
    iput-object v0, p1, Lcom/wanduoduo/ui/index/PicVPShwoActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    .line 19
    iput-object v0, p1, Lcom/wanduoduo/ui/index/PicVPShwoActivity;->tvNum:Landroid/widget/TextView;

    .line 20
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/index/PicVPShwoActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/index/PicVPShwoActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/index/PicVPShwoActivity;)V

    return-void
.end method
