.class Lcom/cjj/CircleProgressBar$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cjj/CircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleDiameter:I

.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I

.field final synthetic this$0:Lcom/cjj/CircleProgressBar;


# direct methods
.method public constructor <init>(Lcom/cjj/CircleProgressBar;II)V
    .locals 7
    .parameter
    .parameter "shadowRadius"
    .parameter "circleDiameter"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->this$0:Lcom/cjj/CircleProgressBar;

    .line 441
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 442
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 443
    iput p2, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mShadowRadius:I

    .line 444
    iput p3, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    .line 445
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mShadowRadius:I

    int-to-float v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    .line 449
    iget-object v0, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 450
    return-void

    .line 445
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3dt
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 454
    iget-object v2, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->this$0:Lcom/cjj/CircleProgressBar;

    invoke-virtual {v2}, Lcom/cjj/CircleProgressBar;->getWidth()I

    move-result v1

    .line 455
    .local v1, viewWidth:I
    iget-object v2, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->this$0:Lcom/cjj/CircleProgressBar;

    invoke-virtual {v2}, Lcom/cjj/CircleProgressBar;->getHeight()I

    move-result v0

    .line 456
    .local v0, viewHeight:I
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mShadowRadius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 458
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/cjj/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 459
    return-void
.end method
