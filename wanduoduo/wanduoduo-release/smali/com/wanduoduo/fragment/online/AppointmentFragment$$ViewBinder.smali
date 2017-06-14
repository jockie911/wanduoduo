.class public Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;
.super Ljava/lang/Object;
.source "AppointmentFragment$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/fragment/online/AppointmentFragment;",
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
    .local p0, this:Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/online/AppointmentFragment;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/fragment/online/AppointmentFragment;,"TT;"
    const v6, 0x7f0e0273

    const v5, 0x7f0e0272

    const v4, 0x7f0e01ef

    const v3, 0x7f0e01ee

    const v2, 0x7f0e00e1

    .line 11
    const-string v1, "field \'iv\' and method \'onClick\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'iv\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/online/AppointmentFragment;->iv:Landroid/widget/ImageView;

    .line 13
    new-instance v1, Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder$1;-><init>(Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;Lcom/wanduoduo/fragment/online/AppointmentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'hzlv\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'hzlv\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/HorizontalListView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/online/AppointmentFragment;->hzlv:Lcom/wanduoduo/widget/HorizontalListView;

    .line 23
    const-string v1, "field \'tvRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvRightTitleBar\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/online/AppointmentFragment;->tvRightTitleBar:Landroid/widget/TextView;

    .line 25
    new-instance v1, Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder$2;-><init>(Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;Lcom/wanduoduo/fragment/online/AppointmentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const-string v1, "field \'tvTitle\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTitle\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/online/AppointmentFragment;->tvTitle:Landroid/widget/TextView;

    .line 35
    const-string v1, "field \'ivLeftTitleBar\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivLeftTitleBar\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/online/AppointmentFragment;->ivLeftTitleBar:Landroid/widget/ImageView;

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
    .local p0, this:Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/online/AppointmentFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/online/AppointmentFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/fragment/online/AppointmentFragment;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/fragment/online/AppointmentFragment;,"TT;"
    const/4 v0, 0x0

    .line 40
    iput-object v0, p1, Lcom/wanduoduo/fragment/online/AppointmentFragment;->iv:Landroid/widget/ImageView;

    .line 41
    iput-object v0, p1, Lcom/wanduoduo/fragment/online/AppointmentFragment;->hzlv:Lcom/wanduoduo/widget/HorizontalListView;

    .line 42
    iput-object v0, p1, Lcom/wanduoduo/fragment/online/AppointmentFragment;->tvRightTitleBar:Landroid/widget/TextView;

    .line 43
    iput-object v0, p1, Lcom/wanduoduo/fragment/online/AppointmentFragment;->tvTitle:Landroid/widget/TextView;

    .line 44
    iput-object v0, p1, Lcom/wanduoduo/fragment/online/AppointmentFragment;->ivLeftTitleBar:Landroid/widget/ImageView;

    .line 45
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/online/AppointmentFragment;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/online/AppointmentFragment$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/online/AppointmentFragment;)V

    return-void
.end method
