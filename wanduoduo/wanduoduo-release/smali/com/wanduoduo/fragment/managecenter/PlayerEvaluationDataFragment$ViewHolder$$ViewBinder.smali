.class public Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder;
.super Ljava/lang/Object;
.source "PlayerEvaluationDataFragment$ViewHolder$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;",
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
    .local p0, this:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;,"TT;"
    const v6, 0x7f0e02cc

    const v5, 0x7f0e02cb

    const v4, 0x7f0e02ca

    const v3, 0x7f0e02c9

    const v2, 0x7f0e00fa

    .line 11
    const-string v1, "field \'civEvalutionActor\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'civEvalutionActor\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/CircleImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->civEvalutionActor:Lcom/wanduoduo/widget/CircleImageView;

    .line 13
    const-string v1, "field \'tvNickname\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvNickname\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->tvNickname:Landroid/widget/TextView;

    .line 15
    const-string v1, "field \'ivStar\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivStar\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->ivStar:Landroid/widget/ImageView;

    .line 17
    const-string v1, "field \'evalucation\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'evalucation\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->evalucation:Landroid/widget/TextView;

    .line 19
    const-string v1, "field \'relDetailSkill\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'relDetailSkill\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->relDetailSkill:Landroid/widget/RelativeLayout;

    .line 21
    const v1, 0x7f0e02cd

    const-string v2, "field \'time\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02cd

    const-string v2, "field \'time\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->time:Landroid/widget/TextView;

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
    .local p0, this:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;,"TT;"
    const/4 v0, 0x0

    .line 26
    iput-object v0, p1, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->civEvalutionActor:Lcom/wanduoduo/widget/CircleImageView;

    .line 27
    iput-object v0, p1, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->tvNickname:Landroid/widget/TextView;

    .line 28
    iput-object v0, p1, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->ivStar:Landroid/widget/ImageView;

    .line 29
    iput-object v0, p1, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->evalucation:Landroid/widget/TextView;

    .line 30
    iput-object v0, p1, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->relDetailSkill:Landroid/widget/RelativeLayout;

    .line 31
    iput-object v0, p1, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;->time:Landroid/widget/TextView;

    .line 32
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/managecenter/PlayerEvaluationDataFragment$ViewHolder;)V

    return-void
.end method
