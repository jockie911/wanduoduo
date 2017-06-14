.class public Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "InfoQuestionItemActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;,"TT;"
    const v6, 0x7f0e01ef

    const v5, 0x7f0e011d

    const v4, 0x7f0e011c

    const v3, 0x7f0e011b

    const v2, 0x7f0e011a

    .line 11
    const-string v1, "field \'tvRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'tvRightTitleBar\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'tvQuestion\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvQuestion\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvQuestion:Landroid/widget/TextView;

    .line 23
    const-string v1, "field \'etAnswer\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etAnswer\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->etAnswer:Landroid/widget/EditText;

    .line 25
    const-string v1, "field \'tvTextCount\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTextCount\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvTextCount:Landroid/widget/TextView;

    .line 27
    const-string v1, "field \'tvSubmitAnswer\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvSubmitAnswer\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvSubmitAnswer:Landroid/widget/TextView;

    .line 29
    new-instance v1, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;,"TT;"
    const/4 v0, 0x0

    .line 40
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 41
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvQuestion:Landroid/widget/TextView;

    .line 42
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->etAnswer:Landroid/widget/EditText;

    .line 43
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvTextCount:Landroid/widget/TextView;

    .line 44
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;->tvSubmitAnswer:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/info/InfoQuestionItemActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/info/InfoQuestionItemActivity;)V

    return-void
.end method
