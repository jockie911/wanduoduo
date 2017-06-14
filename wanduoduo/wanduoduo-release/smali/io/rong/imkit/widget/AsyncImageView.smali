.class public Lio/rong/imkit/widget/AsyncImageView;
.super Landroid/widget/ImageView;
.source "AsyncImageView.java"


# static fields
.field private static final AVATAR_SIZE:I = 0x50

.field private static final TAG:Ljava/lang/String; = "AsyncImageView"


# instance fields
.field private isCircle:Z

.field private mCornerRadius:I

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasMask:Z

.field private mShardWeakBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mWeakBitmap:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private minShortSideSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput v9, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    .line 45
    iput v7, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    .line 59
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    sget-object v8, Lio/rong/imkit/R$styleable;->AsyncImageView:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, a:Landroid/content/res/TypedArray;
    sget v8, Lio/rong/imkit/R$styleable;->AsyncImageView_RCDefDrawable:I

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 62
    .local v5, resId:I
    sget v8, Lio/rong/imkit/R$styleable;->AsyncImageView_RCShape:I

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-ne v8, v6, :cond_3

    :goto_1
    iput-boolean v6, p0, Lio/rong/imkit/widget/AsyncImageView;->isCircle:Z

    .line 63
    sget v6, Lio/rong/imkit/R$styleable;->AsyncImageView_RCMinShortSideSize:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    .line 64
    sget v6, Lio/rong/imkit/R$styleable;->AsyncImageView_RCCornerRadius:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    .line 65
    sget v6, Lio/rong/imkit/R$styleable;->AsyncImageView_RCMask:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lio/rong/imkit/widget/AsyncImageView;->mHasMask:Z

    .line 67
    if-eqz v5, :cond_2

    .line 68
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    iget-object v6, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 73
    invoke-direct {p0, v5, v7}, Lio/rong/imkit/widget/AsyncImageView;->createDisplayImageOptions(IZ)Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 74
    .local v4, options:Lio/rong/imageloader/core/DisplayImageOptions;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lio/rong/imageloader/core/DisplayImageOptions;->getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 75
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v2}, Lio/rong/imkit/widget/AsyncImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Lio/rong/imageloader/core/imageaware/ImageViewAware;

    invoke-direct {v3, p0}, Lio/rong/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    .line 77
    .local v3, imageViewAware:Lio/rong/imageloader/core/imageaware/ImageViewAware;
    invoke-virtual {v4}, Lio/rong/imageloader/core/DisplayImageOptions;->getDisplayer()Lio/rong/imageloader/core/display/BitmapDisplayer;

    move-result-object v6

    sget-object v7, Lio/rong/imageloader/core/assist/LoadedFrom;->DISC_CACHE:Lio/rong/imageloader/core/assist/LoadedFrom;

    invoke-interface {v6, v1, v3, v7}, Lio/rong/imageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lio/rong/imageloader/core/imageaware/ImageAware;Lio/rong/imageloader/core/assist/LoadedFrom;)V

    goto :goto_0

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #imageViewAware:Lio/rong/imageloader/core/imageaware/ImageViewAware;
    .end local v4           #options:Lio/rong/imageloader/core/DisplayImageOptions;
    :cond_3
    move v6, v7

    .line 62
    goto :goto_1
.end method

