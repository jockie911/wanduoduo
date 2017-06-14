.class public Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder;
.super Ljava/lang/Object;
.source "PersonSkillAdapter$ViewHolder$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;",
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
    .local p0, this:Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;,"TT;"
    const v4, 0x7f0e02c8

    const v3, 0x7f0e01ee

    const v2, 0x7f0e0113

    .line 11
    const-string v1, "field \'rciv\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'rciv\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;->rciv:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    .line 13
    const-string v1, "field \'tvTitle\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTitle\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 15
    const-string v1, "field \'tvPrice\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvPrice\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 17
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;,"TT;"
    const/4 v0, 0x0

    .line 20
    iput-object v0, p1, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;->rciv:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    .line 21
    iput-object v0, p1, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 22
    iput-object v0, p1, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;->tvPrice:Landroid/widget/TextView;

    .line 23
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder$$ViewBinder;->unbind(Lcom/wanduoduo/adapter/index/PersonSkillAdapter$ViewHolder;)V

    return-void
.end method
