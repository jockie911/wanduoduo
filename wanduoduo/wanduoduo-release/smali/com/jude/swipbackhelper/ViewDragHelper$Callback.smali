.class public abstract Lcom/jude/swipbackhelper/ViewDragHelper$Callback;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jude/swipbackhelper/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .parameter "child"
    .parameter "left"
    .parameter "dx"

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .parameter "child"
    .parameter "top"
    .parameter "dy"

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderedChildIndex(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 281
    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 0
    .parameter "edgeFlags"
    .parameter "pointerId"

    .prologue
    .line 271
    return-void
.end method

.method public onEdgeLock(I)Z
    .locals 1
    .parameter "edgeFlags"

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public onEdgeTouched(II)V
    .locals 0
    .parameter "edgeFlags"
    .parameter "pointerId"

    .prologue
    .line 240
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0
    .parameter "capturedChild"
    .parameter "activePointerId"

    .prologue
    .line 200
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 175
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0
    .parameter "changedView"
    .parameter "left"
    .parameter "top"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 188
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 0
    .parameter "releasedChild"
    .parameter "xvel"
    .parameter "yvel"

    .prologue
    .line 225
    return-void
.end method

.method public abstract tryCaptureView(Landroid/view/View;I)Z
.end method
