.class public Lio/rong/imkit/widget/RongPluginPager;
.super Ljava/lang/Object;
.source "RongPluginPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/RongPluginPager$PluginItemAdapter;,
        Lio/rong/imkit/widget/RongPluginPager$PluginViewPagerAdapter;
    }
.end annotation


# static fields
.field public static final PLUGIN_PER_PAGE:I = 0x8


# instance fields
.field private conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mIndicator:Landroid/widget/LinearLayout;

.field private mPageCount:I

.field private mSelectedPage:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Lio/rong/imlib/model/Conversation$ConversationType;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "conversationType"
    .parameter "viewGroup"

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lio/rong/imkit/widget/RongPluginPager$2;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/RongPluginPager$2;-><init>(Lio/rong/imkit/widget/RongPluginPager;)V

    iput-object v0, p0, Lio/rong/imkit/widget/RongPluginPager;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 36
    iput-object p1, p0, Lio/rong/imkit/widget/RongPluginPager;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 37
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/rong/imkit/widget/RongPluginPager;->initView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 38
    invoke-direct {p0, p2}, Lio/rong/imkit/widget/RongPluginPager;->initData(Landroid/view/ViewGroup;)V

    .line 39
    iget v0, p0, Lio/rong/imkit/widget/RongPluginPager;->mPageCount:I

    iget-object v1, p0, Lio/rong/imkit/widget/RongPluginPager;->mIndicator:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lio/rong/imkit/widget/RongPluginPager;->initIndicator(ILandroid/widget/LinearLayout;)V

    .line 40
    iget-object v0, p0, Lio/rong/imkit/widget/RongPluginPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 41
    return-void
.end method

.method static synthetic access$100(Lio/rong/imkit/widget/RongPluginPager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lio/rong/imkit/widget/RongPluginPager;->mSelectedPage:I

    return v0
.end method

.method static synthetic access$102(Lio/rong/imkit/widget/RongPluginPager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lio/rong/imkit/widget/RongPluginPager;->mSelectedPage:I

    return p1
.end method

.method static synthetic access$200(Lio/rong/imkit/widget/RongPluginPager;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lio/rong/imkit/widget/RongPluginPager;->onIndicatorChanged(II)V

    return-void
.end method

.method static synthetic access$300(Lio/rong/imkit/widget/RongPluginPager;)Lio/rong/imlib/model/Conversation$ConversationType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lio/rong/imkit/widget/RongPluginPager;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/imkit/widget/RongPluginPager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lio/rong/imkit/widget/RongPluginPager;->mPageCount:I

    return v0
.end method

.method static synthetic access$500(Lio/rong/imkit/widget/RongPluginPager;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lio/rong/imkit/widget/RongPluginPager;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private initData(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "viewGroup"

    .prologue
    .line 70
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/RongPluginPager;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->getRegisteredExtendProviderList(Lio/rong/imlib/model/Conversation$ConversationType;)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, extendProviders:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4100

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lio/rong/imkit/widget/RongPluginPager;->mPageCount:I

    .line 73
    iget-object v1, p0, Lio/rong/imkit/widget/RongPluginPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 74
    return-void
.end method

.method private initIndicator(ILandroid/widget/LinearLayout;)V
    .locals 6
    .parameter "pages"
    .parameter "indicator"

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 78
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, imageView:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 81
    const/16 v3, 0x14

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 82
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    sget v3, Lio/rong/imkit/R$drawable;->rc_indicator:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v2           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/4 v3, 0x2

    if-ge p1, v3, :cond_1

    .line 87
    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    :cond_1
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "context"
    .parameter "viewGroup"

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$layout;->rc_input_pager_layout:I

    invoke-virtual {v1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, view:Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->rc_view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lio/rong/imkit/widget/RongPluginPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 46
    sget v1, Lio/rong/imkit/R$id;->rc_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lio/rong/imkit/widget/RongPluginPager;->mIndicator:Landroid/widget/LinearLayout;

    .line 47
    iget-object v1, p0, Lio/rong/imkit/widget/RongPluginPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lio/rong/imkit/widget/RongPluginPager$PluginViewPagerAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/rong/imkit/widget/RongPluginPager$PluginViewPagerAdapter;-><init>(Lio/rong/imkit/widget/RongPluginPager;Lio/rong/imkit/widget/RongPluginPager$1;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 48
    iget-object v1, p0, Lio/rong/imkit/widget/RongPluginPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lio/rong/imkit/widget/RongPluginPager$1;

    invoke-direct {v2, p0}, Lio/rong/imkit/widget/RongPluginPager$1;-><init>(Lio/rong/imkit/widget/RongPluginPager;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 65
    iget-object v1, p0, Lio/rong/imkit/widget/RongPluginPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 66
    return-void
.end method

.method private onIndicatorChanged(II)V
    .locals 4
    .parameter "pre"
    .parameter "cur"

    .prologue
    .line 92
    iget-object v3, p0, Lio/rong/imkit/widget/RongPluginPager;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 93
    .local v0, count:I
    if-lez v0, :cond_1

    if-ge p1, v0, :cond_1

    if-ge p2, v0, :cond_1

    .line 94
    if-ltz p1, :cond_0

    .line 95
    iget-object v3, p0, Lio/rong/imkit/widget/RongPluginPager;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 96
    .local v2, preView:Landroid/widget/ImageView;
    sget v3, Lio/rong/imkit/R$drawable;->rc_indicator:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    .end local v2           #preView:Landroid/widget/ImageView;
    :cond_0
    if-ltz p2, :cond_1

    .line 99
    iget-object v3, p0, Lio/rong/imkit/widget/RongPluginPager;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 100
    .local v1, curView:Landroid/widget/ImageView;
    sget v3, Lio/rong/imkit/R$drawable;->rc_indicator_hover:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    .end local v1           #curView:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method
