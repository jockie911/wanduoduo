.class public Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;
.super Ljava/lang/Object;
.source "ManageGetMoneyFragment$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;",
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
    .local p0, this:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;,"TT;"
    const v6, 0x7f0e0268

    const v5, 0x7f0e0267

    const v4, 0x7f0e0266

    const v3, 0x7f0e0264

    const v2, 0x7f0e01df

    .line 11
    const-string v1, "field \'etName\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'etName\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etName:Landroid/widget/EditText;

    .line 13
    const-string v1, "field \'etAccount\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etAccount\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etAccount:Landroid/widget/EditText;

    .line 15
    const-string v1, "field \'etMoney\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etMoney\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etMoney:Landroid/widget/EditText;

    .line 17
    const-string v1, "field \'tvMakeSureTixian\' and method \'onClick\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvMakeSureTixian\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvMakeSureTixian:Landroid/widget/TextView;

    .line 19
    new-instance v1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$1;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const-string v1, "field \'ivClear\' and method \'onClick\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivClear\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->ivClear:Landroid/widget/ImageView;

    .line 29
    new-instance v1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$2;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v1, 0x7f0e0269

    const-string v2, "field \'tvUserableMoney\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 38
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0269

    const-string v2, "field \'tvUserableMoney\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvUserableMoney:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0e0263

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$3;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v1, 0x7f0e0265

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 49
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$4;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f0e026a

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 58
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder$5;-><init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;,"TT;"
    const/4 v0, 0x0

    .line 69
    iput-object v0, p1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etName:Landroid/widget/EditText;

    .line 70
    iput-object v0, p1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etAccount:Landroid/widget/EditText;

    .line 71
    iput-object v0, p1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->etMoney:Landroid/widget/EditText;

    .line 72
    iput-object v0, p1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvMakeSureTixian:Landroid/widget/TextView;

    .line 73
    iput-object v0, p1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->ivClear:Landroid/widget/ImageView;

    .line 74
    iput-object v0, p1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->tvUserableMoney:Landroid/widget/TextView;

    .line 75
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V

    return-void
.end method
