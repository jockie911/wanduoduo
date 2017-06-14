.class public Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder;
.super Ljava/lang/Object;
.source "ActiviItemContentActivity$$ViewBinder.java"

# interfaces
.implements Lbutterknife/ButterKnife$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;",
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
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/lang/Object;)V
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
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder<TT;>;"
    .local p2, target:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;,"TT;"
    const v6, 0x7f0e00e2

    const v5, 0x7f0e00d0

    const v4, 0x7f0e00bc

    const v3, 0x7f0e00bb

    const v2, 0x7f0e00ba

    .line 11
    const-string v1, "field \'lvDiscuss\'"

    invoke-virtual {p1, p3, v3, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 12
    .local v0, view:Landroid/view/View;
    const-string v1, "field \'lvDiscuss\'"

    invoke-virtual {p1, v0, v3, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyListView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->lvDiscuss:Lcom/wanduoduo/widget/MyListView;

    .line 13
    const-string v1, "field \'ivRightTitleBar\' and method \'onClick\'"

    invoke-virtual {p1, p3, v6, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 14
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'ivRightTitleBar\'"

    invoke-virtual {p1, v0, v6, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    .line 15
    new-instance v1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder$1;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder$1;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder;Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const-string v1, "field \'refreshLayout\'"

    invoke-virtual {p1, p3, v2, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 24
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'refreshLayout\'"

    invoke-virtual {p1, v0, v2, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cjj/MaterialRefreshLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    .line 25
    const-string v1, "field \'etDisContent\'"

    invoke-virtual {p1, p3, v4, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 26
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'etDisContent\'"

    invoke-virtual {p1, v0, v4, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->etDisContent:Landroid/widget/EditText;

    .line 27
    const v1, 0x7f0e01f7

    const-string v2, "field \'ivAvctor\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 28
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f7

    const-string v2, "field \'ivAvctor\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/CircleImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 29
    const v1, 0x7f0e01f9

    const-string v2, "field \'tvName\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 30
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f9

    const-string v2, "field \'tvName\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvName:Landroid/widget/TextView;

    .line 31
    const v1, 0x7f0e00fe

    const-string v2, "field \'tvAge\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 32
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e00fe

    const-string v2, "field \'tvAge\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvAge:Landroid/widget/TextView;

    .line 33
    const v1, 0x7f0e01fc

    const-string v2, "field \'tvVisitTime\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 34
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fc

    const-string v2, "field \'tvVisitTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvVisitTime:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f0e01fd

    const-string v2, "field \'ivJianTou\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 36
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fd

    const-string v2, "field \'ivJianTou\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivJianTou:Landroid/widget/ImageView;

    .line 37
    const v1, 0x7f0e01fe

    const-string v2, "field \'vBottomLine\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 38
    .restart local v0       #view:Landroid/view/View;
    iput-object v0, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->vBottomLine:Landroid/view/View;

    .line 39
    const v1, 0x7f0e020c

    const-string v2, "field \'tvContent\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 40
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e020c

    const-string v2, "field \'tvContent\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvContent:Landroid/widget/TextView;

    .line 41
    const-string v1, "field \'mgvPic\'"

    invoke-virtual {p1, p3, v5, v1}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 42
    .restart local v0       #view:Landroid/view/View;
    const-string v1, "field \'mgvPic\'"

    invoke-virtual {p1, v0, v5, v1}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    .line 43
    const v1, 0x7f0e01e5

    const-string v2, "field \'ivPic\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 44
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01e5

    const-string v2, "field \'ivPic\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivPic:Landroid/widget/ImageView;

    .line 45
    const v1, 0x7f0e02af

    const-string v2, "field \'llMapLocation\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 46
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02af

    const-string v2, "field \'llMapLocation\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->llMapLocation:Landroid/widget/LinearLayout;

    .line 47
    const v1, 0x7f0e02b2

    const-string v2, "field \'tvZan\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 48
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02b2

    const-string v2, "field \'tvZan\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvZan:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0e0225

    const-string v2, "field \'tvDiscuss\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 50
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e0225

    const-string v2, "field \'tvDiscuss\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvDiscuss:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f0e01f6

    const-string v2, "field \'relPersonInfo\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 52
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01f6

    const-string v2, "field \'relPersonInfo\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->relPersonInfo:Landroid/widget/RelativeLayout;

    .line 53
    const v1, 0x7f0e01fb

    const-string v2, "field \'ivVipLevel\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 54
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fb

    const-string v2, "field \'ivVipLevel\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivVipLevel:Landroid/widget/ImageView;

    .line 55
    const v1, 0x7f0e02ae

    const-string v2, "field \'flPic\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 56
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02ae

    const-string v2, "field \'flPic\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->flPic:Landroid/widget/FrameLayout;

    .line 57
    const v1, 0x7f0e02b0

    const-string v2, "field \'tvLocationPlace\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 58
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02b0

    const-string v2, "field \'tvLocationPlace\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvLocationPlace:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f0e02b1

    const-string v2, "field \'tvReadCount\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 60
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02b1

    const-string v2, "field \'tvReadCount\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvReadCount:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0e01fa

    const-string v2, "field \'tvActiviTime\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 62
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e01fa

    const-string v2, "field \'tvActiviTime\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvActiviTime:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0e02b4

    const-string v2, "field \'mgvZan\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 64
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02b4

    const-string v2, "field \'mgvZan\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/widget/MyGridView;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->mgvZan:Lcom/wanduoduo/widget/MyGridView;

    .line 65
    const v1, 0x7f0e02b3

    const-string v2, "field \'llZan\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 66
    .restart local v0       #view:Landroid/view/View;
    const v1, 0x7f0e02b3

    const-string v2, "field \'llZan\'"

    invoke-virtual {p1, v0, v1, v2}, Lbutterknife/ButterKnife$Finder;->castView(Landroid/view/View;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->llZan:Landroid/widget/LinearLayout;

    .line 67
    const v1, 0x7f0e00bd

    const-string v2, "method \'onClick\'"

    invoke-virtual {p1, p3, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 68
    .restart local v0       #view:Landroid/view/View;
    new-instance v1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder$2;

    invoke-direct {v1, p0, p2}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder$2;-><init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder;Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)V

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
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder<TT;>;"
    check-cast p2, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/lang/Object;)V

    return-void
.end method

.method public unbind(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder<TT;>;"
    .local p1, target:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;,"TT;"
    const/4 v0, 0x0

    .line 79
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->lvDiscuss:Lcom/wanduoduo/widget/MyListView;

    .line 80
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivRightTitleBar:Landroid/widget/ImageView;

    .line 81
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->refreshLayout:Lcom/cjj/MaterialRefreshLayout;

    .line 82
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->etDisContent:Landroid/widget/EditText;

    .line 83
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivAvctor:Lcom/wanduoduo/widget/CircleImageView;

    .line 84
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvName:Landroid/widget/TextView;

    .line 85
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvAge:Landroid/widget/TextView;

    .line 86
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvVisitTime:Landroid/widget/TextView;

    .line 87
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivJianTou:Landroid/widget/ImageView;

    .line 88
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->vBottomLine:Landroid/view/View;

    .line 89
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvContent:Landroid/widget/TextView;

    .line 90
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->mgvPic:Lcom/wanduoduo/widget/MyGridView;

    .line 91
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivPic:Landroid/widget/ImageView;

    .line 92
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->llMapLocation:Landroid/widget/LinearLayout;

    .line 93
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvZan:Landroid/widget/TextView;

    .line 94
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvDiscuss:Landroid/widget/TextView;

    .line 95
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->relPersonInfo:Landroid/widget/RelativeLayout;

    .line 96
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->ivVipLevel:Landroid/widget/ImageView;

    .line 97
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->flPic:Landroid/widget/FrameLayout;

    .line 98
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvLocationPlace:Landroid/widget/TextView;

    .line 99
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvReadCount:Landroid/widget/TextView;

    .line 100
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->tvActiviTime:Landroid/widget/TextView;

    .line 101
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->mgvZan:Lcom/wanduoduo/widget/MyGridView;

    .line 102
    iput-object v0, p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->llZan:Landroid/widget/LinearLayout;

    .line 103
    return-void
.end method

.method public bridge synthetic unbind(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    .local p0, this:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder;,"Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder<TT;>;"
    check-cast p1, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$$ViewBinder;->unbind(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;)V

    return-void
.end method