.method private createDisplayImageOptions(IZ)Lio/rong/imageloader/core/DisplayImageOptions;
    .locals 6
    .parameter "defaultResId"
    .parameter "cacheInMemory"

    .prologue
    .line 381
    new-instance v0, Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 382
    .local v0, builder:Lio/rong/imageloader/core/DisplayImageOptions$Builder;
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 383
    .local v1, defaultDrawable:Landroid/graphics/drawable/Drawable;
    if-lez p1, :cond_0

    .line 385
    :try_start_0
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 391
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 392
    invoke-virtual {v0, v1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(Landroid/graphics/drawable/Drawable;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    .line 393
    invoke-virtual {v0, v1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(Landroid/graphics/drawable/Drawable;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    .line 394
    invoke-virtual {v0, v1}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->showImageOnFail(Landroid/graphics/drawable/Drawable;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    .line 397
    :cond_1
    iget-boolean v4, p0, Lio/rong/imkit/widget/AsyncImageView;->isCircle:Z

    if-eqz v4, :cond_2

    .line 398
    new-instance v4, Lio/rong/imageloader/core/display/CircleBitmapDisplayer;

    invoke-direct {v4}, Lio/rong/imageloader/core/display/CircleBitmapDisplayer;-><init>()V

    invoke-virtual {v0, v4}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->displayer(Lio/rong/imageloader/core/display/BitmapDisplayer;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    .line 405
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v5}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->build()Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 410
    .local v3, options:Lio/rong/imageloader/core/DisplayImageOptions;
    return-object v3

    .line 386
    .end local v3           #options:Lio/rong/imageloader/core/DisplayImageOptions;
    :catch_0
    move-exception v2

    .line 387
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 399
    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_2
    iget v4, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    if-lez v4, :cond_3

    .line 400
    new-instance v4, Lio/rong/imageloader/core/display/RoundedBitmapDisplayer;

    iget v5, p0, Lio/rong/imkit/widget/AsyncImageView;->mCornerRadius:I

    invoke-direct {v4, v5}, Lio/rong/imageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    invoke-virtual {v0, v4}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->displayer(Lio/rong/imageloader/core/display/BitmapDisplayer;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    goto :goto_1

    .line 402
    :cond_3
    new-instance v4, Lio/rong/imageloader/core/display/SimpleBitmapDisplayer;

    invoke-direct {v4}, Lio/rong/imageloader/core/display/SimpleBitmapDisplayer;-><init>()V

    invoke-virtual {v0, v4}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->displayer(Lio/rong/imageloader/core/display/BitmapDisplayer;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    goto :goto_1
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "drawable"

    .prologue
    const/4 v7, 0x0

    .line 321
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 322
    .local v4, width:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 323
    .local v3, height:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 324
    .local v2, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 325
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 326
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 327
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    return-object v0

    .line 323
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "uri"

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 368
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 369
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 372
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "AsyncImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmap Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getShardImage(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "drawable_bg"
    .parameter "bp"
    .parameter "canvas"

    .prologue
    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 130
    .local v11, width:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 131
    .local v4, height:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lio/rong/imkit/widget/AsyncImageView;->mShardWeakBitmap:Ljava/lang/ref/WeakReference;

    if-nez v12, :cond_1

    const/4 v1, 0x0

    .line 133
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    if-lez v11, :cond_0

    if-gtz v4, :cond_2

    .line 167
    :cond_0
    :goto_1
    return-void

    .line 131
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lio/rong/imkit/widget/AsyncImageView;->mShardWeakBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    move-object v1, v12

    goto :goto_0

    .line 135
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 137
    :cond_3
    :try_start_0
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v4, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 144
    :goto_2
    if-eqz v1, :cond_0

    .line 145
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 146
    .local v8, rCanvas:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 147
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    new-instance v9, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13, v11, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    .local v9, rect:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v12, 0x1

    const/4 v13, 0x1

    add-int/lit8 v14, v11, -0x1

    add-int/lit8 v15, v4, -0x1

    invoke-direct {v10, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 151
    .local v10, rectF:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 152
    .local v2, drawable_in:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v10}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 153
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v12, :cond_4

    move-object/from16 v7, p1

    .line 155
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 156
    .local v7, patchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 157
    invoke-virtual {v7}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 158
    .local v5, maskPaint:Landroid/graphics/Paint;
    new-instance v12, Landroid/graphics/PorterDuffXfermode;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 159
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    .end local v5           #maskPaint:Landroid/graphics/Paint;
    .end local v7           #patchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    :cond_4
    new-instance v12, Ljava/lang/ref/WeakReference;

    invoke-direct {v12, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lio/rong/imkit/widget/AsyncImageView;->mShardWeakBitmap:Ljava/lang/ref/WeakReference;

    .line 162
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v12, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 138
    .end local v2           #drawable_in:Landroid/graphics/drawable/BitmapDrawable;
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v8           #rCanvas:Landroid/graphics/Canvas;
    .end local v9           #rect:Landroid/graphics/Rect;
    .end local v10           #rectF:Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .line 139
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v12, "AsyncImageView"

    const-string v13, "getShardImage OutOfMemoryError"

    invoke-static {v12, v13}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 141
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_2

    .line 165
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private setLayoutParam(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    .line 414
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v6, v7

    .line 415
    .local v6, width:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v2, v7

    .line 418
    .local v2, height:F
    const/16 v3, 0x64

    .line 420
    .local v3, minSize:I
    iget v7, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 421
    iget v7, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    cmpg-float v7, v6, v7

    if-lez v7, :cond_0

    iget v7, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_5

    .line 422
    :cond_0
    div-float v5, v6, v2

    .line 424
    .local v5, scale:F
    const/high16 v7, 0x3f80

    cmpl-float v7, v5, v7

    if-lez v7, :cond_4

    .line 425
    iget v7, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    div-float/2addr v7, v5

    float-to-int v0, v7

    .line 426
    .local v0, finalHeight:I
    if-ge v0, v3, :cond_1

    .line 427
    move v0, v3

    .line 429
    :cond_1
    iget v7, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    float-to-int v1, v7

    .line 438
    .local v1, finalWidth:I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 439
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 440
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 441
    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/AsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    .end local v0           #finalHeight:I
    .end local v1           #finalWidth:I
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #scale:F
    :cond_3
    :goto_1
    return-void

    .line 431
    .restart local v5       #scale:F
    :cond_4
    iget v7, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    float-to-int v0, v7

    .line 432
    .restart local v0       #finalHeight:I
    iget v7, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    mul-float/2addr v7, v5

    float-to-int v1, v7

    .line 433
    .restart local v1       #finalWidth:I
    if-ge v1, v3, :cond_2

    .line 434
    move v1, v3

    goto :goto_0

    .line 443
    .end local v0           #finalHeight:I
    .end local v1           #finalWidth:I
    .end local v5           #scale:F
    :cond_5
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 444
    .restart local v4       #params:Landroid/view/ViewGroup$LayoutParams;
    float-to-int v7, v2

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 445
    float-to-int v7, v6

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 446
    invoke-virtual {p0, v4}, Lio/rong/imkit/widget/AsyncImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method


# virtual methods
.method public invalidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 190
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_0
    iput-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    .line 194
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView;->mShardWeakBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    .line 195
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView;->mShardWeakBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 196
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 198
    :cond_2
    iput-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mShardWeakBitmap:Ljava/lang/ref/WeakReference;

    .line 200
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 201
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 173
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    :cond_0
    iput-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    .line 177
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView;->mShardWeakBitmap:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3

    .line 178
    iget-object v1, p0, Lio/rong/imkit/widget/AsyncImageView;->mShardWeakBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 179
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 180
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 181
    :cond_2
    iput-object v2, p0, Lio/rong/imkit/widget/AsyncImageView;->mShardWeakBitmap:Ljava/lang/ref/WeakReference;

    .line 183
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 184
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    iget-boolean v10, p0, Lio/rong/imkit/widget/AsyncImageView;->mHasMask:Z

    if-eqz v10, :cond_1

    .line 85
    iget-object v10, p0, Lio/rong/imkit/widget/AsyncImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    if-nez v10, :cond_2

    const/4 v1, 0x0

    .line 86
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 87
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lio/rong/imkit/widget/RCMessageFrameLayout;

    .line 88
    .local v6, parent:Lio/rong/imkit/widget/RCMessageFrameLayout;
    invoke-virtual {v6}, Lio/rong/imkit/widget/RCMessageFrameLayout;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 90
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 91
    :cond_0
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getWidth()I

    move-result v9

    .line 92
    .local v9, width:I
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getHeight()I

    move-result v4

    .line 93
    .local v4, height:I
    if-lez v9, :cond_1

    if-gtz v4, :cond_3

    .line 126
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #height:I
    .end local v6           #parent:Lio/rong/imkit/widget/RCMessageFrameLayout;
    .end local v9           #width:I
    :cond_1
    :goto_1
    return-void

    .line 85
    :cond_2
    iget-object v10, p0, Lio/rong/imkit/widget/AsyncImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    move-object v1, v10

    goto :goto_0

    .line 96
    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #height:I
    .restart local v6       #parent:Lio/rong/imkit/widget/RCMessageFrameLayout;
    .restart local v9       #width:I
    :cond_3
    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    :goto_2
    if-eqz v1, :cond_1

    .line 103
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    .local v8, rCanvas:Landroid/graphics/Canvas;
    if-eqz v2, :cond_5

    .line 105
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11, v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    if-eqz v0, :cond_4

    instance-of v10, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v10, :cond_4

    move-object v7, v0

    .line 108
    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    .line 109
    .local v7, patchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v9, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 110
    invoke-virtual {v7}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 111
    .local v5, maskPaint:Landroid/graphics/Paint;
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 112
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    .end local v5           #maskPaint:Landroid/graphics/Paint;
    .end local v7           #patchDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    :cond_4
    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, p0, Lio/rong/imkit/widget/AsyncImageView;->mWeakBitmap:Ljava/lang/ref/WeakReference;

    .line 116
    :cond_5
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lio/rong/imkit/R$color;->rc_normal_bg:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 117
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p1, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 118
    invoke-direct {p0, v0, v1, p1}, Lio/rong/imkit/widget/AsyncImageView;->getShardImage(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 97
    .end local v8           #rCanvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v3

    .line 98
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v10, "AsyncImageView"

    const-string v11, "onDraw OutOfMemoryError"

    invoke-static {v10, v11}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 100
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_2

    .line 121
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    .end local v4           #height:I
    .end local v9           #width:I
    :cond_6
    invoke-virtual {p0}, Lio/rong/imkit/widget/AsyncImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lio/rong/imkit/R$color;->rc_normal_bg:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 122
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p1, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    invoke-direct {p0, v0, v1, p1}, Lio/rong/imkit/widget/AsyncImageView;->getShardImage(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method public setAvatar(Landroid/net/Uri;)V
    .locals 7
    .parameter "imageUri"

    .prologue
    const/4 v5, 0x0

    const/16 v0, 0x50

    .line 356
    if-eqz p1, :cond_0

    .line 357
    new-instance v2, Lio/rong/imageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p0}, Lio/rong/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    .line 358
    .local v2, imageViewAware:Lio/rong/imageloader/core/imageaware/ImageViewAware;
    new-instance v4, Lio/rong/imageloader/core/assist/ImageSize;

    invoke-direct {v4, v0, v0}, Lio/rong/imageloader/core/assist/ImageSize;-><init>(II)V

    .line 359
    .local v4, imageSize:Lio/rong/imageloader/core/assist/ImageSize;
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/rong/imkit/widget/AsyncImageView;->createDisplayImageOptions(IZ)Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 360
    .local v3, options:Lio/rong/imageloader/core/DisplayImageOptions;
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lio/rong/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lio/rong/imageloader/core/imageaware/ImageAware;Lio/rong/imageloader/core/DisplayImageOptions;Lio/rong/imageloader/core/assist/ImageSize;Lio/rong/imageloader/core/listener/ImageLoadingListener;Lio/rong/imageloader/core/listener/ImageLoadingProgressListener;)V

    .line 362
    .end local v2           #imageViewAware:Lio/rong/imageloader/core/imageaware/ImageViewAware;
    .end local v3           #options:Lio/rong/imageloader/core/DisplayImageOptions;
    .end local v4           #imageSize:Lio/rong/imageloader/core/assist/ImageSize;
    :cond_0
    return-void
.end method

.method public setAvatar(Ljava/lang/String;I)V
    .locals 7
    .parameter "imageUri"
    .parameter "defaultResId"

    .prologue
    const/4 v5, 0x0

    const/16 v0, 0x50

    .line 340
    new-instance v2, Lio/rong/imageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p0}, Lio/rong/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    .line 341
    .local v2, imageViewAware:Lio/rong/imageloader/core/imageaware/ImageViewAware;
    new-instance v4, Lio/rong/imageloader/core/assist/ImageSize;

    invoke-direct {v4, v0, v0}, Lio/rong/imageloader/core/assist/ImageSize;-><init>(II)V

    .line 342
    .local v4, imageSize:Lio/rong/imageloader/core/assist/ImageSize;
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lio/rong/imkit/widget/AsyncImageView;->createDisplayImageOptions(IZ)Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 343
    .local v3, options:Lio/rong/imageloader/core/DisplayImageOptions;
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v0

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lio/rong/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lio/rong/imageloader/core/imageaware/ImageAware;Lio/rong/imageloader/core/DisplayImageOptions;Lio/rong/imageloader/core/assist/ImageSize;Lio/rong/imageloader/core/listener/ImageLoadingListener;Lio/rong/imageloader/core/listener/ImageLoadingProgressListener;)V

    .line 344
    return-void
.end method

.method public setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "drawable"

    .prologue
    const/4 v3, 0x0

    .line 209
    if-eqz p1, :cond_0

    .line 210
    iput-object p1, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 211
    invoke-direct {p0, v3, v3}, Lio/rong/imkit/widget/AsyncImageView;->createDisplayImageOptions(IZ)Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 212
    .local v2, options:Lio/rong/imageloader/core/DisplayImageOptions;
    iget-object v3, p0, Lio/rong/imkit/widget/AsyncImageView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Lio/rong/imkit/widget/AsyncImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Lio/rong/imageloader/core/imageaware/ImageViewAware;

    invoke-direct {v1, p0}, Lio/rong/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    .line 214
    .local v1, imageViewAware:Lio/rong/imageloader/core/imageaware/ImageViewAware;
    invoke-virtual {v2}, Lio/rong/imageloader/core/DisplayImageOptions;->getDisplayer()Lio/rong/imageloader/core/display/BitmapDisplayer;

    move-result-object v3

    sget-object v4, Lio/rong/imageloader/core/assist/LoadedFrom;->DISC_CACHE:Lio/rong/imageloader/core/assist/LoadedFrom;

    invoke-interface {v3, v0, v1, v4}, Lio/rong/imageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lio/rong/imageloader/core/imageaware/ImageAware;Lio/rong/imageloader/core/assist/LoadedFrom;)V

    .line 216
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #imageViewAware:Lio/rong/imageloader/core/imageaware/ImageViewAware;
    .end local v2           #options:Lio/rong/imageloader/core/DisplayImageOptions;
    :cond_0
    return-void
.end method

.method public setLocationResource(Landroid/net/Uri;IIILio/rong/imkit/widget/IImageLoadingListener;)V
    .locals 5
    .parameter "imageUri"
    .parameter "defRes"
    .parameter "w"
    .parameter "h"
    .parameter "loadingListener"

    .prologue
    const/4 v3, 0x0

    .line 248
    new-instance v0, Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 249
    .local v0, builder:Lio/rong/imageloader/core/DisplayImageOptions$Builder;
    invoke-virtual {v0, v3}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/widget/AsyncImageView$1;

    invoke-direct {v3, p0, p3, p4}, Lio/rong/imkit/widget/AsyncImageView$1;-><init>(Lio/rong/imkit/widget/AsyncImageView;II)V

    invoke-virtual {v2, v3}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->preProcessor(Lio/rong/imageloader/core/process/BitmapProcessor;)Lio/rong/imageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imageloader/core/DisplayImageOptions$Builder;->build()Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 277
    .local v1, options:Lio/rong/imageloader/core/DisplayImageOptions;
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    new-instance v4, Lio/rong/imkit/widget/AsyncImageView$2;

    invoke-direct {v4, p0, p5}, Lio/rong/imkit/widget/AsyncImageView$2;-><init>(Lio/rong/imkit/widget/AsyncImageView;Lio/rong/imkit/widget/IImageLoadingListener;)V

    invoke-virtual {v3, v2, p0, v1, v4}, Lio/rong/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lio/rong/imageloader/core/DisplayImageOptions;Lio/rong/imageloader/core/listener/ImageLoadingListener;)V

    .line 302
    return-void

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public setResource(Landroid/net/Uri;)V
    .locals 8
    .parameter "imageUri"

    .prologue
    const/4 v4, 0x0

    .line 224
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/rong/imkit/widget/AsyncImageView;->createDisplayImageOptions(IZ)Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v3

    .line 225
    .local v3, options:Lio/rong/imageloader/core/DisplayImageOptions;
    iget v0, p0, Lio/rong/imkit/widget/AsyncImageView;->minShortSideSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    if-eqz p1, :cond_2

    .line 226
    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v7, file:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    new-instance v2, Lio/rong/imageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p0}, Lio/rong/imageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    .line 229
    .local v2, imageViewAware:Lio/rong/imageloader/core/imageaware/ImageViewAware;
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lio/rong/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lio/rong/imageloader/core/imageaware/ImageAware;Lio/rong/imageloader/core/DisplayImageOptions;Lio/rong/imageloader/core/listener/ImageLoadingListener;Lio/rong/imageloader/core/listener/ImageLoadingProgressListener;)V

    .line 240
    .end local v2           #imageViewAware:Lio/rong/imageloader/core/imageaware/ImageViewAware;
    .end local v7           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 231
    .restart local v7       #file:Ljava/io/File;
    :cond_1
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/AsyncImageView;->getBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 232
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 233
    invoke-direct {p0, v6}, Lio/rong/imkit/widget/AsyncImageView;->setLayoutParam(Landroid/graphics/Bitmap;)V

    .line 234
    invoke-virtual {p0, v6}, Lio/rong/imkit/widget/AsyncImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 238
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #file:Ljava/io/File;
    :cond_2
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v0

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v0, v4, p0, v3}, Lio/rong/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lio/rong/imageloader/core/DisplayImageOptions;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public setResource(Ljava/lang/String;I)V
    .locals 2
    .parameter "imageUri"
    .parameter "defaultResId"

    .prologue
    .line 312
    if-nez p1, :cond_0

    if-gtz p2, :cond_0

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lio/rong/imkit/widget/AsyncImageView;->createDisplayImageOptions(IZ)Lio/rong/imageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 317
    .local v0, options:Lio/rong/imageloader/core/DisplayImageOptions;
    invoke-static {}, Lio/rong/imageloader/core/ImageLoader;->getInstance()Lio/rong/imageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0}, Lio/rong/imageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lio/rong/imageloader/core/DisplayImageOptions;)V

    goto :goto_0
.end method
