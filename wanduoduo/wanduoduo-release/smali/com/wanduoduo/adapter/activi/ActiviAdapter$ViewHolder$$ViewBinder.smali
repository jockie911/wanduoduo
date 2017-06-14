.class public Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder;
.super Ljava/lang/Object;
.source "ActiviAdapter$ViewHolder$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;",
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
    .local p0, this:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;,"TT;"
    const v7, 0x7f0e01f6

    const v6, 0x7f0e01e5

    const v5, 0x7f0e00fe

    const v4, 0x7f0e00d5

    const v3, 0x7f0e00d0

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

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

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

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 15
    const-string v1, "field \'tvAge\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 16
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'tvAge\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    .line 17
    const v1, 0x7f0e01fd

    const-string v2, "field \'ivJianTou\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 18
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fd

    const-string v2, "field \'ivJianTou\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivJianTou:Landroid/widget/ImageView;

    .line 19
    const v1, 0x7f0e01fe

    const-string v2, "field \'vBottomLine\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 20
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->vBottomLine:Landroid/view/View;

    .line 21
    const v1, 0x7f0e020c

    const-string v2, "field \'tvContent\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 22
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e020c

    const-string v2, "field \'tvContent\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 23
    const-string v1, "field \'mgvPic\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'mgvPic\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    .line 25
    const-string v1, "field \'ivPic\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivPic\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivPic:Landroid/widget/ImageView;

    .line 27
    const v1, 0x7f0e02af

    const-string v2, "field \'llMapLocation\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02af

    const-string v2, "field \'llMapLocation\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->llMapLocation:Landroid/widget/LinearLayout;

    .line 29
    const v1, 0x7f0e02b2

    const-string v2, "field \'tvZan\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02b2

    const-string v2, "field \'tvZan\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvZan:Landroid/widget/TextView;

    .line 31
    const v1, 0x7f0e0225

    const-string v2, "field \'tvDiscuss\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0225

    const-string v2, "field \'tvDiscuss\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvDiscuss:Landroid/widget/TextView;

    .line 33
    const-string v1, "field \'relPersonInfo\'"

    invoke-virtual {p1, p3, v7, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'relPersonInfo\'"

    invoke-virtual {p1, v0, v7, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->relPersonInfo:Landroid/widget/RelativeLayout;

    .line 35
    const v1, 0x7f0e01fb

    const-string v2, "field \'ivVipLevel\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fb

    const-string v2, "field \'ivVipLevel\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    .line 37
    const v1, 0x7f0e02ae

    const-string v2, "field \'flPic\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 38
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02ae

    const-string v2, "field \'flPic\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->flPic:Landroid/widget/FrameLayout;

    .line 39
    const v1, 0x7f0e02b0

    const-string v2, "field \'tvLocationPlace\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02b0

    const-string v2, "field \'tvLocationPlace\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvLocationPlace:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0e02b1

    const-string v2, "field \'tvReadCount\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02b1

    const-string v2, "field \'tvReadCount\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvReadCount:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0e01fa

    const-string v2, "field \'tvActiviTime\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 44
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fa

    const-string v2, "field \'tvActiviTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvActiviTime:Landroid/widget/TextView;

    .line 45
    const v1, 0x7f0e02ac

    const-string v2, "field \'relItemTop\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 46
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02ac

    const-string v2, "field \'relItemTop\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->relItemTop:Landroid/widget/RelativeLayout;

    .line 47
    const v1, 0x7f0e02ad

    const-string v2, "field \'tvItemTop\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 48
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02ad

    const-string v2, "field \'tvItemTop\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvItemTop:Landroid/widget/TextView;

    .line 49
    const-string v1, "field \'ivItemTop\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 50
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivItemTop\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivItemTop:Landroid/widget/ImageView;

    .line 51
    return-void
.end method

.method public bridge synthetic bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;,"TT;"
    const/4 v0, 0x0

    .line 54
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 55
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 56
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvAge:Landroid/widget/TextView;

    .line 57
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivJianTou:Landroid/widget/ImageView;

    .line 58
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->vBottomLine:Landroid/view/View;

    .line 59
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 60
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    .line 61
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivPic:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->llMapLocation:Landroid/widget/LinearLayout;

    .line 63
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvZan:Landroid/widget/TextView;

    .line 64
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvDiscuss:Landroid/widget/TextView;

    .line 65
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->relPersonInfo:Landroid/widget/RelativeLayout;

    .line 66
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivVipLevel:Landroid/widget/ImageView;

    .line 67
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->flPic:Landroid/widget/FrameLayout;

    .line 68
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvLocationPlace:Landroid/widget/TextView;

    .line 69
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvReadCount:Landroid/widget/TextView;

    .line 70
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvActiviTime:Landroid/widget/TextView;

    .line 71
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->relItemTop:Landroid/widget/RelativeLayout;

    .line 72
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->tvItemTop:Landroid/widget/TextView;

    .line 73
    iput-object v0, p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;->ivItemTop:Landroid/widget/ImageView;

    .line 74
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder;,"Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder$$ViewBinder;->unbind(Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;)V

    return-void
.end method
