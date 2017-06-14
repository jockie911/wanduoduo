.class public Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "InfoChongZhiActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/info/InfoChongZhiActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoChongZhiActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;,"TT;"
    const v6, 0x7f0e028c

    const v5, 0x7f0e0267

    const v4, 0x7f0e0118

    const v3, 0x7f0e0117

    const v2, 0x7f0e0115

    .line 11
    const-string v1, "field \'gvMoney\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'gvMoney\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->gvMoney:Lcom/wanduoduo/widget/MyGridView;

    .line 13
    const-string v1, "field \'etMoney\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etMoney\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->etMoney:Landroid/widget/EditText;

    .line 15
    const-string v1, "field \'tvMakeSureChongZhi\' and method \'onClick\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvMakeSureChongZhi\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    .line 17
    new-instance v1, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoChongZhiActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const-string v1, "field \'cbWeixin\' and method \'onClick\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'cbWeixin\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbWeixin:Landroid/widget/CheckBox;

    .line 27
    new-instance v1, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoChongZhiActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const-string v1, "field \'cbZfb\' and method \'onClick\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'cbZfb\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbZfb:Landroid/widget/CheckBox;

    .line 37
    new-instance v1, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoChongZhiActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v1, 0x7f0e0130

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 46
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder;Lcom/wanduoduo/ui/info/InfoChongZhiActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/info/InfoChongZhiActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;,"TT;"
    const/4 v0, 0x0

    .line 57
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->gvMoney:Lcom/wanduoduo/widget/MyGridView;

    .line 58
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->etMoney:Landroid/widget/EditText;

    .line 59
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->tvMakeSureChongZhi:Landroid/widget/TextView;

    .line 60
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbWeixin:Landroid/widget/CheckBox;

    .line 61
    iput-object v0, p1, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbZfb:Landroid/widget/CheckBox;

    .line 62
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder;,"Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;)V

    return-void
.end method
