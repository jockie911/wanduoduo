.class public abstract Lio/rong/photoview/scrollerproxy/ScrollerProxy;
.super Ljava/lang/Object;
.source "ScrollerProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScroller(Landroid/content/Context;)Lio/rong/photoview/scrollerproxy/ScrollerProxy;
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 28
    new-instance v0, Lio/rong/photoview/scrollerproxy/PreGingerScroller;

    invoke-direct {v0, p0}, Lio/rong/photoview/scrollerproxy/PreGingerScroller;-><init>(Landroid/content/Context;)V

    .line 32
    :goto_0
    return-object v0

    .line 29
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 30
    new-instance v0, Lio/rong/photoview/scrollerproxy/GingerScroller;

    invoke-direct {v0, p0}, Lio/rong/photoview/scrollerproxy/GingerScroller;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lio/rong/photoview/scrollerproxy/IcsScroller;

    invoke-direct {v0, p0}, Lio/rong/photoview/scrollerproxy/IcsScroller;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract computeScrollOffset()Z
.end method

.method public abstract fling(IIIIIIIIII)V
.end method

.method public abstract forceFinished(Z)V
.end method

.method public abstract getCurrX()I
.end method

.method public abstract getCurrY()I
.end method

.method public abstract isFinished()Z
.end method
