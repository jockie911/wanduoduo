.class public Lcom/android/liuzhuang/rcimageview/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# instance fields
.field private radius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/liuzhuang/rcimageview/CircleImageView;->radius:I

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/liuzhuang/rcimageview/CircleImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/liuzhuang/rcimageview/CircleImageView;->radius:I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/liuzhuang/rcimageview/CircleImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/liuzhuang/rcimageview/CircleImageView;->radius:I

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/liuzhuang/rcimageview/CircleImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "drawable"

    .prologue
    const/4 v6, 0x2

    .line 79
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    .line 80
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v3, height:I
    .local v4, width:I
    .restart local p0
    :goto_0
    return-object v0

    .line 84
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #height:I
    .end local v4           #width:I
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 85
    .restart local v4       #width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 87
    .restart local v3       #height:I
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 89
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 92
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const/4 v0, 0x0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    sget-object v1, Lcom/android/liuzhuang/rcimageview/R$styleable;->CircleImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, typedArray:Landroid/content/res/TypedArray;
    sget v1, Lcom/android/liuzhuang/rcimageview/R$styleable;->CircleImageView_radius:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/liuzhuang/rcimageview/CircleImageView;->radius:I

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/high16 v10, 0x3f80

    .line 46
    invoke-virtual {p0}, Lcom/android/liuzhuang/rcimageview/CircleImageView;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 47
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 76
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/android/liuzhuang/rcimageview/CircleImageView;->getMeasuredWidth()I

    move-result v7

    .line 52
    .local v7, width:I
    invoke-virtual {p0}, Lcom/android/liuzhuang/rcimageview/CircleImageView;->getMeasuredHeight()I

    move-result v2

    .line 53
    .local v2, height:I
    const/4 v0, 0x0

    .line 54
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/liuzhuang/rcimageview/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 55
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 56
    invoke-static {v1}, Lcom/android/liuzhuang/rcimageview/CircleImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-lez v8, :cond_3

    .line 60
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v0, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 62
    .local v6, shader:Landroid/graphics/BitmapShader;
    invoke-virtual {p0}, Lcom/android/liuzhuang/rcimageview/CircleImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/liuzhuang/rcimageview/CircleImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v10

    .line 63
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 62
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 64
    .local v5, scale:F
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    .local v3, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v3, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 66
    invoke-virtual {v6, v3}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 68
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 69
    .local v4, paint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 72
    div-int/lit8 v8, v7, 0x2

    int-to-float v9, v8

    div-int/lit8 v8, v2, 0x2

    int-to-float v10, v8

    iget v8, p0, Lcom/android/liuzhuang/rcimageview/CircleImageView;->radius:I

    const/4 v11, -0x1

    if-ne v8, v11, :cond_2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    :goto_1
    invoke-virtual {p1, v9, v10, v8, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/android/liuzhuang/rcimageview/CircleImageView;->radius:I

    int-to-float v8, v8

    goto :goto_1

    .line 74
    .end local v3           #matrix:Landroid/graphics/Matrix;
    .end local v4           #paint:Landroid/graphics/Paint;
    .end local v5           #scale:F
    .end local v6           #shader:Landroid/graphics/BitmapShader;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
