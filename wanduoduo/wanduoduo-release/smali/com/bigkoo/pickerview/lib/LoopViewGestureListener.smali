.class final Lcom/bigkoo/pickerview/lib/LoopViewGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LoopViewGestureListener.java"


# instance fields
.field final loopView:Lcom/bigkoo/pickerview/lib/WheelView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/lib/WheelView;)V
    .locals 0
    .parameter "loopview"

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/bigkoo/pickerview/lib/LoopViewGestureListener;->loopView:Lcom/bigkoo/pickerview/lib/WheelView;

    .line 11
    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/bigkoo/pickerview/lib/LoopViewGestureListener;->loopView:Lcom/bigkoo/pickerview/lib/WheelView;

    invoke-virtual {v0, p4}, Lcom/bigkoo/pickerview/lib/WheelView;->scrollBy(F)V

    .line 16
    const/4 v0, 0x1

    return v0
.end method
