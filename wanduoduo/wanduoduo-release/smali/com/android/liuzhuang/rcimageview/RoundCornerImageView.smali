.class public Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;
.super Landroid/widget/ImageView;
.source "RoundCornerImageView.java"


# instance fields
.field private radius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->radius:F

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->radius:F

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->radius:F

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v6, 0x2

    .line 81
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 82
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v3, height:I
    .local v4, width:I
    .restart local p0
    :goto_0
    return-object v0

    .line 86
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #height:I
    .end local v4           #width:I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 87
    .restart local v4       #width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 89
    .restart local v3       #height:I
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 91
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 94
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const/4 v0, 0x0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    sget-object v1, Lcom/android/liuzhuang/rcimageview/R$styleable;->RoundCornerImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, typedArray:Landroid/content/res/TypedArray;
    sget v1, Lcom/android/liuzhuang/rcimageview/R$styleable;->RoundCornerImageView_rciv_radius:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->radius:F

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->isInEditMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 48
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 78
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->getMeasuredWidth()I

    move-result v8

    .line 53
    .local v8, width:I
    invoke-virtual {p0}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->getMeasuredHeight()I

    move-result v2

    .line 54
    .local v2, height:I
    const/4 v0, 0x0

    .line 55
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 56
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 57
    invoke-static {v1}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-lez v9, :cond_2

    .line 61
    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v0, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 63
    .local v7, shader:Landroid/graphics/BitmapShader;
    invoke-virtual {p0}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v11

    .line 64
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 63
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 65
    .local v6, scale:F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 66
    .local v3, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v3, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 67
    invoke-virtual {v7, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 69
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 70
    .local v4, paint:Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 73
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v9, v8

    int-to-float v10, v2

    invoke-direct {v5, v12, v12, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    .local v5, rect:Landroid/graphics/RectF;
    iget v9, p0, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->radius:F

    iget v10, p0, Lcom/android/liuzhuang/rcimageview/RoundCornerImageView;->radius:F

    invoke-virtual {p1, v5, v9, v10, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 76
    .end local v3           #matrix:Landroid/graphics/Matrix;
    .end local v4           #paint:Landroid/graphics/Paint;
    .end local v5           #rect:Landroid/graphics/RectF;
    .end local v6           #scale:F
    .end local v7           #shader:Landroid/graphics/BitmapShader;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
