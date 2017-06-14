.class Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;
.super Lcom/jude/swipbackhelper/ViewDragHelper$Callback;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jude/swipbackhelper/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private mIsScrollOverValid:Z

.field final synthetic this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;


# direct methods
.method private constructor <init>(Lcom/jude/swipbackhelper/SwipeBackLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    invoke-direct {p0}, Lcom/jude/swipbackhelper/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jude/swipbackhelper/SwipeBackLayout;Lcom/jude/swipbackhelper/SwipeBackLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;-><init>(Lcom/jude/swipbackhelper/SwipeBackLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2
    .parameter "child"
    .parameter "left"
    .parameter "dx"

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mTrackingEdge:I
    invoke-static {v0}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$300(Lcom/jude/swipbackhelper/SwipeBackLayout;)I

    move-result v0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 4
    .parameter "changedView"
    .parameter "left"
    .parameter "top"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 388
    invoke-super/range {p0 .. p5}, Lcom/jude/swipbackhelper/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 389
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    int-to-float v2, p2

    iget-object v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentView:Landroid/view/View;
    invoke-static {v3}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$500(Lcom/jude/swipbackhelper/SwipeBackLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    #setter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollPercent:F
    invoke-static {v1, v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$402(Lcom/jude/swipbackhelper/SwipeBackLayout;F)F

    .line 390
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #setter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentLeft:I
    invoke-static {v1, p2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$602(Lcom/jude/swipbackhelper/SwipeBackLayout;I)I

    .line 391
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    invoke-virtual {v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->invalidate()V

    .line 392
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollPercent:F
    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$400(Lcom/jude/swipbackhelper/SwipeBackLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollThreshold:F
    invoke-static {v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$700(Lcom/jude/swipbackhelper/SwipeBackLayout;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-boolean v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    if-nez v1, :cond_0

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$200(Lcom/jude/swipbackhelper/SwipeBackLayout;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$200(Lcom/jude/swipbackhelper/SwipeBackLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$200(Lcom/jude/swipbackhelper/SwipeBackLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jude/swipbackhelper/SwipeListener;

    .line 398
    .local v0, listener:Lcom/jude/swipbackhelper/SwipeListener;
    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollPercent:F
    invoke-static {v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$400(Lcom/jude/swipbackhelper/SwipeBackLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mContentLeft:I
    invoke-static {v3}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$600(Lcom/jude/swipbackhelper/SwipeBackLayout;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/jude/swipbackhelper/SwipeListener;->onScroll(FI)V

    goto :goto_0

    .line 401
    .end local v0           #listener:Lcom/jude/swipbackhelper/SwipeListener;
    :cond_1
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollPercent:F
    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$400(Lcom/jude/swipbackhelper/SwipeBackLayout;)F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 402
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$800(Lcom/jude/swipbackhelper/SwipeBackLayout;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$200(Lcom/jude/swipbackhelper/SwipeBackLayout;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$200(Lcom/jude/swipbackhelper/SwipeBackLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    .line 404
    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollPercent:F
    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$400(Lcom/jude/swipbackhelper/SwipeBackLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollThreshold:F
    invoke-static {v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$700(Lcom/jude/swipbackhelper/SwipeBackLayout;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    if-eqz v1, :cond_2

    .line 405
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    .line 406
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$200(Lcom/jude/swipbackhelper/SwipeBackLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jude/swipbackhelper/SwipeListener;

    .line 407
    .restart local v0       #listener:Lcom/jude/swipbackhelper/SwipeListener;
    invoke-interface {v0}, Lcom/jude/swipbackhelper/SwipeListener;->onScrollToClose()V

    goto :goto_1

    .line 410
    .end local v0           #listener:Lcom/jude/swipbackhelper/SwipeListener;
    :cond_2
    iget-object v1, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$800(Lcom/jude/swipbackhelper/SwipeBackLayout;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 415
    :cond_3
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .parameter "releasedChild"
    .parameter "xvel"
    .parameter "yvel"

    .prologue
    const/4 v4, 0x0

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 421
    .local v0, childWidth:I
    const/4 v1, 0x0

    .local v1, left:I
    const/4 v2, 0x0

    .line 423
    .local v2, top:I
    cmpl-float v3, p2, v4

    if-gtz v3, :cond_0

    cmpl-float v3, p2, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollPercent:F
    invoke-static {v3}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$400(Lcom/jude/swipbackhelper/SwipeBackLayout;)F

    move-result v3

    iget-object v4, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mScrollThreshold:F
    invoke-static {v4}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$700(Lcom/jude/swipbackhelper/SwipeBackLayout;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    iget-object v3, v3, Lcom/jude/swipbackhelper/SwipeBackLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 424
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, 0xa

    .line 427
    :goto_0
    iget-object v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;
    invoke-static {v3}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$100(Lcom/jude/swipbackhelper/SwipeBackLayout;)Lcom/jude/swipbackhelper/ViewDragHelper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/jude/swipbackhelper/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 428
    iget-object v3, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    invoke-virtual {v3}, Lcom/jude/swipbackhelper/SwipeBackLayout;->invalidate()V

    .line 429
    return-void

    .line 424
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 5
    .parameter "view"
    .parameter "i"

    .prologue
    const/4 v4, 0x1

    .line 364
    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mDragHelper:Lcom/jude/swipbackhelper/ViewDragHelper;
    invoke-static {v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$100(Lcom/jude/swipbackhelper/SwipeBackLayout;)Lcom/jude/swipbackhelper/ViewDragHelper;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Lcom/jude/swipbackhelper/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v1

    .line 365
    .local v1, ret:Z
    if-eqz v1, :cond_1

    .line 366
    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$200(Lcom/jude/swipbackhelper/SwipeBackLayout;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$200(Lcom/jude/swipbackhelper/SwipeBackLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->this$0:Lcom/jude/swipbackhelper/SwipeBackLayout;

    #getter for: Lcom/jude/swipbackhelper/SwipeBackLayout;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/jude/swipbackhelper/SwipeBackLayout;->access$200(Lcom/jude/swipbackhelper/SwipeBackLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jude/swipbackhelper/SwipeListener;

    .line 368
    .local v0, listener:Lcom/jude/swipbackhelper/SwipeListener;
    invoke-interface {v0}, Lcom/jude/swipbackhelper/SwipeListener;->onEdgeTouch()V

    goto :goto_0

    .line 371
    .end local v0           #listener:Lcom/jude/swipbackhelper/SwipeListener;
    :cond_0
    iput-boolean v4, p0, Lcom/jude/swipbackhelper/SwipeBackLayout$ViewDragCallback;->mIsScrollOverValid:Z

    .line 373
    :cond_1
    return v1
.end method
