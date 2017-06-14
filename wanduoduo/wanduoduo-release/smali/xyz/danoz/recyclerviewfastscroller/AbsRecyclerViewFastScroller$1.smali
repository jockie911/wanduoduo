.class Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "AbsRecyclerViewFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getOnScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;


# direct methods
.method constructor <init>(Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller$1;->this$0:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .parameter "recyclerView"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, scrollProgress:F
    iget-object v2, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller$1;->this$0:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v2}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->getScrollProgressCalculator()Lxyz/danoz/recyclerviewfastscroller/calculation/progress/TouchableScrollProgressCalculator;

    move-result-object v1

    .line 187
    .local v1, scrollProgressCalculator:Lxyz/danoz/recyclerviewfastscroller/calculation/progress/ScrollProgressCalculator;
    if-eqz v1, :cond_0

    .line 188
    invoke-interface {v1, p1}, Lxyz/danoz/recyclerviewfastscroller/calculation/progress/ScrollProgressCalculator;->calculateScrollProgress(Landroid/support/v7/widget/RecyclerView;)F

    move-result v0

    .line 190
    :cond_0
    iget-object v2, p0, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller$1;->this$0:Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;

    invoke-virtual {v2, v0}, Lxyz/danoz/recyclerviewfastscroller/AbsRecyclerViewFastScroller;->moveHandleToPosition(F)V

    .line 191
    return-void
.end method
