.class public Lcom/cjj/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dpValue"

    .prologue
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 9
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static limitValue(FF)F
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 18
    const/4 v2, 0x0

    .line 19
    .local v2, valve:F
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 20
    .local v1, min:F
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 21
    .local v0, max:F
    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    .line 22
    :goto_0
    cmpg-float v3, v2, v0

    if-gez v3, :cond_1

    .line 23
    :goto_1
    return v2

    :cond_0
    move v2, v1

    .line 21
    goto :goto_0

    :cond_1
    move v2, v0

    .line 22
    goto :goto_1
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
