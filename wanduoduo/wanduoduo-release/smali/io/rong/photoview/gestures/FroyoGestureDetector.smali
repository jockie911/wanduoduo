.class public Lio/rong/photoview/gestures/FroyoGestureDetector;
.super Lio/rong/photoview/gestures/EclairGestureDetector;
.source "FroyoGestureDetector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field protected final mDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lio/rong/photoview/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lio/rong/photoview/gestures/FroyoGestureDetector$1;

    invoke-direct {v0, p0}, Lio/rong/photoview/gestures/FroyoGestureDetector$1;-><init>(Lio/rong/photoview/gestures/FroyoGestureDetector;)V

    .line 56
    .local v0, mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lio/rong/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 57
    return-void
.end method


# virtual methods
.method public isScaling()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/rong/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lio/rong/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 68
    invoke-super {p0, p1}, Lio/rong/photoview/gestures/EclairGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x1

    goto :goto_0
.end method
