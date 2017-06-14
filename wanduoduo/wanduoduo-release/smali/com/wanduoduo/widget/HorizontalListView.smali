.class public Lcom/wanduoduo/widget/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanduoduo/widget/HorizontalListView$IceCreamSandwichPlus;,
        Lcom/wanduoduo/widget/HorizontalListView$HoneycombPlus;,
        Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener;,
        Lcom/wanduoduo/widget/HorizontalListView$RunningOutOfDataListener;,
        Lcom/wanduoduo/widget/HorizontalListView$GestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUNDLE_ID_CURRENT_X:Ljava/lang/String; = "BUNDLE_ID_CURRENT_X"

.field private static final BUNDLE_ID_PARENT_STATE:Ljava/lang/String; = "BUNDLE_ID_PARENT_STATE"

.field private static final FLING_DEFAULT_ABSORB_VELOCITY:F = 30.0f

.field private static final FLING_FRICTION:F = 0.009f

.field private static final INSERT_AT_END_OF_LIST:I = -0x1

.field private static final INSERT_AT_START_OF_LIST:I


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mAdapterDataObserver:Landroid/database/DataSetObserver;

.field private mBlockTouchAction:Z

.field private mCurrentScrollState:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

.field protected mCurrentX:I

.field private mCurrentlySelectedAdapterIndex:I

.field private mDataChanged:Z

.field private mDelayedLayout:Ljava/lang/Runnable;

.field private mDisplayOffset:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

.field protected mFlingTracker:Landroid/widget/Scroller;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureListener:Lcom/wanduoduo/widget/HorizontalListView$GestureListener;

.field private mHasNotifiedRunningLowOnData:Z

.field private mHeightMeasureSpec:I

.field private mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

.field private mLeftViewAdapterIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnScrollStateChangedListener:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener;

.field private mRect:Landroid/graphics/Rect;

.field private mRemovedViewsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRestoreX:Ljava/lang/Integer;

.field private mRightViewAdapterIndex:I

.field private mRunningOutOfDataListener:Lcom/wanduoduo/widget/HorizontalListView$RunningOutOfDataListener;

.field private mRunningOutOfDataThreshold:I

