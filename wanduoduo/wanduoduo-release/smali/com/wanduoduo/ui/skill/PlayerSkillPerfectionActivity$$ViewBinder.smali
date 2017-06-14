.class public Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "PlayerSkillPerfectionActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;,"TT;"
    const v7, 0x7f0e0124

    const v6, 0x7f0e0113

    const v5, 0x7f0e0106

    const v4, 0x7f0e00e5

    const v3, 0x7f0e00bf

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

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const-string v1, "field \'mgvPhoto\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'mgvPhoto\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    .line 23
    const v1, 0x7f0e01be

    const-string v2, "field \'mgvVideo\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01be

    const-string v2, "field \'mgvVideo\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mgvVideo:Lcom/wanduoduo/widget/MyGridView;

    .line 25
    const v1, 0x7f0e01c0

    const-string v2, "field \'tvKind\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01c0

    const-string v2, "field \'tvKind\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvKind:Landroid/widget/TextView;

    .line 27
    const v1, 0x7f0e0168

    const-string v2, "field \'tvSubTitle\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0168

    const-string v2, "field \'tvSubTitle\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvSubTitle:Landroid/widget/TextView;

    .line 29
    const-string v1, "field \'tvPrice\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvPrice\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvPrice:Landroid/widget/TextView;

    .line 31
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvTime\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvTime:Landroid/widget/TextView;

    .line 33
    const-string v1, "field \'tvPlace\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvPlace\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvPlace:Landroid/widget/TextView;

    .line 35
    const-string v1, "field \'tvDesc\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvDesc\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvDesc:Landroid/widget/TextView;

    .line 37
    const v1, 0x7f0e01c6

    const-string v2, "field \'tvCertificate\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 38
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01c6

    const-string v2, "field \'tvCertificate\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvCertificate:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0e01c8

    const-string v2, "field \'tvDrink\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01c8

    const-string v2, "field \'tvDrink\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvDrink:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0e01c3

    const-string v2, "field \'tvCommunicate\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01c3

    const-string v2, "field \'tvCommunicate\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvCommunicate:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0e0171

    const-string v2, "field \'relTime\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 44
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0171

    const-string v2, "field \'relTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->relTime:Landroid/widget/RelativeLayout;

    .line 45
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f0e01bf

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 54
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v1, 0x7f0e0167

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 63
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$4;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f0e01c1

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 72
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$5;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v1, 0x7f0e01c2

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 81
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$6;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x7f0e0105

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 90
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$7;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$7;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f0e01c4

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 99
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$8;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$8;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f0e01c5

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 108
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$9;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$9;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v1, 0x7f0e01c7

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 117
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$10;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$10;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v1, 0x7f0e01c9

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 126
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$11;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$11;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v1, 0x7f0e01ca

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 135
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$12;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$12;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v1, 0x7f0e00e1

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 144
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$13;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder$13;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;,"TT;"
    const/4 v0, 0x0

    .line 155
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvRightTitleBar:Landroid/widget/TextView;

    .line 156
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mgvPhoto:Lcom/wanduoduo/widget/MyGridView;

    .line 157
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->mgvVideo:Lcom/wanduoduo/widget/MyGridView;

    .line 158
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvKind:Landroid/widget/TextView;

    .line 159
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvSubTitle:Landroid/widget/TextView;

    .line 160
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvPrice:Landroid/widget/TextView;

    .line 161
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvTime:Landroid/widget/TextView;

    .line 162
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvPlace:Landroid/widget/TextView;

    .line 163
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvDesc:Landroid/widget/TextView;

    .line 164
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvCertificate:Landroid/widget/TextView;

    .line 165
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvDrink:Landroid/widget/TextView;

    .line 166
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->tvCommunicate:Landroid/widget/TextView;

    .line 167
    iput-object v0, p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->relTime:Landroid/widget/RelativeLayout;

    .line 168
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;,"Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V

    return-void
.end method
