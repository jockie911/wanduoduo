.class public Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "PayOrderCompleteActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;,"TT;"
    const v6, 0x7f0e0177

    const v5, 0x7f0e0106

    const v4, 0x7f0e00fe

    const v3, 0x7f0e00e5

    const v2, 0x7f0e00e2

    .line 11
    const-string v1, "field \'ivRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'ivRightTitleBar\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'flYuYueOk\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'flYuYueOk\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->flYuYueOk:Landroid/widget/FrameLayout;

    .line 23
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvTime:Landroid/widget/TextView;

    .line 25
    const-string v1, "field \'tvPlace\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvPlace\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvPlace:Landroid/widget/TextView;

    .line 27
    const v1, 0x7f0e01f4

    const-string v2, "field \'tvMoney\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f4

    const-string v2, "field \'tvMoney\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvMoney:Landroid/widget/TextView;

    .line 29
    const v1, 0x7f0e01f5

    const-string v2, "field \'tvOrderId\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f5

    const-string v2, "field \'tvOrderId\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvOrderId:Landroid/widget/TextView;

    .line 31
    const v1, 0x7f0e01f7

    const-string v2, "field \'ivAvctor\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f7

    const-string v2, "field \'ivAvctor\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/CircleImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 33
    const v1, 0x7f0e01f8

    const-string v2, "field \'ivVip\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f8

    const-string v2, "field \'ivVip\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->ivVip:Landroid/widget/ImageView;

    .line 35
    const v1, 0x7f0e01f9

    const-string v2, "field \'tvName\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f9

    const-string v2, "field \'tvName\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvName:Landroid/widget/TextView;

    .line 37
    const-string v1, "field \'tvAge\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 38
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvAge\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvAge:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0e01f6

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v1, 0x7f0e0178

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 49
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;,"TT;"
    const/4 v0, 0x0

    .line 60
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    .line 61
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->flYuYueOk:Landroid/widget/FrameLayout;

    .line 62
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvTime:Landroid/widget/TextView;

    .line 63
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvPlace:Landroid/widget/TextView;

    .line 64
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvMoney:Landroid/widget/TextView;

    .line 65
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvOrderId:Landroid/widget/TextView;

    .line 66
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 67
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->ivVip:Landroid/widget/ImageView;

    .line 68
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvName:Landroid/widget/TextView;

    .line 69
    iput-object v0, p1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;->tvAge:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;,"Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/order/PayOrderCompleteActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/order/PayOrderCompleteActivity;)V

    return-void
.end method
