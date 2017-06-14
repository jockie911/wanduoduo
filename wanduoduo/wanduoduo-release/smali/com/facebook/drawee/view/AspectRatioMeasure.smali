.class public Lcom/facebook/drawee/view/AspectRatioMeasure;
.super Ljava/lang/Object;
.source "AspectRatioMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static shouldAdjust(I)Z
    .locals 1
    .parameter "layoutDimension"

    .prologue
    .line 77
    if-eqz p0, :cond_0

    const/4 v0, -0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateMeasureSpec(Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;FLandroid/view/ViewGroup$LayoutParams;II)V
    .locals 9
    .parameter "spec"
    .end parameter
    .parameter "aspectRatio"
    .end parameter
    .parameter "layoutParams"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "widthPadding"
    .end parameter
    .parameter "heightPadding"
    .end parameter

    .prologue
    const/high16 v8, 0x4000

    .line 59
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-lez v6, :cond_0

    if-nez p2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget v6, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6}, Lcom/facebook/drawee/view/AspectRatioMeasure;->shouldAdjust(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 63
    iget v6, p0, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;->width:I

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 64
    .local v5, widthSpecSize:I
    sub-int v6, v5, p3

    int-to-float v6, v6

    div-float/2addr v6, p1

    int-to-float v7, p4

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 65
    .local v0, desiredHeight:I
    iget v6, p0, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;->height:I

    invoke-static {v0, v6}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    .line 66
    .local v3, resolvedHeight:I
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iput v6, p0, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;->height:I

    goto :goto_0

    .line 67
    .end local v0           #desiredHeight:I
    .end local v3           #resolvedHeight:I
    .end local v5           #widthSpecSize:I
    :cond_2
    iget v6, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6}, Lcom/facebook/drawee/view/AspectRatioMeasure;->shouldAdjust(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    iget v6, p0, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;->height:I

    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 69
    .local v2, heightSpecSize:I
    sub-int v6, v2, p4

    int-to-float v6, v6

    mul-float/2addr v6, p1

    int-to-float v7, p3

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 70
    .local v1, desiredWidth:I
    iget v6, p0, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;->width:I

    invoke-static {v1, v6}, Landroid/view/View;->resolveSize(II)I

    move-result v4

    .line 71
    .local v4, resolvedWidth:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iput v6, p0, Lcom/facebook/drawee/view/AspectRatioMeasure$Spec;->width:I

    goto :goto_0
.end method
