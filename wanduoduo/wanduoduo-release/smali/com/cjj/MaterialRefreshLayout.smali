.class public Lcom/cjj/MaterialRefreshLayout;
.super Landroid/widget/FrameLayout;
.source "MaterialRefreshLayout.java"


# static fields
.field public static final Tag:Ljava/lang/String; = "cjj_log"


# instance fields
.field private BIG_PROGRESS_SIZE:I

.field private DEFAULT_HEAD_HEIGHT:I

.field private DEFAULT_PROGRESS_SIZE:I

.field private DEFAULT_WAVE_HEIGHT:I

.field private HIGHER_WAVE_HEIGHT:I

.field private PROGRESS_STOKE_WIDTH:I

.field private colorSchemeColors:[I

.field private colorsId:I

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private hIGHER_HEAD_HEIGHT:I

.field private headHeight:F

.field private isLoadMore:Z

.field private isLoadMoreing:Z

.field private isOverlay:Z

.field protected isRefreshing:Z

.field private isShowWave:Z

.field private mChildView:Landroid/view/View;

.field private mCurrentY:F

.field protected mHeadHeight:F

.field protected mHeadLayout:Landroid/widget/FrameLayout;

.field private mTouchY:F

.field protected mWaveHeight:F

.field private materialFoodView:Lcom/cjj/MaterialFoodView;

.field private materialHeadView:Lcom/cjj/MaterialHeadView;

.field private progressBg:I

.field private progressMax:I

.field private progressSize:I

.field private progressSizeType:I

.field private progressTextColor:I

.field private progressValue:I

.field private refreshListener:Lcom/cjj/MaterialRefreshListener;

.field private showArrow:Z

.field private showProgressBg:Z

.field private textType:I

.field private waveColor:I

.field private waveHeight:F

.field private waveType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cjj/MaterialRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cjj/MaterialRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/16 v0, 0x8c

    iput v0, p0, Lcom/cjj/MaterialRefreshLayout;->DEFAULT_WAVE_HEIGHT:I

    .line 35
    const/16 v0, 0xb4

    iput v0, p0, Lcom/cjj/MaterialRefreshLayout;->HIGHER_WAVE_HEIGHT:I

    .line 37
    const/16 v0, 0x46

    iput v0, p0, Lcom/cjj/MaterialRefreshLayout;->DEFAULT_HEAD_HEIGHT:I

    .line 39
    const/16 v0, 0x64

    iput v0, p0, Lcom/cjj/MaterialRefreshLayout;->hIGHER_HEAD_HEIGHT:I

    .line 41
    const/16 v0, 0x32

    iput v0, p0, Lcom/cjj/MaterialRefreshLayout;->DEFAULT_PROGRESS_SIZE:I

    .line 43
    const/16 v0, 0x3c

    iput v0, p0, Lcom/cjj/MaterialRefreshLayout;->BIG_PROGRESS_SIZE:I

    .line 45
    const/4 v0, 0x3

    iput v0, p0, Lcom/cjj/MaterialRefreshLayout;->PROGRESS_STOKE_WIDTH:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/cjj/MaterialRefreshLayout;->progressSize:I

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/cjj/MaterialRefreshLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/cjj/MaterialRefreshLayout;)Lcom/cjj/MaterialFoodView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cjj/MaterialRefreshLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/cjj/MaterialRefreshLayout;->isLoadMoreing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/cjj/MaterialRefreshLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/cjj/MaterialRefreshLayout;->isLoadMoreing:Z

    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defstyleAttr"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/cjj/MaterialRefreshLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/cjj/MaterialRefreshLayout;->getChildCount()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 116
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can only have one child widget"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_1
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x4120

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/cjj/MaterialRefreshLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 122
    sget-object v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 123
    .local v0, t:Landroid/content/res/TypedArray;
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_overlay:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cjj/MaterialRefreshLayout;->isOverlay:Z

    .line 125
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_wave_height_type:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->waveType:I

    .line 126
    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->waveType:I

    if-nez v1, :cond_2

    .line 127
    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->DEFAULT_HEAD_HEIGHT:I

    int-to-float v1, v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->headHeight:F

    .line 128
    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->DEFAULT_WAVE_HEIGHT:I

    int-to-float v1, v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->waveHeight:F

    .line 129
    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->DEFAULT_HEAD_HEIGHT:I

    sput v1, Lcom/cjj/MaterialWaveView;->DefaulHeadHeight:I

    .line 130
    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->DEFAULT_WAVE_HEIGHT:I

    sput v1, Lcom/cjj/MaterialWaveView;->DefaulWaveHeight:I

    .line 137
    :goto_1
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_wave_color:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->waveColor:I

    .line 138
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_wave_show:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cjj/MaterialRefreshLayout;->isShowWave:Z

    .line 141
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_progress_colors:I

    sget v2, Lcom/cjj/R$array;->material_colors:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->colorsId:I

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/cjj/MaterialRefreshLayout;->colorsId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/cjj/MaterialRefreshLayout;->colorSchemeColors:[I

    .line 143
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_progress_show_arrow:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cjj/MaterialRefreshLayout;->showArrow:Z

    .line 144
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_progress_text_visibility:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->textType:I

    .line 145
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_progress_text_color:I

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->progressTextColor:I

    .line 146
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_progress_value:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->progressValue:I

    .line 147
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_progress_max_value:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->progressMax:I

    .line 148
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_progress_show_circle_backgroud:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cjj/MaterialRefreshLayout;->showProgressBg:Z

    .line 149
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_progress_backgroud_color:I

    const v2, -0x50506

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->progressBg:I

    .line 150
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_progress_size_type:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->progressSizeType:I

    .line 151
    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->progressSizeType:I

    if-nez v1, :cond_3

    .line 153
    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->DEFAULT_PROGRESS_SIZE:I

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->progressSize:I

    .line 157
    :goto_2
    sget v1, Lcom/cjj/R$styleable;->MaterialRefreshLayout_isLoadMore:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cjj/MaterialRefreshLayout;->isLoadMore:Z

    goto/16 :goto_0

    .line 132
    :cond_2
    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->hIGHER_HEAD_HEIGHT:I

    int-to-float v1, v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->headHeight:F

    .line 133
    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->HIGHER_WAVE_HEIGHT:I

    int-to-float v1, v1

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->waveHeight:F

    .line 134
    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->hIGHER_HEAD_HEIGHT:I

    sput v1, Lcom/cjj/MaterialWaveView;->DefaulHeadHeight:I

    .line 135
    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->HIGHER_WAVE_HEIGHT:I

    sput v1, Lcom/cjj/MaterialWaveView;->DefaulWaveHeight:I

    goto/16 :goto_1

    .line 155
    :cond_3
    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->BIG_PROGRESS_SIZE:I

    iput v1, p0, Lcom/cjj/MaterialRefreshLayout;->progressSize:I

    goto :goto_2
.end method

.method private soveLoadMoreLogic()V
    .locals 2

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cjj/MaterialRefreshLayout;->isLoadMoreing:Z

    .line 249
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cjj/MaterialFoodView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    invoke-virtual {v0, p0}, Lcom/cjj/MaterialFoodView;->onBegin(Lcom/cjj/MaterialRefreshLayout;)V

    .line 251
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    invoke-virtual {v0, p0}, Lcom/cjj/MaterialFoodView;->onRefreshing(Lcom/cjj/MaterialRefreshLayout;)V

    .line 252
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->refreshListener:Lcom/cjj/MaterialRefreshListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->refreshListener:Lcom/cjj/MaterialRefreshListener;

    invoke-virtual {v0, p0}, Lcom/cjj/MaterialRefreshListener;->onRefreshLoadMore(Lcom/cjj/MaterialRefreshLayout;)V

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public autoRefresh()V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/cjj/MaterialRefreshLayout;->updateListener()V

    .line 320
    iget-boolean v0, p0, Lcom/cjj/MaterialRefreshLayout;->isOverlay:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadHeight:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 324
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    iget v1, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadHeight:F

    iget-object v2, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v1, v2}, Lcom/cjj/MaterialRefreshLayout;->createAnimatorTranslationY(Landroid/view/View;FLandroid/widget/FrameLayout;)V

    goto :goto_0
