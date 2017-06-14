.class public Lio/rong/imkit/activity/AlbumBitmapCacheHelper;
.super Ljava/lang/Object;
.source "AlbumBitmapCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/activity/AlbumBitmapCacheHelper$ILoadImageCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumBitmapCacheHelper"

.field private static volatile instance:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;


# instance fields
.field private cache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private currentShowString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field tpe:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->instance:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x5

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->tpe:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 43
    .local v0, memory:I
    new-instance v1, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$1;

    invoke-direct {v1, p0, v0}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$1;-><init>(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;I)V

    iput-object v1, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->currentShowString:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->currentShowString:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;)Landroid/support/v4/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static centerSquareScaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"
    .parameter "edgeLength"

    .prologue
    .line 222
    if-eqz p0, :cond_0

    if-gtz p1, :cond_2

    .line 223
    :cond_0
    const/4 v2, 0x0

    .line 243
    :cond_1
    :goto_0
    return-object v2

    .line 225
    :cond_2
    move-object v2, p0

    .line 226
    .local v2, result:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 227
    .local v3, widthOrg:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 230
    .local v1, heightOrg:I
    sub-int v6, v3, p1

    div-int/lit8 v4, v6, 0x2

    .line 231
    .local v4, xTopLeft:I
    sub-int v6, v1, p1

    div-int/lit8 v5, v6, 0x2

    .line 233
    .local v5, yTopLeft:I
    if-nez v4, :cond_3

    if-eqz v5, :cond_1

    .line 236
    :cond_3
    :try_start_0
    invoke-static {p0, v4, v5, p1, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 237
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 238
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/OutOfMemoryError;
    goto :goto_0
.end method

.method private clearCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 76
    iput-object v1, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;

    .line 77
    iput-object v1, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->tpe:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 78
    sput-object v1, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->instance:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    .line 79
    return-void
.end method

.method private computeScale(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .parameter "options"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    .line 250
    if-nez p1, :cond_1

    move v1, v3

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 251
    :cond_1
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 252
    .local v2, widthScale:I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    int-to-float v5, p3

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 254
    .local v0, heightScale:I
    if-le v2, v0, :cond_2

    move v1, v2

    .line 255
    .local v1, scale:I
    :goto_1
    if-ge v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v1           #scale:I
    :cond_2
    move v1, v0

    .line 254
    goto :goto_1
.end method

.method private varargs decodeBitmapFromPath(Ljava/lang/String;IILio/rong/imkit/activity/AlbumBitmapCacheHelper$ILoadImageCallback;[Ljava/lang/Object;)V
    .locals 7
    .parameter "path"
    .parameter "width"
    .parameter "height"
    .parameter "callback"
    .parameter "objects"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v5, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$2;

    invoke-direct {v5, p0, p4, p1, p5}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$2;-><init>(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;Lio/rong/imkit/activity/AlbumBitmapCacheHelper$ILoadImageCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    .local v5, handler:Landroid/os/Handler;
    iget-object v6, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->tpe:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper$3;-><init>(Lio/rong/imkit/activity/AlbumBitmapCacheHelper;Ljava/lang/String;IILandroid/os/Handler;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method private getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 23
    .parameter "path"
    .parameter "widthLimit"
    .parameter "heightLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 296
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 297
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 298
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 300
    new-instance v9, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 301
    .local v9, exifInterface:Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v14

    .line 302
    .local v14, orientation:I
    const/16 v16, 0x1

    .line 303
    .local v16, sampleSize:I
    if-nez p2, :cond_4

    if-nez p3, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3, v2}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->computeScale(Landroid/graphics/BitmapFactory$Options;II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v16

    .line 335
    :goto_0
    :try_start_1
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    .local v13, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 337
    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 338
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    move-object v12, v13

    .line 344
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    :try_start_3
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 345
    .local v6, matrix:Landroid/graphics/Matrix;
    if-eqz v1, :cond_3

    .line 346
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 347
    .local v19, w:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 349
    .local v10, h:I
    const/4 v2, 0x6

    if-eq v14, v2, :cond_0

    const/16 v2, 0x8

    if-eq v14, v2, :cond_0

    const/4 v2, 0x5

    if-eq v14, v2, :cond_0

    const/4 v2, 0x7

    if-ne v14, v2, :cond_1

    .line 353
    :cond_0
    move/from16 v18, v19

    .line 354
    .local v18, tmp:I
    move/from16 v19, v10

    .line 355
    move/from16 v10, v18

    .line 357
    .end local v18           #tmp:I
    :cond_1
    packed-switch v14, :pswitch_data_0

    .line 382
    :goto_2
    if-eqz p2, :cond_2

    if-nez p3, :cond_b

    .line 389
    :cond_2
    :goto_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 395
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v9           #exifInterface:Landroid/media/ExifInterface;
    .end local v10           #h:I
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #orientation:I
    .end local v16           #sampleSize:I
    .end local v19           #w:I
    :cond_3
    :goto_4
    return-object v1

    .line 306
    .restart local v9       #exifInterface:Landroid/media/ExifInterface;
    .restart local v12       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v14       #orientation:I
    .restart local v16       #sampleSize:I
    :cond_4
    const/4 v2, 0x6

    if-eq v14, v2, :cond_5

    const/16 v2, 0x8

    if-eq v14, v2, :cond_5

    const/4 v2, 0x5

    if-eq v14, v2, :cond_5

    const/4 v2, 0x7

    if-ne v14, v2, :cond_6

    .line 310
    :cond_5
    move/from16 v18, p2

    .line 311
    .restart local v18       #tmp:I
    move/from16 p2, p3

    .line 312
    move/from16 p3, v18

    .line 315
    .end local v18           #tmp:I
    :cond_6
    iget v0, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    .line 316
    .local v20, width:I
    iget v11, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 317
    .local v11, height:I
    const/16 v17, 0x1

    .local v17, sampleW:I
    const/4 v15, 0x1

    .line 318
    .local v15, sampleH:I
    :goto_5
    div-int/lit8 v2, v20, 0x2

    move/from16 v0, p2

    if-le v2, v0, :cond_7

    .line 319
    div-int/lit8 v20, v20, 0x2

    .line 320
    shl-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 323
    :cond_7
    :goto_6
    div-int/lit8 v2, v11, 0x2

    move/from16 v0, p3

    if-le v2, v0, :cond_8

    .line 324
    div-int/lit8 v11, v11, 0x2

    .line 325
    shl-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 328
    :cond_8
    const v2, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v2, :cond_9

    const v2, 0x7fffffff

    move/from16 v0, p3

    if-ne v0, v2, :cond_a

    .line 329
    :cond_9
    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto/16 :goto_0

    .line 331
    :cond_a
    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto/16 :goto_0

    .line 339
    .end local v11           #height:I
    .end local v15           #sampleH:I
    .end local v17           #sampleW:I
    .end local v20           #width:I
    :catch_0
    move-exception v8

    .line 340
    .local v8, e:Ljava/lang/OutOfMemoryError;
    :goto_7
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 341
    iget v2, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 342
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    .line 359
    .end local v8           #e:Ljava/lang/OutOfMemoryError;
    .restart local v6       #matrix:Landroid/graphics/Matrix;
    .restart local v10       #h:I
    .restart local v19       #w:I
    :pswitch_0
    const/high16 v2, 0x42b4

    move/from16 v0, v19

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v10

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v6, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 391
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v9           #exifInterface:Landroid/media/ExifInterface;
    .end local v10           #h:I
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #orientation:I
    .end local v16           #sampleSize:I
    .end local v19           #w:I
    :catch_1
    move-exception v8

    .line 392
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 362
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #matrix:Landroid/graphics/Matrix;
    .restart local v9       #exifInterface:Landroid/media/ExifInterface;
    .restart local v10       #h:I
    .restart local v12       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v14       #orientation:I
    .restart local v16       #sampleSize:I
    .restart local v19       #w:I
    :pswitch_1
    const/high16 v2, 0x4334

    move/from16 v0, v19

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v10

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    :try_start_4
    invoke-virtual {v6, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto/16 :goto_2

    .line 365
    :pswitch_2
    const/high16 v2, 0x4387

    move/from16 v0, v19

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v10

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v6, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto/16 :goto_2

    .line 368
    :pswitch_3
    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_2

    .line 371
    :pswitch_4
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_2

    .line 374
    :pswitch_5
    const/high16 v2, 0x42b4

    move/from16 v0, v19

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v10

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v6, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 375
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_2

    .line 378
    :pswitch_6
    const/high16 v2, 0x4387

    move/from16 v0, v19

    int-to-float v3, v0

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v10

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {v6, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 379
    const/high16 v2, 0x3f80

    const/high16 v3, -0x4080

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_2

    .line 385
    :cond_b
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v21, v2, v3

    .line 386
    .local v21, xS:F
    move/from16 v0, p3

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v22, v2, v3

    .line 387
    .local v22, yS:F
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 339
    .end local v6           #matrix:Landroid/graphics/Matrix;
    .end local v10           #h:I
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v19           #w:I
    .end local v21           #xS:F
    .end local v22           #yS:F
    .restart local v13       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v8

    move-object v12, v13

    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #options:Landroid/graphics/BitmapFactory$Options;
    goto/16 :goto_7

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method private getBitmapFromCache(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 268
    iget-object v0, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->instance:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    if-nez v0, :cond_1

    .line 83
    const-class v1, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->instance:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    invoke-direct {v0}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;-><init>()V

    sput-object v0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->instance:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    sget-object v0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->instance:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 95
    invoke-static {}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getInstance()Lio/rong/imkit/activity/AlbumBitmapCacheHelper;

    move-result-object v0

    .line 96
    .local v0, helper:Lio/rong/imkit/activity/AlbumBitmapCacheHelper;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method


# virtual methods
.method public addPathToShowlist(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 275
    iget-object v0, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->currentShowString:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method public varargs getBitmap(Ljava/lang/String;IILio/rong/imkit/activity/AlbumBitmapCacheHelper$ILoadImageCallback;[Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"
    .parameter "width"
    .parameter "height"
    .parameter "callback"
    .parameter "objects"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->getBitmapFromCache(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 120
    const-string v1, "AlbumBitmapCacheHelper"

    const-string v2, "getBitmap from cache"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-direct/range {p0 .. p5}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->decodeBitmapFromPath(Ljava/lang/String;IILio/rong/imkit/activity/AlbumBitmapCacheHelper$ILoadImageCallback;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public releaseAllSizeCache()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 60
    iget-object v0, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->resize(I)V

    .line 61
    return-void
.end method

.method public releaseHalfSizeCache()V
    .locals 6

    .prologue
    .line 64
    iget-object v0, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->resize(I)V

    .line 65
    return-void
.end method

.method public removePathFromShowlist(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 282
    iget-object v0, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->currentShowString:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public resizeCache()V
    .locals 6

    .prologue
    .line 68
    iget-object v0, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->cache:Landroid/support/v4/util/LruCache;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->resize(I)V

    .line 69
    return-void
.end method

.method public uninit()V
    .locals 3

    .prologue
    .line 100
    iget-object v2, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->currentShowString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v2, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->tpe:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 102
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v2, p0, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->tpe:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 104
    .end local v1           #runnable:Ljava/lang/Runnable;
    :cond_0
    invoke-direct {p0}, Lio/rong/imkit/activity/AlbumBitmapCacheHelper;->clearCache()V

    .line 105
    return-void
.end method
