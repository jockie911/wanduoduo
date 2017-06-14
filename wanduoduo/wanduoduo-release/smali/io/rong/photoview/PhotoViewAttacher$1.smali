.class Lio/rong/photoview/PhotoViewAttacher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lio/rong/photoview/PhotoViewAttacher;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lio/rong/photoview/PhotoViewAttacher$1;->this$0:Lio/rong/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lio/rong/photoview/PhotoViewAttacher$1;->this$0:Lio/rong/photoview/PhotoViewAttacher;

    #getter for: Lio/rong/photoview/PhotoViewAttacher;->mSingleFlingListener:Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;
    invoke-static {v1}, Lio/rong/photoview/PhotoViewAttacher;->access$100(Lio/rong/photoview/PhotoViewAttacher;)Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lio/rong/photoview/PhotoViewAttacher$1;->this$0:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lio/rong/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    sget v2, Lio/rong/photoview/PhotoViewAttacher;->SINGLE_TOUCH:I

    if-gt v1, v2, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    sget v2, Lio/rong/photoview/PhotoViewAttacher;->SINGLE_TOUCH:I

    if-gt v1, v2, :cond_0

    .line 207
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher$1;->this$0:Lio/rong/photoview/PhotoViewAttacher;

    #getter for: Lio/rong/photoview/PhotoViewAttacher;->mSingleFlingListener:Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;
    invoke-static {v0}, Lio/rong/photoview/PhotoViewAttacher;->access$100(Lio/rong/photoview/PhotoViewAttacher;)Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lio/rong/photoview/PhotoViewAttacher$OnSingleFlingListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 189
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher$1;->this$0:Lio/rong/photoview/PhotoViewAttacher;

    #getter for: Lio/rong/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lio/rong/photoview/PhotoViewAttacher;->access$000(Lio/rong/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lio/rong/photoview/PhotoViewAttacher$1;->this$0:Lio/rong/photoview/PhotoViewAttacher;

    #getter for: Lio/rong/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lio/rong/photoview/PhotoViewAttacher;->access$000(Lio/rong/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lio/rong/photoview/PhotoViewAttacher$1;->this$0:Lio/rong/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lio/rong/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 192
    :cond_0
    return-void
.end method
