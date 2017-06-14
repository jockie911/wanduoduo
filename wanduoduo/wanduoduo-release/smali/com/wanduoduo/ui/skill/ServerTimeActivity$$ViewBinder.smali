.class public Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "ServerTimeActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/skill/ServerTimeActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/skill/ServerTimeActivity;,"TT;"
    const v7, 0x7f0e01d2

    const v6, 0x7f0e017d

    const v5, 0x7f0e017c

    const v4, 0x7f0e017b

    const v3, 0x7f0e017a

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

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'rootLlTime\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'rootLlTime\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->rootLlTime:Landroid/widget/LinearLayout;

    .line 23
    const v1, 0x7f0e03a3

    const-string v2, "field \'tvWeek2\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e03a3

    const-string v2, "field \'tvWeek2\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek2:Landroid/widget/TextView;

    .line 25
    const v1, 0x7f0e03a4

    const-string v2, "field \'tvWeek3\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e03a4

    const-string v2, "field \'tvWeek3\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek3:Landroid/widget/TextView;

    .line 27
    const v1, 0x7f0e03a5

    const-string v2, "field \'tvWeek4\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e03a5

    const-string v2, "field \'tvWeek4\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek4:Landroid/widget/TextView;

    .line 29
    const v1, 0x7f0e03a6

    const-string v2, "field \'tvWeek5\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e03a6

    const-string v2, "field \'tvWeek5\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek5:Landroid/widget/TextView;

    .line 31
    const v1, 0x7f0e03a7

    const-string v2, "field \'tvWeek6\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e03a7

    const-string v2, "field \'tvWeek6\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek6:Landroid/widget/TextView;

    .line 33
    const v1, 0x7f0e03a8

    const-string v2, "field \'tvWeek7\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e03a8

    const-string v2, "field \'tvWeek7\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek7:Landroid/widget/TextView;

    .line 35
    const-string v1, "field \'tvTime1\' and method \'onClick\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTime1\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime1:Landroid/widget/TextView;

    .line 37
    new-instance v1, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const-string v1, "field \'tvTime2\' and method \'onClick\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 46
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTime2\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime2:Landroid/widget/TextView;

    .line 47
    new-instance v1, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const-string v1, "field \'tvTime3\' and method \'onClick\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 56
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTime3\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime3:Landroid/widget/TextView;

    .line 57
    new-instance v1, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const-string v1, "field \'tvTime4\' and method \'onClick\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 66
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTime4\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime4:Landroid/widget/TextView;

    .line 67
    new-instance v1, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$5;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0e03a9

    const-string v2, "field \'tvTime5\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 76
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e03a9

    const-string v2, "field \'tvTime5\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime5:Landroid/widget/TextView;

    .line 77
    new-instance v1, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$6;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v1, 0x7f0e03aa

    const-string v2, "field \'tvTime6\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 86
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e03aa

    const-string v2, "field \'tvTime6\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime6:Landroid/widget/TextView;

    .line 87
    new-instance v1, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$7;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$7;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f0e03ab

    const-string v2, "field \'tvTime7\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 96
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e03ab

    const-string v2, "field \'tvTime7\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime7:Landroid/widget/TextView;

    .line 97
    new-instance v1, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$8;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$8;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f0e03ac

    const-string v2, "field \'gvTime\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 106
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e03ac

    const-string v2, "field \'gvTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->gvTime:Landroid/widget/GridView;

    .line 107
    const v1, 0x7f0e03ad

    const-string v2, "field \'cbAll\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 108
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e03ad

    const-string v2, "field \'cbAll\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbAll:Landroid/widget/CheckBox;

    .line 109
    new-instance v1, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$9;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$9;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v1, 0x7f0e01d4

    const-string v2, "field \'cbIsrepeat\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 118
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01d4

    const-string v2, "field \'cbIsrepeat\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsrepeat:Landroid/widget/CheckBox;

    .line 119
    new-instance v1, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$10;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$10;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v1, 0x7f0e00e1

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 128
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$11;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder$11;-><init>(Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/skill/ServerTimeActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/skill/ServerTimeActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/skill/ServerTimeActivity;,"TT;"
    const/4 v0, 0x0

    .line 139
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 140
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->rootLlTime:Landroid/widget/LinearLayout;

    .line 141
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek2:Landroid/widget/TextView;

    .line 142
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek3:Landroid/widget/TextView;

    .line 143
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek4:Landroid/widget/TextView;

    .line 144
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek5:Landroid/widget/TextView;

    .line 145
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek6:Landroid/widget/TextView;

    .line 146
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvWeek7:Landroid/widget/TextView;

    .line 147
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime1:Landroid/widget/TextView;

    .line 148
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime2:Landroid/widget/TextView;

    .line 149
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime3:Landroid/widget/TextView;

    .line 150
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime4:Landroid/widget/TextView;

    .line 151
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime5:Landroid/widget/TextView;

    .line 152
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime6:Landroid/widget/TextView;

    .line 153
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->tvTime7:Landroid/widget/TextView;

    .line 154
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->gvTime:Landroid/widget/GridView;

    .line 155
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbAll:Landroid/widget/CheckBox;

    .line 156
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;->cbIsrepeat:Landroid/widget/CheckBox;

    .line 157
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/skill/ServerTimeActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/skill/ServerTimeActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/skill/ServerTimeActivity;)V

    return-void
.end method
