.class public Lxyz/danoz/recyclerviewfastscroller/calculation/progress/VerticalLinearLayoutManagerScrollProgressCalculator;
.super Lxyz/danoz/recyclerviewfastscroller/calculation/progress/VerticalScrollProgressCalculator;
.source "VerticalLinearLayoutManagerScrollProgressCalculator.java"


# direct methods
.method public constructor <init>(Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;)V
    .locals 0
    .parameter "scrollBoundsProvider"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lxyz/danoz/recyclerviewfastscroller/calculation/progress/VerticalScrollProgressCalculator;-><init>(Lxyz/danoz/recyclerviewfastscroller/calculation/VerticalScrollBoundsProvider;)V

    .line 17
    return-void
.end method


# virtual methods
.method public calculateScrollProgress(Landroid/support/v7/widget/RecyclerView;)F
    .locals 13
    .parameter "recyclerView"

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/LinearLayoutManager;

    .line 26
    .local v6, layoutManager:Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v5

    .line 28
    .local v5, lastFullyVisiblePosition:I
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 29
    .local v10, visibleChild:Landroid/view/View;
    if-nez v10, :cond_0

    .line 30
    const/4 v11, 0x0

    .line 43
    :goto_0
    return v11

    .line 32
    :cond_0
    invoke-virtual {p1, v10}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 33
    .local v1, holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v11, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 34
    .local v3, itemHeight:I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    .line 35
    .local v9, recyclerHeight:I
    div-int v4, v9, v3

    .line 37
    .local v4, itemsInWindow:I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    .line 38
    .local v7, numItemsInList:I
    sub-int v8, v7, v4

    .line 39
    .local v8, numScrollableSectionsInList:I
    sub-int v11, v7, v8

    add-int/lit8 v2, v11, -0x1

    .line 41
    .local v2, indexOfLastFullyVisibleItemInFirstSection:I
    sub-int v0, v5, v2

    .line 43
    .local v0, currentSection:I
    int-to-float v11, v0

    int-to-float v12, v8

    div-float/2addr v11, v12

    goto :goto_0
.end method
