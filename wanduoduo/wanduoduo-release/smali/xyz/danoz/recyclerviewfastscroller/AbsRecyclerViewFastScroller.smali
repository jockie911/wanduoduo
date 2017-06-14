.class public abstract Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;
.super Landroid/widget/FrameLayout;
.source "AbsRecyclerViewFastScroller.java"

# interfaces
.implements Lxyz/danoz/recyclerviewfastscroller/RecyclerViewScroller;


# static fields
.field private static final STYLEABLE:[I


# instance fields
.field protected final mBar:Landroid/view/View;

.field protected final mHandle:Landroid/view/View;

.field protected mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSectionIndicator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->AbsRecyclerViewFastScroller:[I

    sput-object v0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    const/4 v9, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget-object v8, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->STYLEABLE:[I

    invoke-virtual {v7, p2, v8, v9, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, attributes:Landroid/content/res/TypedArray;
    :try_start_0
    sget v7, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->AbsRecyclerViewFastScroller_rfs_fast_scroller_layout:I

    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getLayoutResourceId()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 66
    .local v6, layoutResource:I
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 67
    .local v5, inflater:Landroid/view/LayoutInflater;
    const/4 v7, 0x1

    invoke-virtual {v5, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    sget v7, Lxyz/danoz/recyclerviewfastscroller/R$id;->scroll_bar:I

    invoke-virtual {p0, v7}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mBar:Landroid/view/View;

    .line 70
    sget v7, Lxyz/danoz/recyclerviewfastscroller/R$id;->scroll_handle:I

    invoke-virtual {p0, v7}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mHandle:Landroid/view/View;

    .line 72
    sget v7, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->AbsRecyclerViewFastScroller_rfs_barBackground:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 73
    .local v2, barDrawable:Landroid/graphics/drawable/Drawable;
    sget v7, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->AbsRecyclerViewFastScroller_rfs_barColor:I

    const v8, -0x777778

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 74
    .local v1, barColor:I
    iget-object v7, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mBar:Landroid/view/View;

    invoke-direct {p0, v7, v2, v1}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->applyCustomAttributesToView(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 76
    sget v7, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->AbsRecyclerViewFastScroller_rfs_handleBackground:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 77
    .local v4, handleDrawable:Landroid/graphics/drawable/Drawable;
    sget v7, Lxyz/danoz/recyclerviewfastscroller/R$styleable;->AbsRecyclerViewFastScroller_rfs_handleColor:I

    const v8, -0x777778

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 78
    .local v3, handleColor:I
    iget-object v7, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mHandle:Landroid/view/View;

    invoke-direct {p0, v7, v4, v3}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->applyCustomAttributesToView(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    new-instance v7, Lxyz/danoz/recyclerviewfastscroller/FastScrollerTouchListener;

    invoke-direct {v7, p0}, Lxyz/danoz/recyclerviewfastscroller/FastScrollerTouchListener;-><init>(Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;)V

    invoke-virtual {p0, v7}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    return-void

    .line 80
    .end local v1           #barColor:I
    .end local v2           #barDrawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #handleColor:I
    .end local v4           #handleDrawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #layoutResource:I
    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v7
.end method

.method private applyCustomAttributesToView(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter "view"
    .parameter "drawable"
    .parameter "color"

    .prologue
    .line 87
    if-eqz p2, :cond_0

    .line 88
    invoke-direct {p0, p1, p2}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private getPositionFromScrollProgress(F)I
    .locals 1
    .parameter "scrollProgress"

    .prologue
    .line 171
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "view"
    .parameter "background"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateSectionIndicator(IF)V
    .locals 5
    .parameter "position"
    .parameter "scrollProgress"

    .prologue
    .line 159
    iget-object v3, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mSectionIndicator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mSectionIndicator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;

    invoke-interface {v3, p2}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;->setProgress(F)V

    .line 161
    iget-object v3, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/SectionIndexer;

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/SectionIndexer;

    .line 163
    .local v0, indexer:Landroid/widget/SectionIndexer;
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v1

    .line 164
    .local v1, section:I
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    .line 165
    .local v2, sections:[Ljava/lang/Object;
    iget-object v3, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mSectionIndicator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;

    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;->setSection(Ljava/lang/Object;)V

    .line 168
    .end local v0           #indexer:Landroid/widget/SectionIndexer;
    .end local v1           #section:I
    .end local v2           #sections:[Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getLayoutResourceId()I
.end method

.method public getOnScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller$1;

    invoke-direct {v0, p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller$1;-><init>(Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;)V

    iput-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 194
    :cond_0
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method public getScrollProgress(Landroid/view/MotionEvent;)F
    .locals 2
    .parameter "event"

    .prologue
    .line 221
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lxyz/danoz/recyclerviewfastscroller/calculation/progress/TouchableScrollProgressCalculator;

    move-result-object v0

    .line 222
    .local v0, scrollProgressCalculator:Lxyz/danoz/recyclerviewfastscroller/calculation/progress/ScrollProgressCalculator;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lxyz/danoz/recyclerviewfastscroller/calculation/progress/TouchableScrollProgressCalculator;

    move-result-object v1

    invoke-interface {v1, p1}, Lxyz/danoz/recyclerviewfastscroller/calculation/progress/TouchableScrollProgressCalculator;->calculateScrollProgress(Landroid/view/MotionEvent;)F

    move-result v1

    .line 225
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract getScrollProgressCalculator()Lxyz/danoz/recyclerviewfastscroller/calculation/progress/TouchableScrollProgressCalculator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public getSectionIndicator()Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mSectionIndicator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;

    return-object v0
.end method

.method public abstract moveHandleToPosition(F)V
.end method

.method protected abstract onCreateScrollProgressCalculator()V
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 199
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 201
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lxyz/danoz/recyclerviewfastscroller/calculation/progress/TouchableScrollProgressCalculator;

    move-result-object v1

    if-nez v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->onCreateScrollProgressCalculator()V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lxyz/danoz/recyclerviewfastscroller/calculation/progress/TouchableScrollProgressCalculator;

    move-result-object v1

    iget-object v2, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {v1, v2}, Lxyz/danoz/recyclerviewfastscroller/calculation/progress/TouchableScrollProgressCalculator;->calculateScrollProgress(Landroid/support/v7/widget/RecyclerView;)F

    move-result v0

    .line 207
    .local v0, scrollProgress:F
    invoke-virtual {p0, v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->moveHandleToPosition(F)V

    .line 208
    return-void
.end method

.method public scrollTo(FZ)V
    .locals 2
    .parameter "scrollProgress"
    .parameter "fromTouch"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getPositionFromScrollProgress(F)I

    move-result v0

    .line 153
    .local v0, position:I
    iget-object v1, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 155
    invoke-direct {p0, v0, p1}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->updateSectionIndicator(IF)V

    .line 156
    return-void
.end method

.method public setBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 123
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mBar:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method

.method public setBarColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 115
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 116
    return-void
.end method

.method public setHandleBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 107
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mHandle:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->setViewBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void
.end method

.method public setHandleColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 99
    iget-object v0, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mHandle:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    return-void
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter "recyclerView"

    .prologue
    .line 138
    iput-object p1, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 139
    return-void
.end method

.method public setSectionIndicator(Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;)V
    .locals 0
    .parameter "sectionIndicator"

    .prologue
    .line 142
    iput-object p1, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->mSectionIndicator:Lxyz/danoz/recyclerviewfastscroller/sectionindicator/SectionIndicator;

    .line 143
    return-void
.end method
