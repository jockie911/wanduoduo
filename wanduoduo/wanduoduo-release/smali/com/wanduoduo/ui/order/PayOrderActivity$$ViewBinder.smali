.class public Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "PayOrderActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/order/PayOrderActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/order/PayOrderActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/order/PayOrderActivity;,"TT;"
    const v6, 0x7f0e017a

    const v5, 0x7f0e0117

    const v2, 0x7f0e0115

    const v4, 0x7f0e0106

    const v3, 0x7f0e00e5

    .line 11
    const-string v1, "field \'cbWX\' and method \'onClick\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'cbWX\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWX:Landroid/widget/CheckBox;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;Lcom/wanduoduo/ui/order/PayOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'cbZFB\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'cbZFB\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbZFB:Landroid/widget/CheckBox;

    .line 23
    new-instance v1, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;Lcom/wanduoduo/ui/order/PayOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v1, 0x7f0e017f

    const-string v2, "field \'cbWallet\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e017f

    const-string v2, "field \'cbWallet\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWallet:Landroid/widget/CheckBox;

    .line 33
    new-instance v1, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;Lcom/wanduoduo/ui/order/PayOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const-string v1, "field \'tvTime1\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTime1\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime1:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0e017b

    const-string v2, "field \'tvTime2\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 44
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e017b

    const-string v2, "field \'tvTime2\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime2:Landroid/widget/TextView;

    .line 45
    const v1, 0x7f0e017c

    const-string v2, "field \'tvTime3\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 46
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e017c

    const-string v2, "field \'tvTime3\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime3:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0e017d

    const-string v2, "field \'tvTime4\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 48
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e017d

    const-string v2, "field \'tvTime4\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime4:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0e01f4

    const-string v2, "field \'tvMoney\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 50
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f4

    const-string v2, "field \'tvMoney\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvMoney:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f0e01f5

    const-string v2, "field \'tvOrderId\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 52
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f5

    const-string v2, "field \'tvOrderId\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvOrderId:Landroid/widget/TextView;

    .line 53
    const-string v1, "field \'tvPlace\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 54
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvPlace\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvPlace:Landroid/widget/TextView;

    .line 55
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 56
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0e0180

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 58
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;Lcom/wanduoduo/ui/order/PayOrderActivity;)V

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
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/order/PayOrderActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/order/PayOrderActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/order/PayOrderActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/order/PayOrderActivity;,"TT;"
    const/4 v0, 0x0

    .line 69
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWX:Landroid/widget/CheckBox;

    .line 70
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbZFB:Landroid/widget/CheckBox;

    .line 71
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderActivity;->cbWallet:Landroid/widget/CheckBox;

    .line 72
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime1:Landroid/widget/TextView;

    .line 73
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime2:Landroid/widget/TextView;

    .line 74
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime3:Landroid/widget/TextView;

    .line 75
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime4:Landroid/widget/TextView;

    .line 76
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvMoney:Landroid/widget/TextView;

    .line 77
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvOrderId:Landroid/widget/TextView;

    .line 78
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvPlace:Landroid/widget/TextView;

    .line 79
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderActivity;->tvTime:Landroid/widget/TextView;

    .line 80
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/order/PayOrderActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/order/PayOrderActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/order/PayOrderActivity;)V

    return-void
.end method
