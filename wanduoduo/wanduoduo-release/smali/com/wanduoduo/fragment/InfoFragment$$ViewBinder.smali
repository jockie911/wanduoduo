.class public Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;
.super Ljava/lang/Object;
.source "InfoFragment$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/fragment/InfoFragment;",
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
    .local p0, this:Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/InfoFragment;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/fragment/InfoFragment;,"TT;"
    const v6, 0x7f0e01fb

    const v5, 0x7f0e01f4

    const v4, 0x7f0e0122

    const v2, 0x7f0e0112

    const v3, 0x7f0e00fa

    .line 11
    const-string v1, "field \'tvMoney\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'tvMoney\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/InfoFragment;->tvMoney:Landroid/widget/TextView;

    .line 13
    const-string v1, "field \'tv_coin\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tv_coin\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/InfoFragment;->tv_coin:Landroid/widget/TextView;

    .line 15
    const v1, 0x7f0e023c

    const-string v2, "field \'tvConpous\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e023c

    const-string v2, "field \'tvConpous\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/InfoFragment;->tvConpous:Landroid/widget/TextView;

    .line 17
    const-string v1, "field \'civAvatar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'civAvatar\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/CircleImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/InfoFragment;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    .line 19
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$1;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const-string v1, "field \'tvNickname\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvNickname\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/InfoFragment;->tvNickname:Landroid/widget/TextView;

    .line 29
    const v1, 0x7f0e0285

    const-string v2, "field \'relAuthentticationSkill\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0285

    const-string v2, "field \'relAuthentticationSkill\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/InfoFragment;->relAuthentticationSkill:Landroid/widget/RelativeLayout;

    .line 31
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$2;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v1, 0x7f0e0283

    const-string v2, "field \'relAuthentticationVideo\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0283

    const-string v2, "field \'relAuthentticationVideo\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/fragment/InfoFragment;->relAuthentticationVideo:Landroid/widget/RelativeLayout;

    .line 41
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$3;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v1, 0x7f0e0240

    const-string v2, "field \'tvVip\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 50
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0240

    const-string v2, "field \'tvVip\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/InfoFragment;->tvVip:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f0e0288

    const-string v2, "field \'tvSkillOrCar\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 52
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0288

    const-string v2, "field \'tvSkillOrCar\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/InfoFragment;->tvSkillOrCar:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0e0286

    const-string v2, "field \'ivSkillOrCat\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 54
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0286

    const-string v2, "field \'ivSkillOrCat\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/InfoFragment;->ivSkillOrCat:Landroid/widget/ImageView;

    .line 55
    const-string v1, "field \'ivVipLevel\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 56
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivVipLevel\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/fragment/InfoFragment;->ivVipLevel:Landroid/widget/ImageView;

    .line 57
    const v1, 0x7f0e0243

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 58
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$4;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$4;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f0e0238

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 67
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$5;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$5;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v1, 0x7f0e0239

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 76
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$6;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$6;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v1, 0x7f0e01e7

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 85
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$7;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$7;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v1, 0x7f0e0282

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 94
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$8;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$8;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v1, 0x7f0e023e

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 103
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$9;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$9;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v1, 0x7f0e0241

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 112
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$10;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$10;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v1, 0x7f0e0242

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 121
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$11;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$11;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v1, 0x7f0e023f

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 130
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$12;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$12;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v1, 0x7f0e023d

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 139
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$13;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder$13;-><init>(Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;Lcom/wanduoduo/fragment/InfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/fragment/InfoFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/fragment/InfoFragment;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/fragment/InfoFragment;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/fragment/InfoFragment;,"TT;"
    const/4 v0, 0x0

    .line 150
    iput-object v0, p1, Lcom/wanduoduo/fragment/InfoFragment;->tvMoney:Landroid/widget/TextView;

    .line 151
    iput-object v0, p1, Lcom/wanduoduo/fragment/InfoFragment;->tv_coin:Landroid/widget/TextView;

    .line 152
    iput-object v0, p1, Lcom/wanduoduo/fragment/InfoFragment;->tvConpous:Landroid/widget/TextView;

    .line 153
    iput-object v0, p1, Lcom/wanduoduo/fragment/InfoFragment;->civAvatar:Lcom/wanduoduo/widget/CircleImageView;

    .line 154
    iput-object v0, p1, Lcom/wanduoduo/fragment/InfoFragment;->tvNickname:Landroid/widget/TextView;

    .line 155
    iput-object v0, p1, Lcom/wanduoduo/fragment/InfoFragment;->relAuthentticationSkill:Landroid/widget/RelativeLayout;

    .line 156
    iput-object v0, p1, Lcom/wanduoduo/fragment/InfoFragment;->relAuthentticationVideo:Landroid/widget/RelativeLayout;

    .line 157
    iput-object v0, p1, Lcom/wanduoduo/fragment/InfoFragment;->tvVip:Landroid/widget/TextView;

    .line 158
    iput-object v0, p1, Lcom/wanduoduo/fragment/InfoFragment;->tvSkillOrCar:Landroid/widget/TextView;

    .line 159
    iput-object v0, p1, Lcom/wanduoduo/fragment/InfoFragment;->ivSkillOrCat:Landroid/widget/ImageView;

    .line 160
    iput-object v0, p1, Lcom/wanduoduo/fragment/InfoFragment;->ivVipLevel:Landroid/widget/ImageView;

    .line 161
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;,"Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/fragment/InfoFragment;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/fragment/InfoFragment$$ViewBinder;->unbind(Lcom/wanduoduo/fragment/InfoFragment;)V

    return-void
.end method
