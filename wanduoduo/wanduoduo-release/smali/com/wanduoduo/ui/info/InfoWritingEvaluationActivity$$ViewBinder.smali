.class public Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "InfoWritingEvaluationActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;,"TT;"
    const v6, 0x7f0e0125

    const v5, 0x7f0e0123

    const v4, 0x7f0e0122

    const v3, 0x7f0e00fa

    const v2, 0x7f0e00be

    .line 11
    const-string v1, "field \'etContent\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'etContent\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->etContent:Landroid/widget/EditText;

    .line 13
    const v1, 0x7f0e0126

    const-string v2, "field \'cbNiMing\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0126

    const-string v2, "field \'cbNiMing\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->cbNiMing:Landroid/widget/CheckBox;

    .line 15
    const-string v1, "field \'tvNumCount\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvNumCount\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->tvNumCount:Landroid/widget/TextView;

    .line 17
    const-string v1, "field \'ratingBar\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ratingBar\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->ratingBar:Landroid/widget/RatingBar;

    .line 19
    const-string v1, "field \'civAvatar\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'civAvatar\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/CircleImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    .line 21
    const-string v1, "field \'tvNickname\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvNickname\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->tvNickname:Landroid/widget/TextView;

    .line 23
    const v1, 0x7f0e0128

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;,"TT;"
    const/4 v0, 0x0

    .line 35
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->etContent:Landroid/widget/EditText;

    .line 36
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->cbNiMing:Landroid/widget/CheckBox;

    .line 37
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->tvNumCount:Landroid/widget/TextView;

    .line 38
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->ratingBar:Landroid/widget/RatingBar;

    .line 39
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    .line 40
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;->tvNickname:Landroid/widget/TextView;

    .line 41
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/info/InfoWritingEvaluationActivity;)V

    return-void
.end method
