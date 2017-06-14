.class public Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "PersonAbilityActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/skill/PersonAbilityActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/skill/PersonAbilityActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/skill/PersonAbilityActivity;,"TT;"
    const v6, 0x7f0e0182

    const v5, 0x7f0e0181

    const v4, 0x7f0e0113

    const v3, 0x7f0e00fe

    const v2, 0x7f0e00e2

    .line 11
    const-string v1, "field \'viewPager\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'viewPager\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 13
    const-string v1, "field \'ivRightTitleBar\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivRightTitleBar\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    .line 15
    const-string v1, "field \'containerLL\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'containerLL\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->containerLL:Landroid/widget/LinearLayout;

    .line 17
    const v1, 0x7f0e0183

    const-string v2, "field \'redDotView\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->redDotView:Landroid/view/View;

    .line 19
    const v1, 0x7f0e018a

    const-string v2, "field \'tvServiceDesc\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e018a

    const-string v2, "field \'tvServiceDesc\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvServiceDesc:Landroid/widget/TextView;

    .line 21
    new-instance v1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PersonAbilityActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v1, 0x7f0e018b

    const-string v2, "field \'tvPlayerDiscuss\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e018b

    const-string v2, "field \'tvPlayerDiscuss\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvPlayerDiscuss:Landroid/widget/TextView;

    .line 31
    new-instance v1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PersonAbilityActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v1, 0x7f0e018c

    const-string v2, "field \'tvOtherAbility\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e018c

    const-string v2, "field \'tvOtherAbility\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvOtherAbility:Landroid/widget/TextView;

    .line 41
    new-instance v1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PersonAbilityActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v1, 0x7f0e0184

    const-string v2, "field \'tvDescContent\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 50
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0184

    const-string v2, "field \'tvDescContent\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvDescContent:Landroid/widget/TextView;

    .line 51
    const-string v1, "field \'tvPrice\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 52
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvPrice\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvPrice:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0e01f7

    const-string v2, "field \'ivAvctor\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 54
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f7

    const-string v2, "field \'ivAvctor\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/CircleImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 55
    const v1, 0x7f0e01f9

    const-string v2, "field \'tvName\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 56
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f9

    const-string v2, "field \'tvName\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvName:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0e0186

    const-string v2, "field \'tvServerCount\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 58
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0186

    const-string v2, "field \'tvServerCount\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvServerCount:Landroid/widget/TextView;

    .line 59
    const-string v1, "field \'tvAge\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 60
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvAge\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvAge:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0e018f

    const-string v2, "field \'tvOrder\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 62
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e018f

    const-string v2, "field \'tvOrder\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvOrder:Landroid/widget/TextView;

    .line 63
    new-instance v1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PersonAbilityActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f0e0187

    const-string v2, "field \'relPro\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 72
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0187

    const-string v2, "field \'relPro\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->relPro:Landroid/widget/RelativeLayout;

    .line 73
    new-instance v1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder$5;-><init>(Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PersonAbilityActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f0e018e

    const-string v2, "field \'tvTotalPrice\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 82
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e018e

    const-string v2, "field \'tvTotalPrice\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0e0185

    const-string v2, "field \'tvTagName\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 84
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0185

    const-string v2, "field \'tvTagName\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvTagName:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0e01f6

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 86
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder$6;-><init>(Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PersonAbilityActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/skill/PersonAbilityActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/skill/PersonAbilityActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/skill/PersonAbilityActivity;,"TT;"
    const/4 v0, 0x0

    .line 97
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 98
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    .line 99
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->containerLL:Landroid/widget/LinearLayout;

    .line 100
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->redDotView:Landroid/view/View;

    .line 101
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvServiceDesc:Landroid/widget/TextView;

    .line 102
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvPlayerDiscuss:Landroid/widget/TextView;

    .line 103
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvOtherAbility:Landroid/widget/TextView;

    .line 104
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvDescContent:Landroid/widget/TextView;

    .line 105
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvPrice:Landroid/widget/TextView;

    .line 106
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 107
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvName:Landroid/widget/TextView;

    .line 108
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvServerCount:Landroid/widget/TextView;

    .line 109
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvAge:Landroid/widget/TextView;

    .line 110
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvOrder:Landroid/widget/TextView;

    .line 111
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->relPro:Landroid/widget/RelativeLayout;

    .line 112
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvTotalPrice:Landroid/widget/TextView;

    .line 113
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;->tvTagName:Landroid/widget/TextView;

    .line 114
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/skill/PersonAbilityActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/skill/PersonAbilityActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/skill/PersonAbilityActivity;)V

    return-void
.end method
