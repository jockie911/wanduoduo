.class Lio/rong/photoview/gestures/FroyoGestureDetector$1;
.super Ljava/lang/Object;
.source "FroyoGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/photoview/gestures/FroyoGestureDetector;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/photoview/gestures/FroyoGestureDetector;


# direct methods
.method constructor <init>(Lio/rong/photoview/gestures/FroyoGestureDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lio/rong/photoview/gestures/FroyoGestureDetector$1;->this$0:Lio/rong/photoview/gestures/FroyoGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter "detector"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 38
    .local v0, scaleFactor:F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 43
    :goto_0
    return v1

    .line 41
    :cond_1
    iget-object v1, p0, Lio/rong/photoview/gestures/FroyoGestureDetector$1;->this$0:Lio/rong/photoview/gestures/FroyoGestureDetector;

    iget-object v1, v1, Lio/rong/photoview/gestures/FroyoGestureDetector;->mListener:Lio/rong/photoview/gestures/OnGestureListener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lio/rong/photoview/gestures/OnGestureListener;->onScale(FFF)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 54
    return-void
.end method
