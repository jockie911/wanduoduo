.class public Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "SubmitOrderActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/order/SubmitOrderActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/order/SubmitOrderActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/order/SubmitOrderActivity;,"TT;"
    const v7, 0x7f0e018e

    const v6, 0x7f0e0170

    const v5, 0x7f0e0168

    const v4, 0x7f0e0113

    const v3, 0x7f0e00e5

    .line 11
    const v1, 0x7f0e01e5

    const-string v2, "field \'ivPic\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0e01e5

    const-string v2, "field \'ivPic\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->ivPic:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    .line 13
    const-string v1, "field \'tvSubTitle\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvSubTitle\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvSubTitle:Landroid/widget/TextView;

    .line 15
    const-string v1, "field \'tvPrice\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvPrice\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvPrice:Landroid/widget/TextView;

    .line 17
    const v1, 0x7f0e01e8

    const-string v2, "field \'tvCoupons\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01e8

    const-string v2, "field \'tvCoupons\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvCoupons:Landroid/widget/TextView;

    .line 19
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvTime:Landroid/widget/TextView;

    .line 21
    const-string v1, "field \'tvTotalPrice\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTotalPrice\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 23
    const-string v1, "field \'etPlace\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etPlace\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->etPlace:Landroid/widget/EditText;

    .line 25
    const v1, 0x7f0e01ea

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder;Lcom/wanduoduo/ui/order/SubmitOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v1, 0x7f0e01e7

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 35
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder;Lcom/wanduoduo/ui/order/SubmitOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x7f0e01e9

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 44
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder;Lcom/wanduoduo/ui/order/SubmitOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/order/SubmitOrderActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/order/SubmitOrderActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/order/SubmitOrderActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/order/SubmitOrderActivity;,"TT;"
    const/4 v0, 0x0

    .line 55
    iput-object v0, p1, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->ivPic:Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;

    .line 56
    iput-object v0, p1, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvSubTitle:Landroid/widget/TextView;

    .line 57
    iput-object v0, p1, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvPrice:Landroid/widget/TextView;

    .line 58
    iput-object v0, p1, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvCoupons:Landroid/widget/TextView;

    .line 59
    iput-object v0, p1, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvTime:Landroid/widget/TextView;

    .line 60
    iput-object v0, p1, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 61
    iput-object v0, p1, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->etPlace:Landroid/widget/EditText;

    .line 62
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/order/SubmitOrderActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/order/SubmitOrderActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/order/SubmitOrderActivity;)V

    return-void
.end method
