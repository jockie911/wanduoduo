.class public Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;
.super Ljava/lang/Object;
.source "IndexFragment$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/fragment/IndexFragment;",
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
    .local p0, this:Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/IndexFragment;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/fragment/IndexFragment;,"TT;"
    const v2, 0x7f0e022d

    const v6, 0x7f0e022b

    const v5, 0x7f0e01cd

    const v4, 0x7f0e0106

    const v3, 0x7f0e00ba

    .line 11
    const-string v1, "field \'tvSelectedAbility\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'tvSelectedAbility\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedAbility:Landroid/widget/TextView;

    .line 13
    const v1, 0x7f0e0230

    const-string v2, "field \'tvSelectedSex\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0230

    const-string v2, "field \'tvSelectedSex\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedSex:Landroid/widget/TextView;

    .line 15
    const-string v1, "field \'tvSelectedSort\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvSelectedSort\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedSort:Landroid/widget/TextView;

    .line 17
    const-string v1, "field \'colLlAbility\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'colLlAbility\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/IndexFragment;->colLlAbility:Landroid/widget/LinearLayout;

    .line 19
    const v1, 0x7f0e03ae

    const-string v2, "field \'tvRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e03ae

    const-string v2, "field \'tvRightTitleBar\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/IndexFragment;->tvRightTitleBar:Landroid/widget/TextView;

    .line 21
    new-instance v1, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$1;-><init>(Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v1, 0x7f0e022e

    const-string v2, "field \'vView\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/fragment/IndexFragment;->vView:Landroid/view/View;

    .line 31
    const v1, 0x7f0e0232

    const-string v2, "field \'ivSameCity\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0232

    const-string v2, "field \'ivSameCity\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/IndexFragment;->ivSameCity:Landroid/widget/ImageView;

    .line 33
    new-instance v1, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$2;-><init>(Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v1, 0x7f0e0233

    const-string v2, "field \'ivFood\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0233

    const-string v2, "field \'ivFood\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/IndexFragment;->ivFood:Landroid/widget/ImageView;

    .line 43
    new-instance v1, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$3;-><init>(Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f0e0234

    const-string v2, "field \'ivInstrument\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 52
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0234

    const-string v2, "field \'ivInstrument\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/IndexFragment;->ivInstrument:Landroid/widget/ImageView;

    .line 53
    new-instance v1, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$4;-><init>(Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f0e0235

    const-string v2, "field \'ivExercise\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 62
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0235

    const-string v2, "field \'ivExercise\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/IndexFragment;->ivExercise:Landroid/widget/ImageView;

    .line 63
    new-instance v1, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$5;-><init>(Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const-string v1, "field \'tvPlace\' and method \'onClick\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 72
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvPlace\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/IndexFragment;->tvPlace:Landroid/widget/TextView;

    .line 73
    new-instance v1, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$6;-><init>(Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const-string v1, "field \'refreshLayout\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 82
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'refreshLayout\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cjj/MaterialRefreshLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/IndexFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    .line 83
    const v1, 0x7f0e022c

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 84
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$7;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$7;-><init>(Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v1, 0x7f0e022f

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 93
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$8;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$8;-><init>(Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v1, 0x7f0e0231

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 102
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$9;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder$9;-><init>(Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;Lcom/wanduoduo/fragment/IndexFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/IndexFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/IndexFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/fragment/IndexFragment;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/fragment/IndexFragment;,"TT;"
    const/4 v0, 0x0

    .line 113
    iput-object v0, p1, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedAbility:Landroid/widget/TextView;

    .line 114
    iput-object v0, p1, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedSex:Landroid/widget/TextView;

    .line 115
    iput-object v0, p1, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedSort:Landroid/widget/TextView;

    .line 116
    iput-object v0, p1, Lcom/wanduoduo/fragment/IndexFragment;->colLlAbility:Landroid/widget/LinearLayout;

    .line 117
    iput-object v0, p1, Lcom/wanduoduo/fragment/IndexFragment;->tvRightTitleBar:Landroid/widget/TextView;

    .line 118
    iput-object v0, p1, Lcom/wanduoduo/fragment/IndexFragment;->vView:Landroid/view/View;

    .line 119
    iput-object v0, p1, Lcom/wanduoduo/fragment/IndexFragment;->ivSameCity:Landroid/widget/ImageView;

    .line 120
    iput-object v0, p1, Lcom/wanduoduo/fragment/IndexFragment;->ivFood:Landroid/widget/ImageView;

    .line 121
    iput-object v0, p1, Lcom/wanduoduo/fragment/IndexFragment;->ivInstrument:Landroid/widget/ImageView;

    .line 122
    iput-object v0, p1, Lcom/wanduoduo/fragment/IndexFragment;->ivExercise:Landroid/widget/ImageView;

    .line 123
    iput-object v0, p1, Lcom/wanduoduo/fragment/IndexFragment;->tvPlace:Landroid/widget/TextView;

    .line 124
    iput-object v0, p1, Lcom/wanduoduo/fragment/IndexFragment;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    .line 125
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/IndexFragment;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/IndexFragment$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/IndexFragment;)V

    return-void
.end method
