.class public Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder;
.super Ljava/lang/Object;
.source "InfoLoveAdapter$ViewHolder$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;",
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
    .local p0, this:Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;,"TT;"
    const v6, 0x7f0e01fb

    const v5, 0x7f0e01f9

    const v4, 0x7f0e01f7

    const v3, 0x7f0e01f6

    const v2, 0x7f0e00fe

    .line 11
    const-string v1, "field \'ivAvctor\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'ivAvctor\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/CircleImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 13
    const-string v1, "field \'tvName\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvName\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 15
    const-string v1, "field \'tvAge\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvAge\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    .line 17
    const v1, 0x7f0e01fc

    const-string v2, "field \'tvVisitTime\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fc

    const-string v2, "field \'tvVisitTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    .line 19
    const v1, 0x7f0e01fd

    const-string v2, "field \'ivJianTou\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fd

    const-string v2, "field \'ivJianTou\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivJianTou:Landroid/widget/ImageView;

    .line 21
    const v1, 0x7f0e01fe

    const-string v2, "field \'vBottonLine\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->vBottonLine:Landroid/view/View;

    .line 23
    const-string v1, "field \'relPersonInfo\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'relPersonInfo\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->relPersonInfo:Landroid/widget/RelativeLayout;

    .line 25
    const-string v1, "field \'ivVipLevel\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivVipLevel\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    .line 27
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;,"TT;"
    const/4 v0, 0x0

    .line 30
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 31
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 32
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    .line 33
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    .line 34
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivJianTou:Landroid/widget/ImageView;

    .line 35
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->vBottonLine:Landroid/view/View;

    .line 36
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->relPersonInfo:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v0, p1, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    .line 38
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder$$ViewBinder;->unbind(Lcom/wanduoduo/adapter/info/InfoLoveAdapter$ViewHolder;)V

    return-void
.end method