.end method

.method public autoRefreshLoadMore()V
    .locals 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/cjj/MaterialRefreshLayout;->isLoadMore:Z

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/cjj/MaterialRefreshLayout;->soveLoadMoreLogic()V

    .line 340
    return-void

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must  setLoadMore ture"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canChildScrollDown()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 435
    iget-object v2, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v4

    .line 438
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v2, v5, :cond_5

    .line 439
    iget-object v2, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/AbsListView;

    if-eqz v2, :cond_3

    .line 440
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 441
    .local v0, absListView:Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 443
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 444
    .local v1, lastChildBottom:I
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v5, v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getMeasuredHeight()I

    move-result v2

    if-gt v1, v2, :cond_2

    move v2, v3

    :goto_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 451
    .end local v0           #absListView:Landroid/widget/AbsListView;
    .end local v1           #lastChildBottom:I
    :cond_3
    iget-object v2, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-lez v2, :cond_0

    :cond_4
    move v4, v3

    goto :goto_0

    .line 454
    :cond_5
    iget-object v2, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    goto :goto_0
.end method

.method public canChildScrollUp()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 417
    iget-object v3, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v2

    .line 420
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_6

    .line 421
    iget-object v3, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/AbsListView;

    if-eqz v3, :cond_4

    .line 422
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 423
    .local v0, absListView:Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 424
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 425
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    if-ge v3, v4, :cond_3

    :cond_2
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 427
    .end local v0           #absListView:Landroid/widget/AbsListView;
    :cond_4
    iget-object v3, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    if-lez v3, :cond_0

    :cond_5
    move v2, v1

    goto :goto_0

    .line 430
    :cond_6
    iget-object v1, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    goto :goto_0
