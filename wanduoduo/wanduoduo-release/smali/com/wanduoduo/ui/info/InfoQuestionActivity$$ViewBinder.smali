.class public Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "InfoQuestionActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/info/InfoQuestionActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoQuestionActivity;Ljava/lang/Object;)V
    .locals 3
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/info/InfoQuestionActivity;,"TT;"
    const v2, 0x7f0e0119

    .line 11
    const-string v1, "field \'lvQuestion\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'lvQuestion\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->lvQuestion:Landroid/widget/ListView;

    .line 13
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/info/InfoQuestionActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoQuestionActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/info/InfoQuestionActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, this:Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/info/InfoQuestionActivity;,"TT;"
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoQuestionActivity;->lvQuestion:Landroid/widget/ListView;

    .line 17
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/info/InfoQuestionActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/info/InfoQuestionActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/info/InfoQuestionActivity;)V

    return-void
.end method