.field private mViewBeingTouched:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 158
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    .line 58
    new-instance v0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;

    invoke-direct {v0, p0, v3}, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;-><init>(Lcom/wanduoduo/widget/HorizontalListView;Lcom/wanduoduo/widget/HorizontalListView$1;)V

    iput-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mGestureListener:Lcom/wanduoduo/widget/HorizontalListView$GestureListener;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    .line 73
    iput-boolean v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDataChanged:Z

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRect:Landroid/graphics/Rect;

    .line 79
    iput-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    .line 82
    iput v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDividerWidth:I

    .line 85
    iput-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    .line 97
    const v0, 0x7fffffff

    iput v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    .line 111
    iput-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRunningOutOfDataListener:Lcom/wanduoduo/widget/HorizontalListView$RunningOutOfDataListener;

    .line 116
    iput v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRunningOutOfDataThreshold:I

    .line 121
    iput-boolean v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    .line 126
    iput-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mOnScrollStateChangedListener:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener;

    .line 131
    sget-object v0, Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    iput-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentScrollState:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .line 147
    iput-boolean v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mBlockTouchAction:Z

    .line 150
    iput-boolean v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

    .line 313
    new-instance v0, Lcom/wanduoduo/widget/HorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/wanduoduo/widget/HorizontalListView$2;-><init>(Lcom/wanduoduo/widget/HorizontalListView;)V

    iput-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    .line 592
    new-instance v0, Lcom/wanduoduo/widget/HorizontalListView$3;

    invoke-direct {v0, p0}, Lcom/wanduoduo/widget/HorizontalListView$3;-><init>(Lcom/wanduoduo/widget/HorizontalListView;)V

    iput-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDelayedLayout:Ljava/lang/Runnable;

    .line 159
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 160
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 161
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mGestureListener:Lcom/wanduoduo/widget/HorizontalListView$GestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 162
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->bindGestureDetector()V

    .line 163
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->initView()V

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/wanduoduo/widget/HorizontalListView;->retrieveXmlConfiguration(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    invoke-virtual {p0, v2}, Lcom/wanduoduo/widget/HorizontalListView;->setWillNotDraw(Z)V

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    const v1, 0x3c1374bc

    invoke-static {v0, v1}, Lcom/wanduoduo/widget/HorizontalListView$HoneycombPlus;->setFriction(Landroid/widget/Scroller;F)V

    .line 171
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/wanduoduo/widget/HorizontalListView;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wanduoduo/widget/HorizontalListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mBlockTouchAction:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/wanduoduo/widget/HorizontalListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    return v0
.end method

.method static synthetic access$1200(Lcom/wanduoduo/widget/HorizontalListView;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/wanduoduo/widget/HorizontalListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$302(Lcom/wanduoduo/widget/HorizontalListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    return p1
.end method

.method static synthetic access$400(Lcom/wanduoduo/widget/HorizontalListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->unpressTouchedChild()V

    return-void
.end method

.method static synthetic access$500(Lcom/wanduoduo/widget/HorizontalListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$600(Lcom/wanduoduo/widget/HorizontalListView;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/wanduoduo/widget/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$700(Lcom/wanduoduo/widget/HorizontalListView;Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/wanduoduo/widget/HorizontalListView;->setCurrentScrollState(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/wanduoduo/widget/HorizontalListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/wanduoduo/widget/HorizontalListView;->updateOverscrollAnimation(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/wanduoduo/widget/HorizontalListView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/wanduoduo/widget/HorizontalListView;->getChildIndex(II)I

    move-result v0

    return v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "viewPos"

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/wanduoduo/widget/HorizontalListView;->getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 427
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 428
    invoke-direct {p0, p1}, Lcom/wanduoduo/widget/HorizontalListView;->measureChild(Landroid/view/View;)V

    .line 429
    return-void
.end method

.method private bindGestureDetector()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/wanduoduo/widget/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/wanduoduo/widget/HorizontalListView$1;-><init>(Lcom/wanduoduo/widget/HorizontalListView;)V

    .line 184
    .local v0, gestureListenerHandler:Landroid/view/View$OnTouchListener;
    invoke-virtual {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    return-void
.end method

.method private determineFlingAbsorbVelocity()F
    .locals 2

    .prologue
    .line 581
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-static {v0}, Lcom/wanduoduo/widget/HorizontalListView$IceCreamSandwichPlus;->getCurrVelocity(Landroid/widget/Scroller;)F

    move-result v0

    .line 587
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41f0

    goto :goto_0
.end method

.method private determineIfLowOnData()V
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRunningOutOfDataListener:Lcom/wanduoduo/widget/HorizontalListView$RunningOutOfDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1129
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRunningOutOfDataThreshold:I

    if-ge v0, v1, :cond_0

    .line 1132
    iget-boolean v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    if-nez v0, :cond_0

    .line 1133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    .line 1134
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRunningOutOfDataListener:Lcom/wanduoduo/widget/HorizontalListView$RunningOutOfDataListener;

    invoke-interface {v0}, Lcom/wanduoduo/widget/HorizontalListView$RunningOutOfDataListener;->onRunningOutOfData()V

    .line 1137
    :cond_0
    return-void
.end method

.method private determineMaxX()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 616
    iget v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v3}, Lcom/wanduoduo/widget/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 617
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v1

    .line 619
    .local v1, rightView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 620
    iget v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    .line 623
    .local v0, oldMaxX:I
    iget v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getRenderWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    .line 626
    iget v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    if-gez v3, :cond_0

    .line 627
    iput v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    .line 630
    :cond_0
    iget v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    if-eq v3, v0, :cond_1

    .line 631
    const/4 v2, 0x1

    .line 636
    .end local v0           #oldMaxX:I
    .end local v1           #rightView:Landroid/view/View;
    :cond_1
    return v2
.end method

.method private drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 917
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 919
    :cond_0
    return-void
.end method

.method private drawDividers(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getChildCount()I

    move-result v2

    .line 871
    .local v2, count:I
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRect:Landroid/graphics/Rect;

    .line 872
    .local v0, bounds:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingTop()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 873
    iget-object v4, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getRenderHeight()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 876
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 878
    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_0

    iget v4, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v4}, Lcom/wanduoduo/widget/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 879
    :cond_0
    invoke-virtual {p0, v3}, Lcom/wanduoduo/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 881
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 882
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 885
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 886
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 890
    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    .line 891
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 895
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/wanduoduo/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 899
    if-nez v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 900
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 901
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 902
    invoke-direct {p0, p1, v0}, Lcom/wanduoduo/widget/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 876
    .end local v1           #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 906
    :cond_4
    return-void
.end method

.method private drawEdgeGlow(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 836
    iget-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->isEdgeGlowEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 838
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 839
    .local v1, restoreCount:I
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getHeight()I

    move-result v0

    .line 841
    .local v0, height:I
    const/high16 v3, -0x3d4c

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 842
    neg-int v3, v0

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 844
    iget-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getRenderHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getRenderWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 845
    iget-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 846
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->invalidate()V

    .line 849
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 864
    .end local v0           #height:I
    .end local v1           #restoreCount:I
    :cond_1
    :goto_0
    return-void

    .line 850
    :cond_2
    iget-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->isEdgeGlowEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 852
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 853
    .restart local v1       #restoreCount:I
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getWidth()I

    move-result v2

    .line 855
    .local v2, width:I
    const/high16 v3, 0x42b4

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 856
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 857
    iget-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getRenderHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getRenderWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 858
    iget-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 859
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->invalidate()V

    .line 862
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private fillList(I)V
    .locals 2
    .parameter "dx"

    .prologue
    .line 642
    const/4 v1, 0x0

    .line 643
    .local v1, edge:I
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    .line 644
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 649
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/wanduoduo/widget/HorizontalListView;->fillListRight(II)V

    .line 652
    const/4 v1, 0x0

    .line 653
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 659
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/wanduoduo/widget/HorizontalListView;->fillListLeft(II)V

    .line 660
    return-void
.end method

.method private fillListLeft(II)V
    .locals 4
    .parameter "leftEdge"
    .parameter "dx"

    .prologue
    .line 720
    :goto_0
    add-int v1, p1, p2

    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDividerWidth:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 721
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 722
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    iget v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v3}, Lcom/wanduoduo/widget/HorizontalListView;->getRecycledView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 723
    .local v0, child:Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 726
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_1
    sub-int/2addr p1, v1

    .line 729
    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDisplayOffset:I

    add-int v1, p1, p2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_2
    sub-int v1, v2, v1

    iput v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    .line 726
    :cond_0
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 729
    :cond_1
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_2

    .line 731
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private fillListRight(II)V
    .locals 4
    .parameter "rightEdge"
    .parameter "dx"

    .prologue
    .line 698
    :goto_0
    add-int v1, p1, p2

    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDividerWidth:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 699
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    .line 702
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    if-gez v1, :cond_0

    .line 703
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    iput v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    iget v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v3}, Lcom/wanduoduo/widget/HorizontalListView;->getRecycledView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 708
    .local v0, child:Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 711
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 714
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->determineIfLowOnData()V

    goto :goto_0

    .line 711
    :cond_1
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDividerWidth:I

    goto :goto_1

    .line 716
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private getChild(I)Landroid/view/View;
    .locals 1
    .parameter "adapterIndex"

    .prologue
    .line 773
    iget v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    if-gt p1, v0, :cond_0

    .line 774
    iget v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 777
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getChildIndex(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getChildCount()I

    move-result v0

    .line 792
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 793
    invoke-virtual {p0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 794
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    .end local v1           #index:I
    :goto_1
    return v1

    .line 792
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 799
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .parameter "child"

    .prologue
    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 453
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 455
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 458
    .restart local v0       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-object v0
.end method

.method private getLeftmostChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 760
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getRecycledView(I)Landroid/view/View;
    .locals 2
    .parameter "adapterIndex"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 397
    .local v0, itemViewType:I
    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->isItemViewTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 401
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRenderHeight()I
    .locals 2

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRenderWidth()I
    .locals 2

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRightmostChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 296
    iput v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 297
    iput v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    .line 298
    iput v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDisplayOffset:I

    .line 299
    iput v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    .line 300
    iput v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    .line 301
    const v0, 0x7fffffff

    iput v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    .line 302
    sget-object v0, Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->setCurrentScrollState(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 303
    return-void
.end method

.method private initializeRecycledViewCache(I)V
    .locals 3
    .parameter "viewTypeCount"

    .prologue
    .line 382
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 383
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    return-void
.end method

.method private isEdgeGlowEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1250
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isItemViewTypeValid(I)Z
    .locals 1
    .parameter "itemViewType"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastItemInAdapter(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureChild(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    const/4 v6, 0x0

    .line 437
    invoke-direct {p0, p1}, Lcom/wanduoduo/widget/HorizontalListView;->getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 438
    .local v1, childLayoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mHeightMeasureSpec:I

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 441
    .local v0, childHeightSpec:I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_0

    .line 442
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 447
    .local v2, childWidthSpec:I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 448
    return-void

    .line 444
    .end local v2           #childWidthSpec:I
    :cond_0
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2       #childWidthSpec:I
    goto :goto_0
.end method

.method private positionChildren(I)V
    .locals 10
    .parameter "dx"

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getChildCount()I

    move-result v2

    .line 737
    .local v2, childCount:I
    if-lez v2, :cond_0

    .line 738
    iget v8, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDisplayOffset:I

    .line 739
    iget v5, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDisplayOffset:I

    .line 742
    .local v5, leftOffset:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 743
    invoke-virtual {p0, v3}, Lcom/wanduoduo/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 744
    .local v1, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingLeft()I

    move-result v8

    add-int v4, v5, v8

    .line 745
    .local v4, left:I
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getPaddingTop()I

    move-result v7

    .line 746
    .local v7, top:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v6, v4, v8

    .line 747
    .local v6, right:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v7, v8

    .line 750
    .local v0, bottom:I
    invoke-virtual {v1, v4, v7, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 753
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDividerWidth:I

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    .line 742
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 756
    .end local v0           #bottom:I
    .end local v1           #child:Landroid/view/View;
    .end local v3           #i:I
    .end local v4           #left:I
    .end local v5           #leftOffset:I
    .end local v6           #right:I
    .end local v7           #top:I
    :cond_0
    return-void
.end method

.method private recycleView(ILandroid/view/View;)V
    .locals 2
    .parameter "adapterIndex"
    .parameter "view"

    .prologue
    .line 414
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 415
    .local v0, itemViewType:I
    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->isItemViewTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 418
    :cond_0
    return-void
.end method

.method private releaseEdgeGlow()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1091
    :cond_1
    return-void
.end method

.method private removeNonVisibleChildren(I)V
    .locals 4
    .parameter "dx"

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    .line 666
    .local v0, child:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_1

    .line 670
    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDisplayOffset:I

    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDisplayOffset:I

    .line 673
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v1, v0}, Lcom/wanduoduo/widget/HorizontalListView;->recycleView(ILandroid/view/View;)V

    .line 676
    invoke-virtual {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 679
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 682
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 670
    :cond_0
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 685
    :cond_1
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    .line 688
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 689
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v1, v0}, Lcom/wanduoduo/widget/HorizontalListView;->recycleView(ILandroid/view/View;)V

    .line 690
    invoke-virtual {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 691
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    .line 692
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 694
    :cond_2
    return-void
.end method

.method private requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "disallowIntercept"

    .prologue
    .line 196
    iget-boolean v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 197
    move-object v0, p0

    .line 199
    .local v0, view:Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    .line 202
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 203
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

    .line 210
    .end local v0           #view:Landroid/view/View;
    :cond_1
    return-void

    .line 207
    .restart local v0       #view:Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0           #view:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #view:Landroid/view/View;
    goto :goto_0
.end method

.method private reset()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->initView()V

    .line 308
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->removeAllViewsInLayout()V

    .line 309
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->requestLayout()V

    .line 310
    return-void
.end method

.method private retrieveXmlConfiguration(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 219
    if-eqz p2, :cond_2

    .line 220
    sget-object v3, Lcom/wanduoduo/R$styleable;->HorizontalListView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 223
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 224
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 231
    .local v2, dividerWidth:I
    if-eqz v2, :cond_1

    .line 232
    invoke-virtual {p0, v2}, Lcom/wanduoduo/widget/HorizontalListView;->setDividerWidth(I)V

    .line 235
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #dividerWidth:I
    :cond_2
    return-void
.end method

.method private setCurrentScrollState(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 1
    .parameter "newScrollState"

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentScrollState:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mOnScrollStateChangedListener:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mOnScrollStateChangedListener:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener;

    invoke-interface {v0, p1}, Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener;->onScrollStateChanged(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1199
    :cond_0
    iput-object p1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentScrollState:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .line 1200
    return-void
.end method

.method private unpressTouchedChild()V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 979
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->refreshDrawableState()V

    .line 982
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    .line 984
    :cond_0
    return-void
.end method

.method private updateOverscrollAnimation(I)V
    .locals 5
    .parameter "scrolledOffset"

    .prologue
    .line 1208
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v2, :cond_1

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    add-int v0, v2, p1

    .line 1214
    .local v0, nextScrollPosition:I
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1216
    :cond_2
    if-gez v0, :cond_3

    .line 1219
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1222
    .local v1, overscroll:I
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v3, v1

    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getRenderWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 1225
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1226
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_0

    .line 1228
    .end local v1           #overscroll:I
    :cond_3
    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    if-le v0, v2, :cond_0

    .line 1232
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1235
    .restart local v1       #overscroll:I
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v3, v1

    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getRenderWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 1238
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1239
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 929
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 930
    invoke-direct {p0, p1}, Lcom/wanduoduo/widget/HorizontalListView;->drawEdgeGlow(Landroid/graphics/Canvas;)V

    .line 931
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 937
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 831
    iget v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRightViewAdapterIndex:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 551
    .local v0, horizontalFadingEdgeLength:I
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    if-nez v1, :cond_0

    .line 552
    const/4 v1, 0x0

    .line 558
    :goto_0
    return v1

    .line 553
    :cond_0
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    if-ge v1, v0, :cond_1

    .line 555
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 558
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 567
    .local v0, horizontalFadingEdgeLength:I
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    if-ne v1, v2, :cond_0

    .line 568
    const/4 v1, 0x0

    .line 574
    :goto_0
    return v1

    .line 569
    :cond_0
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    .line 571
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 574
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentlySelectedAdapterIndex:I

    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->getChild(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 948
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mBlockTouchAction:Z

    .line 951
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 952
    sget-object v1, Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->setCurrentScrollState(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 954
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->unpressTouchedChild()V

    .line 956
    iget-boolean v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mBlockTouchAction:Z

    if-nez v1, :cond_0

    .line 958
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Lcom/wanduoduo/widget/HorizontalListView;->getChildIndex(II)I

    move-result v0

    .line 959
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 961
    invoke-virtual {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    .line 963
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 965
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 966
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->refreshDrawableState()V

    .line 971
    .end local v0           #index:I
    :cond_0
    return v2

    .line 948
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 923
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    .line 924
    invoke-direct {p0, p1}, Lcom/wanduoduo/widget/HorizontalListView;->drawDividers(Landroid/graphics/Canvas;)V

    .line 925
    return-void
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    .line 940
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    neg-float v3, p3

    float-to-int v3, v3

    iget v6, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 941
    sget-object v0, Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->setCurrentScrollState(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 942
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->requestLayout()V

    .line 943
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 464
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 466
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->invalidate()V

    .line 474
    iget-boolean v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDataChanged:Z

    if-eqz v2, :cond_2

    .line 475
    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    .line 476
    .local v1, oldCurrentX:I
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->initView()V

    .line 477
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->removeAllViewsInLayout()V

    .line 478
    iput v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    .line 479
    iput-boolean v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDataChanged:Z

    .line 483
    .end local v1           #oldCurrentX:I
    :cond_2
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 484
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    .line 485
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    .line 489
    :cond_3
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 491
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    .line 495
    :cond_4
    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    if-gez v2, :cond_7

    .line 496
    iput v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    .line 499
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 500
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->determineFlingAbsorbVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 503
    :cond_5
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 504
    sget-object v2, Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/wanduoduo/widget/HorizontalListView;->setCurrentScrollState(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 519
    :cond_6
    :goto_1
    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    iget v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    sub-int v0, v2, v3

    .line 520
    .local v0, dx:I
    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->removeNonVisibleChildren(I)V

    .line 521
    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->fillList(I)V

    .line 522
    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->positionChildren(I)V

    .line 525
    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    iput v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    .line 528
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->determineMaxX()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 530
    invoke-virtual/range {p0 .. p5}, Lcom/wanduoduo/widget/HorizontalListView;->onLayout(ZIIII)V

    goto :goto_0

    .line 505
    .end local v0           #dx:I
    :cond_7
    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    iget v3, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    if-le v2, v3, :cond_6

    .line 507
    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mMaxX:I

    iput v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    .line 510
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 511
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->determineFlingAbsorbVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 514
    :cond_8
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 515
    sget-object v2, Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/wanduoduo/widget/HorizontalListView;->setCurrentScrollState(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto :goto_1

    .line 535
    .restart local v0       #dx:I
    :cond_9
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 537
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentScrollState:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    sget-object v3, Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne v2, v3, :cond_0

    .line 538
    sget-object v2, Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lcom/wanduoduo/widget/HorizontalListView;->setCurrentScrollState(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto/16 :goto_0

    .line 542
    :cond_a
    iget-object v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDelayedLayout:Ljava/lang/Runnable;

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 601
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 604
    iput p2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mHeightMeasureSpec:I

    .line 605
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 254
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 255
    check-cast v0, Landroid/os/Bundle;

    .line 258
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "BUNDLE_ID_CURRENT_X"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    .line 261
    const-string v1, "BUNDLE_ID_PARENT_STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 263
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "BUNDLE_ID_PARENT_STATE"

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 247
    const-string v1, "BUNDLE_ID_CURRENT_X"

    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1061
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1063
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    :cond_0
    sget-object v0, Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->setCurrentScrollState(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1068
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V

    .line 1070
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->releaseEdgeGlow()V

    .line 1079
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1071
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1072
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->unpressTouchedChild()V

    .line 1073
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->releaseEdgeGlow()V

    .line 1076
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 4
    .parameter "x"

    .prologue
    const/4 v3, 0x0

    .line 819
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    iget v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    iget v2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 820
    sget-object v0, Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->setCurrentScrollState(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 821
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->requestLayout()V

    .line 822
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/wanduoduo/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 358
    :cond_0
    if-eqz p1, :cond_1

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    .line 362
    iput-object p1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 363
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->initializeRecycledViewCache(I)V

    .line 367
    invoke-direct {p0}, Lcom/wanduoduo/widget/HorizontalListView;->reset()V

    .line 368
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "divider"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 274
    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->setDividerWidth(I)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wanduoduo/widget/HorizontalListView;->setDividerWidth(I)V

    goto :goto_0
.end method

.method public setDividerWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 288
    iput p1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mDividerWidth:I

    .line 291
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->requestLayout()V

    .line 292
    invoke-virtual {p0}, Lcom/wanduoduo/widget/HorizontalListView;->invalidate()V

    .line 293
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1147
    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mOnScrollStateChangedListener:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener;

    .line 1187
    return-void
.end method

.method public setRunningOutOfDataListener(Lcom/wanduoduo/widget/HorizontalListView$RunningOutOfDataListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "numberOfItemsLeftConsideredLow"

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRunningOutOfDataListener:Lcom/wanduoduo/widget/HorizontalListView$RunningOutOfDataListener;

    .line 1111
    iput p2, p0, Lcom/wanduoduo/widget/HorizontalListView;->mRunningOutOfDataThreshold:I

    .line 1112
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 344
    iput p1, p0, Lcom/wanduoduo/widget/HorizontalListView;->mCurrentlySelectedAdapterIndex:I

    .line 345
    return-void
.end method
