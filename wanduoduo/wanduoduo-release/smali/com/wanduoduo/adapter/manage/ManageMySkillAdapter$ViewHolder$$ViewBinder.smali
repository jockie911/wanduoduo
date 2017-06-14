.class public Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder;
.super Ljava/lang/Object;
.source "ManageMySkillAdapter$ViewHolder$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;",
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
    .local p0, this:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;,"TT;"
    const v6, 0x7f0e02d0

    const v5, 0x7f0e02ba

    const v4, 0x7f0e02b9

    const v3, 0x7f0e02b8

    const v2, 0x7f0e0292

    .line 11
    const-string v1, "field \'itemIvPhoto\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'itemIvPhoto\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->itemIvPhoto:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    .line 13
    const-string v1, "field \'itemTvTitle\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'itemTvTitle\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->itemTvTitle:Landroid/widget/TextView;

    .line 15
    const-string v1, "field \'itemTvTime\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'itemTvTime\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->itemTvTime:Landroid/widget/TextView;

    .line 17
    const-string v1, "field \'itemTvMoney\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'itemTvMoney\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->itemTvMoney:Landroid/widget/TextView;

    .line 19
    const v1, 0x7f0e0111

    const-string v2, "field \'tempV\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->tempV:Landroid/view/View;

    .line 21
    const v1, 0x7f0e02d2

    const-string v2, "field \'tvUpDown\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02d2

    const-string v2, "field \'tvUpDown\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->tvUpDown:Landroid/widget/TextView;

    .line 23
    const v1, 0x7f0e02d1

    const-string v2, "field \'flUpDown\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02d1

    const-string v2, "field \'flUpDown\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->flUpDown:Landroid/widget/FrameLayout;

    .line 25
    const-string v1, "field \'flDeleteSkill\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'flDeleteSkill\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->flDeleteSkill:Landroid/widget/FrameLayout;

    .line 27
    const v1, 0x7f0e02d4

    const-string v2, "field \'flEditSkill\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02d4

    const-string v2, "field \'flEditSkill\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->flEditSkill:Landroid/widget/FrameLayout;

    .line 29
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;,"TT;"
    const/4 v0, 0x0

    .line 32
    iput-object v0, p1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->itemIvPhoto:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    .line 33
    iput-object v0, p1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->itemTvTitle:Landroid/widget/TextView;

    .line 34
    iput-object v0, p1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->itemTvTime:Landroid/widget/TextView;

    .line 35
    iput-object v0, p1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->itemTvMoney:Landroid/widget/TextView;

    .line 36
    iput-object v0, p1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->tempV:Landroid/view/View;

    .line 37
    iput-object v0, p1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->tvUpDown:Landroid/widget/TextView;

    .line 38
    iput-object v0, p1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->flUpDown:Landroid/widget/FrameLayout;

    .line 39
    iput-object v0, p1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->flDeleteSkill:Landroid/widget/FrameLayout;

    .line 40
    iput-object v0, p1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;->flEditSkill:Landroid/widget/FrameLayout;

    .line 41
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder$$ViewBinder;->unbind(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$ViewHolder;)V

    return-void
.end method
