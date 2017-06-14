.class public Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder;
.super Ljava/lang/Object;
.source "AppointmentAdapter$ViewHolder$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;",
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
    .local p0, this:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;,"TT;"
    const v7, 0x7f0e00fe

    const v6, 0x7f0e00d8

    const v5, 0x7f0e00d6

    const v4, 0x7f0e00cf

    const v3, 0x7f0e00ce

    .line 11
    const v1, 0x7f0e01f7

    const-string v2, "field \'ivAvctor\'"

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

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 13
    const v1, 0x7f0e01f9

    const-string v2, "field \'tvName\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f9

    const-string v2, "field \'tvName\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 15
    const-string v1, "field \'tvAge\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvAge\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    .line 17
    const v1, 0x7f0e01fc

    const-string v2, "field \'tvVisitTime\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fc

    const-string v2, "field \'tvVisitTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    .line 19
    const v1, 0x7f0e01fd

    const-string v2, "field \'ivJianTou\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fd

    const-string v2, "field \'ivJianTou\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivJianTou:Landroid/widget/ImageView;

    .line 21
    const v1, 0x7f0e01fb

    const-string v2, "field \'ivVipLevel\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fb

    const-string v2, "field \'ivVipLevel\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    .line 23
    const v1, 0x7f0e01f6

    const-string v2, "field \'relPersonInfo\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f6

    const-string v2, "field \'relPersonInfo\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->relPersonInfo:Landroid/widget/RelativeLayout;

    .line 25
    const-string v1, "field \'tvItemTitle\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvItemTitle\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemTitle:Landroid/widget/TextView;

    .line 27
    const-string v1, "field \'tvItemDesc\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvItemDesc\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemDesc:Landroid/widget/TextView;

    .line 29
    const-string v1, "field \'tvitemTime\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvitemTime\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvitemTime:Landroid/widget/TextView;

    .line 31
    const-string v1, "field \'tvItemPlace\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvItemPlace\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemPlace:Landroid/widget/TextView;

    .line 33
    const v1, 0x7f0e02b6

    const-string v2, "field \'tvItemCreateTime\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02b6

    const-string v2, "field \'tvItemCreateTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemCreateTime:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f0e02b5

    const-string v2, "field \'ivItemPic\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02b5

    const-string v2, "field \'ivItemPic\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivItemPic:Landroid/widget/ImageView;

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
    .local p0, this:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;,"TT;"
    const/4 v0, 0x0

    .line 40
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 41
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 42
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    .line 43
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvVisitTime:Landroid/widget/TextView;

    .line 44
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivJianTou:Landroid/widget/ImageView;

    .line 45
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    .line 46
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->relPersonInfo:Landroid/widget/RelativeLayout;

    .line 47
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemTitle:Landroid/widget/TextView;

    .line 48
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemDesc:Landroid/widget/TextView;

    .line 49
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvitemTime:Landroid/widget/TextView;

    .line 50
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemPlace:Landroid/widget/TextView;

    .line 51
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->tvItemCreateTime:Landroid/widget/TextView;

    .line 52
    iput-object v0, p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;->ivItemPic:Landroid/widget/ImageView;

    .line 53
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder$$ViewBinder;->unbind(Lcom/wanduoduo/adapter/appoint/AppointmentAdapter$ViewHolder;)V

    return-void
.end method
