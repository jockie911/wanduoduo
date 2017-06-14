.class public final Lio/rong/photoview/gestures/VersionedGestureDetector;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lio/rong/photoview/gestures/OnGestureListener;)Lio/rong/photoview/gestures/GestureDetector;
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .local v1, sdkVersion:I
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 36
    new-instance v0, Lio/rong/photoview/gestures/CupcakeGestureDetector;

    invoke-direct {v0, p0}, Lio/rong/photoview/gestures/CupcakeGestureDetector;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, detector:Lio/rong/photoview/gestures/GestureDetector;
    :goto_0
    invoke-interface {v0, p1}, Lio/rong/photoview/gestures/GestureDetector;->setOnGestureListener(Lio/rong/photoview/gestures/OnGestureListener;)V

    .line 45
    return-object v0

    .line 37
    .end local v0           #detector:Lio/rong/photoview/gestures/GestureDetector;
    :cond_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 38
    new-instance v0, Lio/rong/photoview/gestures/EclairGestureDetector;

    invoke-direct {v0, p0}, Lio/rong/photoview/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    .restart local v0       #detector:Lio/rong/photoview/gestures/GestureDetector;
    goto :goto_0

    .line 40
    .end local v0           #detector:Lio/rong/photoview/gestures/GestureDetector;
    :cond_1
    new-instance v0, Lio/rong/photoview/gestures/FroyoGestureDetector;

    invoke-direct {v0, p0}, Lio/rong/photoview/gestures/FroyoGestureDetector;-><init>(Landroid/content/Context;)V

    .restart local v0       #detector:Lio/rong/photoview/gestures/GestureDetector;
    goto :goto_0
.end method
