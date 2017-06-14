.class public Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "ActiviPublishActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/activi/ActiviPublishActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/activi/ActiviPublishActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;,"TT;"
    const v6, 0x7f0e01ef

    const v5, 0x7f0e00c3

    const v4, 0x7f0e00c1

    const v3, 0x7f0e00bf

    const v2, 0x7f0e00be

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

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'mgvPhoto\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'mgvPhoto\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    .line 23
    const-string v1, "field \'etContent\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etContent\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->etContent:Landroid/widget/EditText;

    .line 25
    const-string v1, "field \'tvLocation\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvLocation\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvLocation:Landroid/widget/TextView;

    .line 27
    const-string v1, "field \'tvWatch\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvWatch\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvWatch:Landroid/widget/TextView;

    .line 29
    const v1, 0x7f0e00c0

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v1, 0x7f0e00c2

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 39
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v1, 0x7f0e00c4

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 48
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v1, 0x7f0e00c5

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 57
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder$5;-><init>(Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/activi/ActiviPublishActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/activi/ActiviPublishActivity;,"TT;"
    const/4 v0, 0x0

    .line 68
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 69
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    .line 70
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->etContent:Landroid/widget/EditText;

    .line 71
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvLocation:Landroid/widget/TextView;

    .line 72
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;->tvWatch:Landroid/widget/TextView;

    .line 73
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/activi/ActiviPublishActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/activi/ActiviPublishActivity;)V

    return-void
.end method
