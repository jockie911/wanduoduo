.class public Lcom/wanduoduo/fragment/ActiviFragment;
.super Lcom/wanduoduo/base/BaseFragment;
.source "ActiviFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private allContentActviFragment:Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

.field private city_code:Ljava/lang/String;

.field private followContentActiviFragment:Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

.field private popWindow:Landroid/widget/PopupWindow;

.field relLeft:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0218
        }
    .end annotation
.end field

.field tvLeft:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e0219
        }
    .end annotation
.end field

.field tvRight:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e021c
        }
    .end annotation
.end field

.field vLeft:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e021a
        }
    .end annotation
.end field

.field vRight:Landroid/view/View;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e021d
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseFragment;-><init>()V

    .line 46
    const-string v0, "0"

    iput-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->city_code:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/wanduoduo/fragment/ActiviFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->city_code:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/fragment/ActiviFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/wanduoduo/fragment/ActiviFragment;->city_code:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/fragment/ActiviFragment;)Lcom/wanduoduo/fragment/activi/ActiviContentFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->allContentActviFragment:Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/fragment/ActiviFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/ActiviFragment;->dealWithFragment()V

    return-void
.end method

.method private setTvColor(Landroid/widget/TextView;)V
    .locals 4
    .parameter "tv"

    .prologue
    const v3, 0x7f0d0021

    const/4 v2, 0x4

    .line 126
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/ActiviFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/wanduoduo/fragment/ActiviFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->vLeft:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->vRight:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/ActiviFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    return-void
.end method

.method private showPopWindow()V
    .locals 8

    .prologue
    const/high16 v6, 0x42c8

    .line 112
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/wanduoduo/fragment/ActiviFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/wanduoduo/fragment/ActiviFragment;->popWindow:Landroid/widget/PopupWindow;

    .line 113
    iget-object v3, p0, Lcom/wanduoduo/fragment/ActiviFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400c4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 114
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/wanduoduo/fragment/ActiviFragment;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 115
    iget-object v3, p0, Lcom/wanduoduo/fragment/ActiviFragment;->popWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/wanduoduo/fragment/ActiviFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 116
    iget-object v3, p0, Lcom/wanduoduo/fragment/ActiviFragment;->popWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/wanduoduo/fragment/ActiviFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 117
    iget-object v3, p0, Lcom/wanduoduo/fragment/ActiviFragment;->popWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 118
    const v3, 0x7f0e0303

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 119
    .local v1, tvMyCity:Landroid/widget/TextView;
    const v3, 0x7f0e0304

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    .local v0, tvAllCity:Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v3, p0, Lcom/wanduoduo/fragment/ActiviFragment;->popWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/wanduoduo/fragment/ActiviFragment;->vLeft:Landroid/view/View;

    iget-object v5, p0, Lcom/wanduoduo/fragment/ActiviFragment;->mContext:Landroid/content/Context;

    const/high16 v6, -0x3e38

    invoke-static {v5, v6}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/wanduoduo/fragment/ActiviFragment;->mContext:Landroid/content/Context;

    const/high16 v7, 0x4120

    invoke-static {v6, v7}, Lcom/wanduoduo/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 123
    return-void
.end method


# virtual methods
.method protected getFragment()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;-><init>(I)V

    iput-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->allContentActviFragment:Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

    .line 70
    new-instance v0, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;-><init>(I)V

    iput-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->followContentActiviFragment:Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

    .line 71
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->mFragment:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/fragment/ActiviFragment;->allContentActviFragment:Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->mFragment:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/fragment/ActiviFragment;->followContentActiviFragment:Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-super {p0}, Lcom/wanduoduo/base/BaseFragment;->getFragment()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected inflater(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 50
    const v0, 0x7f040073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->relLeft:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 56
    new-instance v0, Lcom/wanduoduo/fragment/ActiviFragment$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/fragment/ActiviFragment$1;-><init>(Lcom/wanduoduo/fragment/ActiviFragment;)V

    invoke-static {v0}, Lcom/wanduoduo/utils/BDLocationUtils;->start(Lcom/wanduoduo/utils/BDLocationUtils$LocationSuccessListener;)V

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e021e,
            0x7f0e0218,
            0x7f0e021b
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e021e

    if-ne v0, v1, :cond_1

    .line 79
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/fragment/ActiviFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/wanduoduo/ui/activi/ActiviPublishActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/wanduoduo/fragment/ActiviFragment;->startActivity(Landroid/content/Intent;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0218

    if-ne v0, v1, :cond_3

    .line 81
    iget v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->currentSelectedPosition:I

    iput v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->beforeSelectedPosition:I

    .line 82
    iget v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->currentSelectedPosition:I

    if-nez v0, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/wanduoduo/fragment/ActiviFragment;->showPopWindow()V

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->tvLeft:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/ActiviFragment;->setTvColor(Landroid/widget/TextView;)V

    .line 86
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->vLeft:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->tvLeft:Landroid/widget/TextView;

    const v1, 0x7f0d002d

    const v2, 0x7f0200dc

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableRight(Landroid/widget/TextView;II)V

    .line 88
    iput v3, p0, Lcom/wanduoduo/fragment/ActiviFragment;->currentSelectedPosition:I

    .line 89
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/ActiviFragment;->dealWithFragment()V

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e021b

    if-ne v0, v1, :cond_4

    .line 91
    iget v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->currentSelectedPosition:I

    iput v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->beforeSelectedPosition:I

    .line 92
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->tvRight:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wanduoduo/fragment/ActiviFragment;->setTvColor(Landroid/widget/TextView;)V

    .line 93
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->tvLeft:Landroid/widget/TextView;

    const v1, 0x7f0d0020

    const v2, 0x7f0200db

    invoke-static {v0, v1, v2}, Lcom/wanduoduo/utils/TvDrawableUtils;->setTvDrawableRight(Landroid/widget/TextView;II)V

    .line 94
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->vRight:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iput v4, p0, Lcom/wanduoduo/fragment/ActiviFragment;->currentSelectedPosition:I

    .line 96
    invoke-virtual {p0}, Lcom/wanduoduo/fragment/ActiviFragment;->dealWithFragment()V

    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0303

    if-ne v0, v1, :cond_6

    .line 98
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->allContentActviFragment:Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

    iget-object v1, p0, Lcom/wanduoduo/fragment/ActiviFragment;->city_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->setCity_code(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->allContentActviFragment:Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

    invoke-virtual {v0, v4}, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->setType(I)V

    .line 100
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->popWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->tvLeft:Landroid/widget/TextView;

    const-string v1, "\u540c\u57ce"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0304

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->allContentActviFragment:Lcom/wanduoduo/fragment/activi/ActiviContentFragment;

    invoke-virtual {v0, v3}, Lcom/wanduoduo/fragment/activi/ActiviContentFragment;->setType(I)V

    .line 105
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->popWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    .line 106
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 107
    :cond_7
    iget-object v0, p0, Lcom/wanduoduo/fragment/ActiviFragment;->tvLeft:Landroid/widget/TextView;

    const-string v1, "\u5168\u56fd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
