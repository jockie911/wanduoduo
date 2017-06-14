.class Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;
.super Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;
.source "ScalingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/drawable/ScalingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleTypeCenterInside"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;

    invoke-direct {v0}, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;-><init>()V

    sput-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleTypeCenterInside;->INSTANCE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/facebook/drawee/drawable/ScalingUtils$AbstractScaleType;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformImpl(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFFFF)V
    .locals 7
    .parameter "outTransform"
    .parameter "parentRect"
    .parameter "childWidth"
    .parameter "childHeight"
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    const/high16 v6, 0x3f00

    .line 278
    invoke-static {p7, p8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 279
    .local v2, scale:F
    iget v3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p3

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    add-float v0, v3, v4

    .line 280
    .local v0, dx:F
    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p4

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    add-float v1, v3, v4

    .line 281
    .local v1, dy:F
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 282
    add-float v3, v0, v6

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v4, v1, v6

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 283
    return-void
.end method
