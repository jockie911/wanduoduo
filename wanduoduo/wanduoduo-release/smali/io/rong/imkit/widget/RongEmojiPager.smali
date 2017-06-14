.class public Lio/rong/imkit/widget/RongEmojiPager;
.super Ljava/lang/Object;
.source "RongEmojiPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/RongEmojiPager$EmoticonViewPagerAdapter;,
        Lio/rong/imkit/widget/RongEmojiPager$OnEmojiClickListener;
    }
.end annotation


# static fields
.field public static final EMOJI_PER_PAGE:I = 0x14


# instance fields
.field private clickListener:Lio/rong/imkit/widget/RongEmojiPager$OnEmojiClickListener;

.field private mContext:Landroid/content/Context;

.field private mIndicator:Landroid/widget/LinearLayout;

.field private mPageCount:I

.field private mSelectedPage:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "viewGroup"

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Lio/rong/imkit/widget/RongEmojiPager$2;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/RongEmojiPager$2;-><init>(Lio/rong/imkit/widget/RongEmojiPager;)V

    iput-object v1, p0, Lio/rong/imkit/widget/RongEmojiPager;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/widget/RongEmojiPager;->mContext:Landroid/content/Context;

    .line 33
    iget-object v1, p0, Lio/rong/imkit/widget/RongEmojiPager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$layout;->rc_input_pager_layout:I

    invoke-virtual {v1, v2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, view:Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->rc_view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lio/rong/imkit/widget/RongEmojiPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 35
    sget v1, Lio/rong/imkit/R$id;->rc_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lio/rong/imkit/widget/RongEmojiPager;->mIndicator:Landroid/widget/LinearLayout;

    .line 37
    invoke-static {}, Lio/rong/imkit/utils/AndroidEmoji;->getEmojiList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lio/rong/imkit/widget/RongEmojiPager;->mPageCount:I

    .line 38
    iget-object v1, p0, Lio/rong/imkit/widget/RongEmojiPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lio/rong/imkit/widget/RongEmojiPager$EmoticonViewPagerAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/rong/imkit/widget/RongEmojiPager$EmoticonViewPagerAdapter;-><init>(Lio/rong/imkit/widget/RongEmojiPager;Lio/rong/imkit/widget/RongEmojiPager$1;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 39
    iget-object v1, p0, Lio/rong/imkit/widget/RongEmojiPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lio/rong/imkit/widget/RongEmojiPager$1;

    invoke-direct {v2, p0}, Lio/rong/imkit/widget/RongEmojiPager$1;-><init>(Lio/rong/imkit/widget/RongEmojiPager;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 56
    iget-object v1, p0, Lio/rong/imkit/widget/RongEmojiPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 57
    iget-object v1, p0, Lio/rong/imkit/widget/RongEmojiPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 58
    iget v1, p0, Lio/rong/imkit/widget/RongEmojiPager;->mPageCount:I

    iget-object v2, p0, Lio/rong/imkit/widget/RongEmojiPager;->mIndicator:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v2}, Lio/rong/imkit/widget/RongEmojiPager;->initIndicator(ILandroid/widget/LinearLayout;)V

    .line 59
    const/4 v1, -0x1

    invoke-direct {p0, v1, v4}, Lio/rong/imkit/widget/RongEmojiPager;->onIndicatorChanged(II)V

    .line 60
    return-void
.end method

.method static synthetic access$100(Lio/rong/imkit/widget/RongEmojiPager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lio/rong/imkit/widget/RongEmojiPager;->mSelectedPage:I

    return v0
.end method

.method static synthetic access$102(Lio/rong/imkit/widget/RongEmojiPager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lio/rong/imkit/widget/RongEmojiPager;->mSelectedPage:I

    return p1
.end method

.method static synthetic access$200(Lio/rong/imkit/widget/RongEmojiPager;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lio/rong/imkit/widget/RongEmojiPager;->onIndicatorChanged(II)V

    return-void
.end method

.method static synthetic access$300(Lio/rong/imkit/widget/RongEmojiPager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lio/rong/imkit/widget/RongEmojiPager;->mPageCount:I

    return v0
.end method

.method static synthetic access$400(Lio/rong/imkit/widget/RongEmojiPager;)Lio/rong/imkit/widget/RongEmojiPager$OnEmojiClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/widget/RongEmojiPager;->clickListener:Lio/rong/imkit/widget/RongEmojiPager$OnEmojiClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lio/rong/imkit/widget/RongEmojiPager;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/widget/RongEmojiPager;->mIndicator:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lio/rong/imkit/widget/RongEmojiPager;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/widget/RongEmojiPager;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lio/rong/imkit/widget/RongEmojiPager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lio/rong/imkit/widget/RongEmojiPager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initIndicator(ILandroid/widget/LinearLayout;)V
    .locals 6
    .parameter "pages"
    .parameter "indicator"

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 136
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 137
    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lio/rong/imkit/widget/RongEmojiPager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, imageView:Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 140
    const/16 v3, 0x14

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    sget v3, Lio/rong/imkit/R$drawable;->rc_indicator:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v2           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private onIndicatorChanged(II)V
    .locals 4
    .parameter "pre"
    .parameter "cur"

    .prologue
    .line 148
    iget-object v3, p0, Lio/rong/imkit/widget/RongEmojiPager;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 149
    .local v0, count:I
    if-lez v0, :cond_1

    if-ge p1, v0, :cond_1

    if-ge p2, v0, :cond_1

    .line 150
    if-ltz p1, :cond_0

    .line 151
    iget-object v3, p0, Lio/rong/imkit/widget/RongEmojiPager;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 152
    .local v2, preView:Landroid/widget/ImageView;
    sget v3, Lio/rong/imkit/R$drawable;->rc_indicator:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    .end local v2           #preView:Landroid/widget/ImageView;
    :cond_0
    if-ltz p2, :cond_1

    .line 155
    iget-object v3, p0, Lio/rong/imkit/widget/RongEmojiPager;->mIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 156
    .local v1, curView:Landroid/widget/ImageView;
    sget v3, Lio/rong/imkit/R$drawable;->rc_indicator_hover:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    .end local v1           #curView:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method


# virtual methods
.method public setOnEmojiClickListener(Lio/rong/imkit/widget/RongEmojiPager$OnEmojiClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 93
    iput-object p1, p0, Lio/rong/imkit/widget/RongEmojiPager;->clickListener:Lio/rong/imkit/widget/RongEmojiPager$OnEmojiClickListener;

    .line 94
    return-void
.end method
