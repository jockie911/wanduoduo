.class Lcom/wanduoduo/widget/HorizontalListView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/widget/HorizontalListView;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/widget/HorizontalListView;)V
    .locals 0
    .parameter

    .prologue
    .line 986
    iput-object p1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanduoduo/widget/HorizontalListView;Lcom/wanduoduo/widget/HorizontalListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 986
    invoke-direct {p0, p1}, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;-><init>(Lcom/wanduoduo/widget/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 989
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/wanduoduo/widget/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 994
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/wanduoduo/widget/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "e"

    .prologue
    .line 1038
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #calls: Lcom/wanduoduo/widget/HorizontalListView;->unpressTouchedChild()V
    invoke-static {v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$400(Lcom/wanduoduo/widget/HorizontalListView;)V

    .line 1040
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    #calls: Lcom/wanduoduo/widget/HorizontalListView;->getChildIndex(II)I
    invoke-static {v1, v4, v5}, Lcom/wanduoduo/widget/HorizontalListView;->access$900(Lcom/wanduoduo/widget/HorizontalListView;II)I

    move-result v7

    .line 1041
    .local v7, index:I
    if-ltz v7, :cond_0

    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #getter for: Lcom/wanduoduo/widget/HorizontalListView;->mBlockTouchAction:Z
    invoke-static {v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$1000(Lcom/wanduoduo/widget/HorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1042
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {v1, v7}, Lcom/wanduoduo/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1043
    .local v2, child:Landroid/view/View;
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {v1}, Lcom/wanduoduo/widget/HorizontalListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 1044
    .local v0, onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    if-eqz v0, :cond_0

    .line 1045
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #getter for: Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I
    invoke-static {v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$1100(Lcom/wanduoduo/widget/HorizontalListView;)I

    move-result v1

    add-int v3, v1, v7

    .line 1046
    .local v3, adapterIndex:I
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    iget-object v4, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    iget-object v4, v4, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1047
    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1046
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1049
    .local v6, handled:Z
    if-eqz v6, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/wanduoduo/widget/HorizontalListView;->performHapticFeedback(I)Z

    .line 1055
    .end local v0           #onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    .end local v2           #child:Landroid/view/View;
    .end local v3           #adapterIndex:I
    .end local v6           #handled:Z
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v3, 0x1

    .line 1000
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/wanduoduo/widget/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$600(Lcom/wanduoduo/widget/HorizontalListView;Ljava/lang/Boolean;)V

    .line 1002
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    sget-object v1, Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_TOUCH_SCROLL:Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    #calls: Lcom/wanduoduo/widget/HorizontalListView;->setCurrentScrollState(Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    invoke-static {v0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$700(Lcom/wanduoduo/widget/HorizontalListView;Lcom/wanduoduo/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1003
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #calls: Lcom/wanduoduo/widget/HorizontalListView;->unpressTouchedChild()V
    invoke-static {v0}, Lcom/wanduoduo/widget/HorizontalListView;->access$400(Lcom/wanduoduo/widget/HorizontalListView;)V

    .line 1004
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    iget v1, v0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    float-to-int v2, p3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/wanduoduo/widget/HorizontalListView;->mNextX:I

    .line 1005
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v1

    #calls: Lcom/wanduoduo/widget/HorizontalListView;->updateOverscrollAnimation(I)V
    invoke-static {v0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$800(Lcom/wanduoduo/widget/HorizontalListView;I)V

    .line 1006
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/wanduoduo/widget/HorizontalListView;->requestLayout()V

    .line 1008
    return v3
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    .line 1013
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #calls: Lcom/wanduoduo/widget/HorizontalListView;->unpressTouchedChild()V
    invoke-static {v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$400(Lcom/wanduoduo/widget/HorizontalListView;)V

    .line 1014
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {v1}, Lcom/wanduoduo/widget/HorizontalListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 1016
    .local v0, onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    #calls: Lcom/wanduoduo/widget/HorizontalListView;->getChildIndex(II)I
    invoke-static {v1, v4, v5}, Lcom/wanduoduo/widget/HorizontalListView;->access$900(Lcom/wanduoduo/widget/HorizontalListView;II)I

    move-result v6

    .line 1019
    .local v6, index:I
    if-ltz v6, :cond_0

    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #getter for: Lcom/wanduoduo/widget/HorizontalListView;->mBlockTouchAction:Z
    invoke-static {v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$1000(Lcom/wanduoduo/widget/HorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1020
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {v1, v6}, Lcom/wanduoduo/widget/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1021
    .local v2, child:Landroid/view/View;
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #getter for: Lcom/wanduoduo/widget/HorizontalListView;->mLeftViewAdapterIndex:I
    invoke-static {v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$1100(Lcom/wanduoduo/widget/HorizontalListView;)I

    move-result v1

    add-int v3, v1, v6

    .line 1023
    .local v3, adapterIndex:I
    if-eqz v0, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    iget-object v4, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    iget-object v4, v4, Lcom/wanduoduo/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1025
    const/4 v1, 0x1

    .line 1033
    .end local v2           #child:Landroid/view/View;
    .end local v3           #adapterIndex:I
    :goto_0
    return v1

    .line 1029
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #getter for: Lcom/wanduoduo/widget/HorizontalListView;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$1200(Lcom/wanduoduo/widget/HorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #getter for: Lcom/wanduoduo/widget/HorizontalListView;->mBlockTouchAction:Z
    invoke-static {v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$1000(Lcom/wanduoduo/widget/HorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1030
    iget-object v1, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #getter for: Lcom/wanduoduo/widget/HorizontalListView;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$1200(Lcom/wanduoduo/widget/HorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v4, p0, Lcom/wanduoduo/widget/HorizontalListView$GestureListener;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-interface {v1, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1033
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
