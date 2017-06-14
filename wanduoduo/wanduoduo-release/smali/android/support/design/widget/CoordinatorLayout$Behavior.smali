.class public abstract Landroid/support/design/widget/CoordinatorLayout$Behavior;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1685
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1686
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1696
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1697
    return-void
.end method

.method public static getTag(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .parameter "child"

    .prologue
    .line 1956
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1957
    .local v0, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    return-object v1
.end method

.method public static setTag(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .parameter "child"
    .parameter "tag"

    .prologue
    .line 1944
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1945
    .local v0, lp:Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iput-object p1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 1946
    return-void
.end method


# virtual methods
.method public blocksInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)Z"
        }
    .end annotation

    .prologue
    .line 1790
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScrimColor(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)I
    .locals 1
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)I"
        }
    .end annotation

    .prologue
    .line 1757
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/high16 v0, -0x100

    return v0
.end method

.method public getScrimOpacity(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)F
    .locals 1
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)F"
        }
    .end annotation

    .prologue
    .line 1774
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDirty(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 1
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)Z"
        }
    .end annotation

    .prologue
    .line 1877
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter "parent"
    .parameter
    .parameter "dependency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1816
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 0
    .parameter "coordinatorLayout"
    .parameter
    .parameter "insets"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/support/v4/view/WindowInsetsCompat;",
            ")",
            "Landroid/support/v4/view/WindowInsetsCompat;"
        }
    .end annotation

    .prologue
    .line 2178
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-object p3
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .parameter "parent"
    .parameter
    .parameter "dependency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1845
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter
    .parameter "dependency"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1863
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "parent"
    .parameter
    .parameter "ev"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1719
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .parameter "parent"
    .parameter
    .parameter "layoutDirection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .line 1931
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 1
    .parameter "parent"
    .parameter
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    .prologue
    .line 1903
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 1
    .parameter "coordinatorLayout"
    .parameter
    .parameter "target"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "consumed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FFZ)Z"
        }
    .end annotation

    .prologue
    .line 2131
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 1
    .parameter "coordinatorLayout"
    .parameter
    .parameter "target"
    .parameter "velocityX"
    .parameter "velocityY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    .line 2159
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0
    .parameter "coordinatorLayout"
    .parameter
    .parameter "target"
    .parameter "dx"
    .parameter "dy"
    .parameter "consumed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .prologue
    .line 2100
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0
    .parameter "coordinatorLayout"
    .parameter
    .parameter "target"
    .parameter "dxConsumed"
    .parameter "dyConsumed"
    .parameter "dxUnconsumed"
    .parameter "dyUnconsumed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 2067
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .parameter "coordinatorLayout"
    .parameter
    .parameter "directTargetChild"
    .parameter "target"
    .parameter "nestedScrollAxes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2010
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "parent"
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2195
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 2216
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .parameter "coordinatorLayout"
    .parameter
    .parameter "directTargetChild"
    .parameter "target"
    .parameter "nestedScrollAxes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 1984
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "coordinatorLayout"
    .parameter
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2034
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    return-void
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "parent"
    .parameter
    .parameter "ev"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1738
    .local p0, this:Landroid/support/design/widget/CoordinatorLayout$Behavior;,"Landroid/support/design/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, child:Landroid/view/View;,"TV;"
    const/4 v0, 0x0

    return v0
.end method
