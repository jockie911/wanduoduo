.class public Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;
.super Ljava/lang/Object;
.source "InfoEditPersonCenterFragment$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;",
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
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;,"TT;"
    const v7, 0x7f0e0247

    const v6, 0x7f0e0246

    const v5, 0x7f0e0245

    const v4, 0x7f0e0199

    const v3, 0x7f0e00dc

    .line 11
    const v1, 0x7f0e0249

    const-string v2, "field \'mgvInfo\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0e0249

    const-string v2, "field \'mgvInfo\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvInfo:Lcom/wanduoduo/widget/MyGridView;

    .line 13
    const-string v1, "field \'tvEditInfo\' and method \'onClick\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvEditInfo\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvEditInfo:Landroid/widget/TextView;

    .line 15
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$1;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v1, 0x7f0e0260

    const-string v2, "field \'lvAddQuestion\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0260

    const-string v2, "field \'lvAddQuestion\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyListView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->lvAddQuestion:Lcom/wanduoduo/widget/MyListView;

    .line 25
    const v1, 0x7f0e025f

    const-string v2, "field \'relAddQuestion\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e025f

    const-string v2, "field \'relAddQuestion\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relAddQuestion:Landroid/widget/RelativeLayout;

    .line 27
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$2;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const-string v1, "field \'mgvPicWall\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'mgvPicWall\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvPicWall:Lcom/wanduoduo/widget/MyGridView;

    .line 37
    const-string v1, "field \'tvPicNum\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 38
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvPicNum\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvPicNum:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0e0254

    const-string v2, "field \'tvMyTag\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0254

    const-string v2, "field \'tvMyTag\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvMyTag:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0e0253

    const-string v2, "field \'relMyTag\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0253

    const-string v2, "field \'relMyTag\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relMyTag:Landroid/widget/RelativeLayout;

    .line 43
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$3;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f0e0256

    const-string v2, "field \'relSport\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 52
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0256

    const-string v2, "field \'relSport\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relSport:Landroid/widget/RelativeLayout;

    .line 53
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$4;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f0e025a

    const-string v2, "field \'relFood\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 62
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e025a

    const-string v2, "field \'relFood\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relFood:Landroid/widget/RelativeLayout;

    .line 63
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$5;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f0e025c

    const-string v2, "field \'relTravel\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 72
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e025c

    const-string v2, "field \'relTravel\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relTravel:Landroid/widget/RelativeLayout;

    .line 73
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$6;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f0e0258

    const-string v2, "field \'relSinger\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 82
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0258

    const-string v2, "field \'relSinger\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relSinger:Landroid/widget/RelativeLayout;

    .line 83
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$7;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$7;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f0e0252

    const-string v2, "field \'tvTitleMyTag\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 92
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0252

    const-string v2, "field \'tvTitleMyTag\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvTitleMyTag:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f0e0257

    const-string v2, "field \'tvSport\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 94
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0257

    const-string v2, "field \'tvSport\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvSport:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0e025b

    const-string v2, "field \'tvFood\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 96
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e025b

    const-string v2, "field \'tvFood\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvFood:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f0e025d

    const-string v2, "field \'tvTravel\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 98
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e025d

    const-string v2, "field \'tvTravel\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvTravel:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f0e0259

    const-string v2, "field \'tvSinger\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 100
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0259

    const-string v2, "field \'tvSinger\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvSinger:Landroid/widget/TextView;

    .line 101
    const v1, 0x7f0e0255

    const-string v2, "field \'tvMyIntrest\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 102
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0255

    const-string v2, "field \'tvMyIntrest\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvMyIntrest:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f0e024b

    const-string v2, "field \'tvPhone\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 104
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e024b

    const-string v2, "field \'tvPhone\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvPhone:Landroid/widget/TextView;

    .line 105
    const-string v1, "field \'tvVideo\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 106
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvVideo\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvVideo:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0e024e

    const-string v2, "field \'tvIdCard\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 108
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e024e

    const-string v2, "field \'tvIdCard\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvIdCard:Landroid/widget/TextView;

    .line 109
    const-string v1, "field \'tvSkill\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 110
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvSkill\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvSkill:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0e0248

    const-string v2, "field \'tvID\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 112
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0248

    const-string v2, "field \'tvID\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvID:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0e0251

    const-string v2, "field \'mgvGift\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 114
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0251

    const-string v2, "field \'mgvGift\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvGift:Lcom/wanduoduo/widget/MyGridView;

    .line 115
    const v1, 0x7f0e0250

    const-string v2, "field \'tvTitleMyGift\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 116
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0250

    const-string v2, "field \'tvTitleMyGift\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvTitleMyGift:Landroid/widget/TextView;

    .line 117
    const v1, 0x7f0e025e

    const-string v2, "field \'tvWenDa\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 118
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e025e

    const-string v2, "field \'tvWenDa\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvWenDa:Landroid/widget/TextView;

    .line 119
    const v1, 0x7f0e024a

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 120
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$8;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$8;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v1, 0x7f0e024c

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 129
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$9;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$9;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v1, 0x7f0e024d

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 138
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$10;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$10;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v1, 0x7f0e024f

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 147
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$11;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder$11;-><init>(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

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
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;,"TT;"
    const/4 v0, 0x0

    .line 158
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvInfo:Lcom/wanduoduo/widget/MyGridView;

    .line 159
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvEditInfo:Landroid/widget/TextView;

    .line 160
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->lvAddQuestion:Lcom/wanduoduo/widget/MyListView;

    .line 161
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relAddQuestion:Landroid/widget/RelativeLayout;

    .line 162
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvPicWall:Lcom/wanduoduo/widget/MyGridView;

    .line 163
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvPicNum:Landroid/widget/TextView;

    .line 164
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvMyTag:Landroid/widget/TextView;

    .line 165
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relMyTag:Landroid/widget/RelativeLayout;

    .line 166
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relSport:Landroid/widget/RelativeLayout;

    .line 167
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relFood:Landroid/widget/RelativeLayout;

    .line 168
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relTravel:Landroid/widget/RelativeLayout;

    .line 169
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->relSinger:Landroid/widget/RelativeLayout;

    .line 170
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvTitleMyTag:Landroid/widget/TextView;

    .line 171
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvSport:Landroid/widget/TextView;

    .line 172
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvFood:Landroid/widget/TextView;

    .line 173
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvTravel:Landroid/widget/TextView;

    .line 174
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvSinger:Landroid/widget/TextView;

    .line 175
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvMyIntrest:Landroid/widget/TextView;

    .line 176
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvPhone:Landroid/widget/TextView;

    .line 177
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvVideo:Landroid/widget/TextView;

    .line 178
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvIdCard:Landroid/widget/TextView;

    .line 179
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvSkill:Landroid/widget/TextView;

    .line 180
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvID:Landroid/widget/TextView;

    .line 181
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->mgvGift:Lcom/wanduoduo/widget/MyGridView;

    .line 182
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvTitleMyGift:Landroid/widget/TextView;

    .line 183
    iput-object v0, p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;->tvWenDa:Landroid/widget/TextView;

    .line 184
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/info/InfoEditPersonCenterFragment;)V

    return-void
.end method
