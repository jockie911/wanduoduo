.class public Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder;
.super Ljava/lang/Object;
.source "IndexGridViewAdapter$ViewHolder$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;",
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
    .local p0, this:Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;,"TT;"
    const v6, 0x7f0e0292

    const v5, 0x7f0e0291

    const v4, 0x7f0e0290

    const v2, 0x7f0e028f

    const v3, 0x7f0e0113

    .line 11
    const-string v1, "field \'itemIvPic\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'itemIvPic\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemIvPic:Landroid/widget/ImageView;

    .line 13
    const-string v1, "field \'itemIvPlay\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'itemIvPlay\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemIvPlay:Landroid/widget/ImageView;

    .line 15
    const-string v1, "field \'itemTvTitle\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'itemTvTitle\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemTvTitle:Landroid/widget/TextView;

    .line 17
    const v1, 0x7f0e0293

    const-string v2, "field \'itemTvNickname\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0293

    const-string v2, "field \'itemTvNickname\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemTvNickname:Landroid/widget/TextView;

    .line 19
    const-string v1, "field \'ivSexBg\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivSexBg\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->ivSexBg:Landroid/widget/ImageView;

    .line 21
    const-string v1, "field \'tvPrice\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvPrice\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

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
    .local p0, this:Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;,"TT;"
    const/4 v0, 0x0

    .line 26
    iput-object v0, p1, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemIvPic:Landroid/widget/ImageView;

    .line 27
    iput-object v0, p1, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemIvPlay:Landroid/widget/ImageView;

    .line 28
    iput-object v0, p1, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemTvTitle:Landroid/widget/TextView;

    .line 29
    iput-object v0, p1, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->itemTvNickname:Landroid/widget/TextView;

    .line 30
    iput-object v0, p1, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->ivSexBg:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p1, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 32
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder$$ViewBinder;->unbind(Lcom/wanduoduo/adapter/index/IndexGridViewAdapter$ViewHolder;)V

    return-void
.end method
