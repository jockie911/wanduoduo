.class public Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "OnLineChooseActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/online/OnLineChooseActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;,"Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;,"Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/online/OnLineChooseActivity;,"TT;"
    const v7, 0x7f0e0106

    const v6, 0x7f0e0102

    const v5, 0x7f0e0101

    const v4, 0x7f0e00fe

    const v3, 0x7f0e00fd

    .line 11
    const v1, 0x7f0e01ef

    const-string v2, "field \'tvRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0e01ef

    const-string v2, "field \'tvRightTitleBar\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v1, 0x7f0e015b

    const-string v2, "field \'tvSortNearby\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e015b

    const-string v2, "field \'tvSortNearby\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSortNearby:Landroid/widget/TextView;

    .line 23
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    const v1, 0x7f0e015c

    const-string v2, "field \'tvSortActivi\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e015c

    const-string v2, "field \'tvSortActivi\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSortActivi:Landroid/widget/TextView;

    .line 33
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v1, 0x7f0e015d

    const-string v2, "field \'tvSexAll\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e015d

    const-string v2, "field \'tvSexAll\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSexAll:Landroid/widget/TextView;

    .line 43
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const-string v1, "field \'tvPlace\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 52
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvPlace\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvPlace:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0e0161

    const-string v2, "field \'ivIsVideo\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 54
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0161

    const-string v2, "field \'ivIsVideo\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsVideo:Landroid/widget/ImageView;

    .line 55
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$5;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const-string v1, "field \'tvAge\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 64
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvAge\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvAge:Landroid/widget/TextView;

    .line 65
    const-string v1, "field \'tvHeight\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 66
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvHeight\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvHeight:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0e010a

    const-string v2, "field \'tvIncome\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 68
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e010a

    const-string v2, "field \'tvIncome\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvIncome:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0e0166

    const-string v2, "field \'ivIsSingle\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 70
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0166

    const-string v2, "field \'ivIsSingle\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsSingle:Landroid/widget/ImageView;

    .line 71
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$6;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f0e015f

    const-string v2, "field \'relFemale\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 80
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e015f

    const-string v2, "field \'relFemale\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relFemale:Landroid/widget/RelativeLayout;

    .line 81
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$7;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$7;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x7f0e015e

    const-string v2, "field \'relMale\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 90
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e015e

    const-string v2, "field \'relMale\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relMale:Landroid/widget/RelativeLayout;

    .line 91
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$8;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$8;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v1, 0x7f0e0162

    const-string v2, "field \'relGift\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 100
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0162

    const-string v2, "field \'relGift\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relGift:Landroid/widget/RelativeLayout;

    .line 101
    const v1, 0x7f0e0159

    const-string v2, "field \'tvNormalSelect\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 102
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0159

    const-string v2, "field \'tvNormalSelect\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvNormalSelect:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f0e0164

    const-string v2, "field \'tvHighSelect\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 104
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0164

    const-string v2, "field \'tvHighSelect\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvHighSelect:Landroid/widget/TextView;

    .line 105
    const-string v1, "field \'relAge\' and method \'onClick\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 106
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'relAge\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relAge:Landroid/widget/RelativeLayout;

    .line 107
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$9;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$9;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const-string v1, "field \'relHeigh\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 116
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'relHeigh\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relHeigh:Landroid/widget/RelativeLayout;

    .line 117
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$10;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$10;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v1, 0x7f0e0165

    const-string v2, "field \'relSingle\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 126
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0165

    const-string v2, "field \'relSingle\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relSingle:Landroid/widget/RelativeLayout;

    .line 127
    const v1, 0x7f0e0163

    const-string v2, "field \'ivIsGift\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 128
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0163

    const-string v2, "field \'ivIsGift\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsGift:Landroid/widget/ImageView;

    .line 129
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$11;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$11;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v1, 0x7f0e0105

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 138
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$12;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$12;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v1, 0x7f0e0109

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 147
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$13;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder$13;-><init>(Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;,"Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/online/OnLineChooseActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/online/OnLineChooseActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;,"Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/online/OnLineChooseActivity;,"TT;"
    const/4 v0, 0x0

    .line 158
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 159
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSortNearby:Landroid/widget/TextView;

    .line 160
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSortActivi:Landroid/widget/TextView;

    .line 161
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvSexAll:Landroid/widget/TextView;

    .line 162
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvPlace:Landroid/widget/TextView;

    .line 163
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsVideo:Landroid/widget/ImageView;

    .line 164
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvAge:Landroid/widget/TextView;

    .line 165
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvHeight:Landroid/widget/TextView;

    .line 166
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvIncome:Landroid/widget/TextView;

    .line 167
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsSingle:Landroid/widget/ImageView;

    .line 168
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relFemale:Landroid/widget/RelativeLayout;

    .line 169
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relMale:Landroid/widget/RelativeLayout;

    .line 170
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relGift:Landroid/widget/RelativeLayout;

    .line 171
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvNormalSelect:Landroid/widget/TextView;

    .line 172
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->tvHighSelect:Landroid/widget/TextView;

    .line 173
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relAge:Landroid/widget/RelativeLayout;

    .line 174
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relHeigh:Landroid/widget/RelativeLayout;

    .line 175
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->relSingle:Landroid/widget/RelativeLayout;

    .line 176
    iput-object v0, p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;->ivIsGift:Landroid/widget/ImageView;

    .line 177
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;,"Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/online/OnLineChooseActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/online/OnLineChooseActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/online/OnLineChooseActivity;)V

    return-void
.end method
