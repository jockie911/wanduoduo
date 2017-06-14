.class public Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "AppointmentItemDetailActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder;,"Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder;,"Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;,"TT;"
    const v7, 0x7f0e00d1

    const v6, 0x7f0e00d0

    const v5, 0x7f0e00cf

    const v4, 0x7f0e00ce

    const v3, 0x7f0e00cd

    .line 11
    const v1, 0x7f0e01f7

    const-string v2, "field \'ivAvctor\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0e01f7

    const-string v2, "field \'ivAvctor\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/CircleImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 13
    new-instance v1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder;Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v1, 0x7f0e01f9

    const-string v2, "field \'tvName\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f9

    const-string v2, "field \'tvName\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvName:Landroid/widget/TextView;

    .line 23
    const v1, 0x7f0e00fe

    const-string v2, "field \'tvAge\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e00fe

    const-string v2, "field \'tvAge\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvAge:Landroid/widget/TextView;

    .line 25
    const v1, 0x7f0e01fa

    const-string v2, "field \'tvActiviTime\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fa

    const-string v2, "field \'tvActiviTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvActiviTime:Landroid/widget/TextView;

    .line 27
    const v1, 0x7f0e01fd

    const-string v2, "field \'ivJianTou\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fd

    const-string v2, "field \'ivJianTou\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivJianTou:Landroid/widget/ImageView;

    .line 29
    const v1, 0x7f0e01fb

    const-string v2, "field \'ivVipLevel\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fb

    const-string v2, "field \'ivVipLevel\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivVipLevel:Landroid/widget/ImageView;

    .line 31
    const v1, 0x7f0e01f6

    const-string v2, "field \'relPersonInfo\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f6

    const-string v2, "field \'relPersonInfo\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->relPersonInfo:Landroid/widget/RelativeLayout;

    .line 33
    const v1, 0x7f0e00e2

    const-string v2, "field \'ivRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e00e2

    const-string v2, "field \'ivRightTitleBar\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    .line 35
    new-instance v1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder;Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-string v1, "field \'ivItemIcon\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 44
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivItemIcon\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivItemIcon:Landroid/widget/ImageView;

    .line 45
    const-string v1, "field \'tvItemTitle\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 46
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvItemTitle\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemTitle:Landroid/widget/TextView;

    .line 47
    const-string v1, "field \'tvItemDesc\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 48
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvItemDesc\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemDesc:Landroid/widget/TextView;

    .line 49
    const-string v1, "field \'mgvPic\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 50
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'mgvPic\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    .line 51
    const-string v1, "field \'tvItemOrder\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 52
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvItemOrder\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemOrder:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0e00d2

    const-string v2, "field \'tvItemSex\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 54
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e00d2

    const-string v2, "field \'tvItemSex\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemSex:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f0e00d4

    const-string v2, "field \'mgvTag\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 56
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e00d4

    const-string v2, "field \'mgvTag\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->mgvTag:Lcom/wanduoduo/widget/MyGridView;

    .line 57
    const v1, 0x7f0e00d3

    const-string v2, "field \'relTag\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 58
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e00d3

    const-string v2, "field \'relTag\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->relTag:Landroid/widget/RelativeLayout;

    .line 59
    const v1, 0x7f0e00d5

    const-string v2, "field \'ivItemTop\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 60
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e00d5

    const-string v2, "field \'ivItemTop\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivItemTop:Landroid/widget/ImageView;

    .line 61
    const v1, 0x7f0e00d7

    const-string v2, "field \'ivItemBottom\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 62
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e00d7

    const-string v2, "field \'ivItemBottom\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivItemBottom:Landroid/widget/ImageView;

    .line 63
    const v1, 0x7f0e00d6

    const-string v2, "field \'tvItemPlace\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 64
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e00d6

    const-string v2, "field \'tvItemPlace\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemPlace:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0e00d8

    const-string v2, "field \'tvItemTime\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 66
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e00d8

    const-string v2, "field \'tvItemTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemTime:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0e00d9

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 68
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder$3;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder$3;-><init>(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder;Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder;,"Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder;,"Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;,"TT;"
    const/4 v0, 0x0

    .line 79
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 80
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvName:Landroid/widget/TextView;

    .line 81
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvAge:Landroid/widget/TextView;

    .line 82
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvActiviTime:Landroid/widget/TextView;

    .line 83
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivJianTou:Landroid/widget/ImageView;

    .line 84
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivVipLevel:Landroid/widget/ImageView;

    .line 85
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->relPersonInfo:Landroid/widget/RelativeLayout;

    .line 86
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    .line 87
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivItemIcon:Landroid/widget/ImageView;

    .line 88
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemTitle:Landroid/widget/TextView;

    .line 89
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemDesc:Landroid/widget/TextView;

    .line 90
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    .line 91
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemOrder:Landroid/widget/TextView;

    .line 92
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemSex:Landroid/widget/TextView;

    .line 93
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->mgvTag:Lcom/wanduoduo/widget/MyGridView;

    .line 94
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->relTag:Landroid/widget/RelativeLayout;

    .line 95
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivItemTop:Landroid/widget/ImageView;

    .line 96
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->ivItemBottom:Landroid/widget/ImageView;

    .line 97
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemPlace:Landroid/widget/TextView;

    .line 98
    iput-object v0, p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;->tvItemTime:Landroid/widget/TextView;

    .line 99
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder;,"Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/appoint/AppointmentItemDetailActivity;)V

    return-void
.end method
