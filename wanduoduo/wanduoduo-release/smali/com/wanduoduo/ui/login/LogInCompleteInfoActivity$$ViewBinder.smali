.class public Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "LogInCompleteInfoActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;Ljava/lang/Object;)V
    .locals 8
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
    .local p0, this:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;,"TT;"
    const v7, 0x7f0e013d

    const v6, 0x7f0e013c

    const v5, 0x7f0e013b

    const v4, 0x7f0e0122

    const v3, 0x7f0e010b

    .line 11
    const v1, 0x7f0e01ec

    const-string v2, "field \'llBaseTitleBar\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0e01ec

    const-string v2, "field \'llBaseTitleBar\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    .line 13
    const-string v1, "field \'civAvatar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'civAvatar\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/CircleImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    .line 15
    new-instance v1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const-string v1, "field \'etPsd\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etPsd\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->etPsd:Landroid/widget/EditText;

    .line 25
    const-string v1, "field \'etNickname\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etNickname\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->etNickname:Landroid/widget/EditText;

    .line 27
    const-string v1, "field \'cbMale\' and method \'onClick\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'cbMale\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbMale:Landroid/widget/CheckBox;

    .line 29
    new-instance v1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const-string v1, "field \'cbFemale\' and method \'onClick\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 38
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'cbFemale\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbFemale:Landroid/widget/CheckBox;

    .line 39
    new-instance v1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v1, 0x7f0e013e

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 48
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder;Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;,"TT;"
    const/4 v0, 0x0

    .line 59
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->llBaseTitleBar:Landroid/widget/LinearLayout;

    .line 60
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    .line 61
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->etPsd:Landroid/widget/EditText;

    .line 62
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->etNickname:Landroid/widget/EditText;

    .line 63
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbMale:Landroid/widget/CheckBox;

    .line 64
    iput-object v0, p1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;->cbFemale:Landroid/widget/CheckBox;

    .line 65
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder;,"Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/login/LogInCompleteInfoActivity;)V

    return-void
.end method