.end method

.method public createAnimatorTranslationY(Landroid/view/View;FLandroid/widget/FrameLayout;)V
    .locals 4
    .parameter "v"
    .parameter "h"
    .parameter "fl"

    .prologue
    .line 397
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 398
    .local v0, viewPropertyAnimatorCompat:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 399
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 400
    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 401
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 402
    new-instance v1, Lcom/cjj/MaterialRefreshLayout$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/cjj/MaterialRefreshLayout$1;-><init>(Lcom/cjj/MaterialRefreshLayout;Landroid/view/View;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 410
    return-void
.end method

.method public finishRefresh()V
    .locals 1

    .prologue
    .line 489
    new-instance v0, Lcom/cjj/MaterialRefreshLayout$2;

    invoke-direct {v0, p0}, Lcom/cjj/MaterialRefreshLayout$2;-><init>(Lcom/cjj/MaterialRefreshLayout;)V

    invoke-virtual {p0, v0}, Lcom/cjj/MaterialRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 495
    return-void
.end method

.method public finishRefreshLoadMore()V
    .locals 1

    .prologue
    .line 499
    new-instance v0, Lcom/cjj/MaterialRefreshLayout$3;

    invoke-direct {v0, p0}, Lcom/cjj/MaterialRefreshLayout$3;-><init>(Lcom/cjj/MaterialRefreshLayout;)V

    invoke-virtual {p0, v0}, Lcom/cjj/MaterialRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 509
    return-void
.end method

.method public finishRefreshing()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 466
    iget-object v1, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 468
    .local v0, viewPropertyAnimatorCompat:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 469
    iget-object v1, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->y(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 470
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 471
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 472
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 474
    iget-object v1, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    invoke-virtual {v1, p0}, Lcom/cjj/MaterialHeadView;->onComlete(Lcom/cjj/MaterialRefreshLayout;)V

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/cjj/MaterialRefreshLayout;->refreshListener:Lcom/cjj/MaterialRefreshListener;

    if-eqz v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/cjj/MaterialRefreshLayout;->refreshListener:Lcom/cjj/MaterialRefreshListener;

    invoke-virtual {v1}, Lcom/cjj/MaterialRefreshListener;->onfinish()V

    .line 482
    .end local v0           #viewPropertyAnimatorCompat:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_1
    iput-boolean v4, p0, Lcom/cjj/MaterialRefreshLayout;->isRefreshing:Z

    .line 483
    iput v4, p0, Lcom/cjj/MaterialRefreshLayout;->progressValue:I

    .line 484
    invoke-virtual {p0, v4}, Lcom/cjj/MaterialRefreshLayout;->setProgressValue(I)V

    .line 485
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 163
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 165
    invoke-virtual {p0}, Lcom/cjj/MaterialRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, headViewLayout:Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x30

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 170
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iput-object v1, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    .line 174
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Lcom/cjj/MaterialRefreshLayout;->addView(Landroid/view/View;)V

    .line 176
    invoke-virtual {p0, v6}, Lcom/cjj/MaterialRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    .line 178
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 214
    :goto_0
    return-void

    .line 182
    :cond_0
    iget v4, p0, Lcom/cjj/MaterialRefreshLayout;->waveHeight:F

    invoke-static {v0, v4}, Lcom/cjj/Util;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/cjj/MaterialRefreshLayout;->setWaveHeight(F)V

    .line 183
    iget v4, p0, Lcom/cjj/MaterialRefreshLayout;->headHeight:F

    invoke-static {v0, v4}, Lcom/cjj/Util;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lcom/cjj/MaterialRefreshLayout;->setHeaderHeight(F)V

    .line 185
    new-instance v4, Lcom/cjj/MaterialHeadView;

    invoke-direct {v4, v0}, Lcom/cjj/MaterialHeadView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    .line 186
    iget-object v6, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    iget-boolean v4, p0, Lcom/cjj/MaterialRefreshLayout;->isShowWave:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/cjj/MaterialRefreshLayout;->waveColor:I

    :goto_1
    invoke-virtual {v6, v4}, Lcom/cjj/MaterialHeadView;->setWaveColor(I)V

    .line 187
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    iget-boolean v6, p0, Lcom/cjj/MaterialRefreshLayout;->showArrow:Z

    invoke-virtual {v4, v6}, Lcom/cjj/MaterialHeadView;->showProgressArrow(Z)V

    .line 188
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    iget v6, p0, Lcom/cjj/MaterialRefreshLayout;->progressSize:I

    invoke-virtual {v4, v6}, Lcom/cjj/MaterialHeadView;->setProgressSize(I)V

    .line 189
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    iget-object v6, p0, Lcom/cjj/MaterialRefreshLayout;->colorSchemeColors:[I

    invoke-virtual {v4, v6}, Lcom/cjj/MaterialHeadView;->setProgressColors([I)V

    .line 190
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    iget v6, p0, Lcom/cjj/MaterialRefreshLayout;->PROGRESS_STOKE_WIDTH:I

    invoke-virtual {v4, v6}, Lcom/cjj/MaterialHeadView;->setProgressStokeWidth(I)V

    .line 191
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    iget v6, p0, Lcom/cjj/MaterialRefreshLayout;->textType:I

    invoke-virtual {v4, v6}, Lcom/cjj/MaterialHeadView;->setTextType(I)V

    .line 192
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    iget v6, p0, Lcom/cjj/MaterialRefreshLayout;->progressTextColor:I

    invoke-virtual {v4, v6}, Lcom/cjj/MaterialHeadView;->setProgressTextColor(I)V

    .line 193
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    iget v6, p0, Lcom/cjj/MaterialRefreshLayout;->progressValue:I

    invoke-virtual {v4, v6}, Lcom/cjj/MaterialHeadView;->setProgressValue(I)V

    .line 194
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    iget v6, p0, Lcom/cjj/MaterialRefreshLayout;->progressMax:I

    invoke-virtual {v4, v6}, Lcom/cjj/MaterialHeadView;->setProgressValueMax(I)V

    .line 195
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    iget-boolean v6, p0, Lcom/cjj/MaterialRefreshLayout;->showProgressBg:Z

    invoke-virtual {v4, v6}, Lcom/cjj/MaterialHeadView;->setIsProgressBg(Z)V

    .line 196
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    iget v6, p0, Lcom/cjj/MaterialRefreshLayout;->progressBg:I

    invoke-virtual {v4, v6}, Lcom/cjj/MaterialHeadView;->setProgressBg(I)V

    .line 197
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    invoke-virtual {p0, v4}, Lcom/cjj/MaterialRefreshLayout;->setHeaderView(Landroid/view/View;)V

    .line 199
    new-instance v4, Lcom/cjj/MaterialFoodView;

    invoke-direct {v4, v0}, Lcom/cjj/MaterialFoodView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    .line 200
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/cjj/MaterialRefreshLayout;->hIGHER_HEAD_HEIGHT:I

    int-to-float v4, v4

    invoke-static {v0, v4}, Lcom/cjj/Util;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v3, layoutParams2:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x50

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 202
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    invoke-virtual {v4, v3}, Lcom/cjj/MaterialFoodView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    iget-boolean v5, p0, Lcom/cjj/MaterialRefreshLayout;->showArrow:Z

    invoke-virtual {v4, v5}, Lcom/cjj/MaterialFoodView;->showProgressArrow(Z)V

    .line 204
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    iget v5, p0, Lcom/cjj/MaterialRefreshLayout;->progressSize:I

    invoke-virtual {v4, v5}, Lcom/cjj/MaterialFoodView;->setProgressSize(I)V

    .line 205
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    iget-object v5, p0, Lcom/cjj/MaterialRefreshLayout;->colorSchemeColors:[I

    invoke-virtual {v4, v5}, Lcom/cjj/MaterialFoodView;->setProgressColors([I)V

    .line 206
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    iget v5, p0, Lcom/cjj/MaterialRefreshLayout;->PROGRESS_STOKE_WIDTH:I

    invoke-virtual {v4, v5}, Lcom/cjj/MaterialFoodView;->setProgressStokeWidth(I)V

    .line 207
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    iget v5, p0, Lcom/cjj/MaterialRefreshLayout;->textType:I

    invoke-virtual {v4, v5}, Lcom/cjj/MaterialFoodView;->setTextType(I)V

    .line 208
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    iget v5, p0, Lcom/cjj/MaterialRefreshLayout;->progressValue:I

    invoke-virtual {v4, v5}, Lcom/cjj/MaterialFoodView;->setProgressValue(I)V

    .line 209
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    iget v5, p0, Lcom/cjj/MaterialRefreshLayout;->progressMax:I

    invoke-virtual {v4, v5}, Lcom/cjj/MaterialFoodView;->setProgressValueMax(I)V

    .line 210
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    iget-boolean v5, p0, Lcom/cjj/MaterialRefreshLayout;->showProgressBg:Z

    invoke-virtual {v4, v5}, Lcom/cjj/MaterialFoodView;->setIsProgressBg(Z)V

    .line 211
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    iget v5, p0, Lcom/cjj/MaterialRefreshLayout;->progressBg:I

    invoke-virtual {v4, v5}, Lcom/cjj/MaterialFoodView;->setProgressBg(I)V

    .line 212
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/cjj/MaterialFoodView;->setVisibility(I)V

    .line 213
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    invoke-virtual {p0, v4}, Lcom/cjj/MaterialRefreshLayout;->setFooderView(Landroid/view/View;)V

    goto/16 :goto_0

    .end local v3           #layoutParams2:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    move v4, v5

    .line 186
    goto/16 :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 219
    iget-boolean v3, p0, Lcom/cjj/MaterialRefreshLayout;->isRefreshing:Z

    if-eqz v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v2

    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 244
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/cjj/MaterialRefreshLayout;->mTouchY:F

    .line 223
    iget v2, p0, Lcom/cjj/MaterialRefreshLayout;->mTouchY:F

    iput v2, p0, Lcom/cjj/MaterialRefreshLayout;->mCurrentY:F

    goto :goto_1

    .line 226
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 227
    .local v0, currentY:F
    iget v3, p0, Lcom/cjj/MaterialRefreshLayout;->mTouchY:F

    sub-float v1, v0, v3

    .line 228
    .local v1, dy:F
    cmpl-float v3, v1, v4

    if-lez v3, :cond_3

    invoke-virtual {p0}, Lcom/cjj/MaterialRefreshLayout;->canChildScrollUp()Z

    move-result v3

    if-nez v3, :cond_3

    .line 229
    iget-object v3, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    invoke-virtual {v3, p0}, Lcom/cjj/MaterialHeadView;->onBegin(Lcom/cjj/MaterialRefreshLayout;)V

    goto :goto_0

    .line 234
    :cond_3
    cmpg-float v2, v1, v4

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lcom/cjj/MaterialRefreshLayout;->canChildScrollDown()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/cjj/MaterialRefreshLayout;->isLoadMore:Z

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/cjj/MaterialRefreshLayout;->materialFoodView:Lcom/cjj/MaterialFoodView;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/cjj/MaterialRefreshLayout;->isLoadMoreing:Z

    if-nez v2, :cond_4

    .line 238
    invoke-direct {p0}, Lcom/cjj/MaterialRefreshLayout;->soveLoadMoreLogic()V

    .line 240
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    .line 260
    iget-boolean v4, p0, Lcom/cjj/MaterialRefreshLayout;->isRefreshing:Z

    if-eqz v4, :cond_1

    .line 261
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 313
    :cond_0
    :goto_0
    return v3

    .line 264
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 313
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 266
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/cjj/MaterialRefreshLayout;->mCurrentY:F

    .line 267
    iget v4, p0, Lcom/cjj/MaterialRefreshLayout;->mCurrentY:F

    iget v5, p0, Lcom/cjj/MaterialRefreshLayout;->mTouchY:F

    sub-float v0, v4, v5

    .line 268
    .local v0, dy:F
    iget v4, p0, Lcom/cjj/MaterialRefreshLayout;->mWaveHeight:F

    mul-float/2addr v4, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 269
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 270
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 271
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v5, p0, Lcom/cjj/MaterialRefreshLayout;->mWaveHeight:F

    div-float v5, v0, v5

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v4, v0

    div-float v2, v4, v6

    .line 272
    .local v2, offsetY:F
    iget v4, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadHeight:F

    div-float v1, v2, v4

    .line 273
    .local v1, fraction:F
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    float-to-int v5, v2

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 274
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 276
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    if-eqz v4, :cond_2

    .line 277
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    invoke-virtual {v4, p0, v1}, Lcom/cjj/MaterialHeadView;->onPull(Lcom/cjj/MaterialRefreshLayout;F)V

    .line 280
    :cond_2
    iget-boolean v4, p0, Lcom/cjj/MaterialRefreshLayout;->isOverlay:Z

    if-nez v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto :goto_0

    .line 287
    .end local v0           #dy:F
    .end local v1           #fraction:F
    .end local v2           #offsetY:F
    :pswitch_1
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 288
    iget-boolean v4, p0, Lcom/cjj/MaterialRefreshLayout;->isOverlay:Z

    if-eqz v4, :cond_4

    .line 289
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadHeight:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 291
    invoke-virtual {p0}, Lcom/cjj/MaterialRefreshLayout;->updateListener()V

    .line 293
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadHeight:F

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 294
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->requestLayout()V

    goto/16 :goto_0

    .line 297
    :cond_3
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 298
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->requestLayout()V

    goto/16 :goto_0

    .line 302
    :cond_4
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    iget v5, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadHeight:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    .line 303
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    iget v5, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadHeight:F

    iget-object v6, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v5, v6}, Lcom/cjj/MaterialRefreshLayout;->createAnimatorTranslationY(Landroid/view/View;FLandroid/widget/FrameLayout;)V

    .line 304
    invoke-virtual {p0}, Lcom/cjj/MaterialRefreshLayout;->updateListener()V

    goto/16 :goto_0

    .line 306
    :cond_5
    iget-object v4, p0, Lcom/cjj/MaterialRefreshLayout;->mChildView:Landroid/view/View;

    iget-object v5, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4, v7, v5}, Lcom/cjj/MaterialRefreshLayout;->createAnimatorTranslationY(Landroid/view/View;FLandroid/widget/FrameLayout;)V

    goto/16 :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFooderView(Landroid/view/View;)V
    .locals 0
    .parameter "fooderView"

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/cjj/MaterialRefreshLayout;->addView(Landroid/view/View;)V

    .line 522
    return-void
.end method

.method public setHeaderHeight(F)V
    .locals 0
    .parameter "headHeight"

    .prologue
    .line 530
    iput p1, p0, Lcom/cjj/MaterialRefreshLayout;->mHeadHeight:F

    .line 531
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 1
    .parameter "headerView"

    .prologue
    .line 512
    new-instance v0, Lcom/cjj/MaterialRefreshLayout$4;

    invoke-direct {v0, p0, p1}, Lcom/cjj/MaterialRefreshLayout$4;-><init>(Lcom/cjj/MaterialRefreshLayout;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/cjj/MaterialRefreshLayout;->post(Ljava/lang/Runnable;)Z

    .line 518
    return-void
.end method

.method public setIsOverLay(Z)V
    .locals 0
    .parameter "isOverLay"

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/cjj/MaterialRefreshLayout;->isOverlay:Z

    .line 388
    return-void
.end method

.method public setLoadMore(Z)V
    .locals 0
    .parameter "isLoadMore"

    .prologue
    .line 358
    iput-boolean p1, p0, Lcom/cjj/MaterialRefreshLayout;->isLoadMore:Z

    .line 359
    return-void
.end method

.method public setMaterialRefreshListener(Lcom/cjj/MaterialRefreshListener;)V
    .locals 0
    .parameter "refreshListener"

    .prologue
    .line 534
    iput-object p1, p0, Lcom/cjj/MaterialRefreshLayout;->refreshListener:Lcom/cjj/MaterialRefreshListener;

    .line 535
    return-void
.end method

.method public setProgressColors([I)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/cjj/MaterialRefreshLayout;->colorSchemeColors:[I

    .line 364
    return-void
.end method

.method public setProgressValue(I)V
    .locals 1
    .parameter "progressValue"

    .prologue
    .line 392
    iput p1, p0, Lcom/cjj/MaterialRefreshLayout;->progressValue:I

    .line 393
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    invoke-virtual {v0, p1}, Lcom/cjj/MaterialHeadView;->setProgressValue(I)V

    .line 394
    return-void
.end method

.method public setShowArrow(Z)V
    .locals 0
    .parameter "showArrow"

    .prologue
    .line 368
    iput-boolean p1, p0, Lcom/cjj/MaterialRefreshLayout;->showArrow:Z

    .line 369
    return-void
.end method

.method public setShowProgressBg(Z)V
    .locals 0
    .parameter "showProgressBg"

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/cjj/MaterialRefreshLayout;->showProgressBg:Z

    .line 374
    return-void
.end method

.method public setWaveColor(I)V
    .locals 0
    .parameter "waveColor"

    .prologue
    .line 378
    iput p1, p0, Lcom/cjj/MaterialRefreshLayout;->waveColor:I

    .line 379
    return-void
.end method

.method public setWaveHeight(F)V
    .locals 0
    .parameter "waveHeight"

    .prologue
    .line 526
    iput p1, p0, Lcom/cjj/MaterialRefreshLayout;->mWaveHeight:F

    .line 527
    return-void
.end method

.method public setWaveHigher()V
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/cjj/MaterialRefreshLayout;->hIGHER_HEAD_HEIGHT:I

    int-to-float v0, v0

    iput v0, p0, Lcom/cjj/MaterialRefreshLayout;->headHeight:F

    .line 460
    iget v0, p0, Lcom/cjj/MaterialRefreshLayout;->HIGHER_WAVE_HEIGHT:I

    int-to-float v0, v0

    iput v0, p0, Lcom/cjj/MaterialRefreshLayout;->waveHeight:F

    .line 461
    iget v0, p0, Lcom/cjj/MaterialRefreshLayout;->hIGHER_HEAD_HEIGHT:I

    sput v0, Lcom/cjj/MaterialWaveView;->DefaulHeadHeight:I

    .line 462
    iget v0, p0, Lcom/cjj/MaterialRefreshLayout;->HIGHER_WAVE_HEIGHT:I

    sput v0, Lcom/cjj/MaterialWaveView;->DefaulWaveHeight:I

    .line 463
    return-void
.end method

.method public setWaveShow(Z)V
    .locals 0
    .parameter "isShowWave"

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/cjj/MaterialRefreshLayout;->isShowWave:Z

    .line 383
    return-void
.end method

.method public updateListener()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cjj/MaterialRefreshLayout;->isRefreshing:Z

    .line 346
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->materialHeadView:Lcom/cjj/MaterialHeadView;

    invoke-virtual {v0, p0}, Lcom/cjj/MaterialHeadView;->onRefreshing(Lcom/cjj/MaterialRefreshLayout;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->refreshListener:Lcom/cjj/MaterialRefreshListener;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/cjj/MaterialRefreshLayout;->refreshListener:Lcom/cjj/MaterialRefreshListener;

    invoke-virtual {v0, p0}, Lcom/cjj/MaterialRefreshListener;->onRefresh(Lcom/cjj/MaterialRefreshLayout;)V

    .line 354
    :cond_1
    return-void
.end method
