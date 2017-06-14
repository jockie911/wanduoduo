.class public Lio/rong/message/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Util"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBase64FromBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 8
    .parameter "bitmap"

    .prologue
    .line 27
    const/4 v2, 0x0

    .line 28
    .local v2, base64Str:Ljava/lang/String;
    const/4 v0, 0x0

    .line 31
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    if-eqz p0, :cond_0

    .line 33
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 34
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x28

    invoke-virtual {p0, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 37
    .local v3, bitmapBytes:[B
    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v5, "base64Str"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 41
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v0, v1

    .line 47
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #bitmapBytes:[B
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :cond_0
    if-eqz v0, :cond_1

    .line 48
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    :cond_1
    :goto_0
    return-object v2

    .line 51
    :catch_0
    move-exception v4

    .line 52
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 44
    .restart local v4       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 51
    :catch_2
    move-exception v4

    .line 52
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 47
    :goto_2
    if-eqz v0, :cond_2

    .line 48
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 53
    :cond_2
    :goto_3
    throw v5

    .line 51
    :catch_3
    move-exception v4

    .line 52
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 46
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 43
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method public static getBitmapFromBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "base64Str"

    .prologue
    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x0

    .line 67
    :goto_0
    return-object v1

    .line 66
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 67
    .local v0, bytes:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getResizedBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 26
    .parameter "context"
    .parameter "uri"
    .parameter "widthLimit"
    .parameter "heightLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/16 v16, 0x0

    .line 73
    .local v16, path:Ljava/lang/String;
    const/16 v17, 0x0

    .line 75
    .local v17, result:Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 86
    :goto_0
    new-instance v11, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 88
    .local v11, exifInterface:Landroid/media/ExifInterface;
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    .local v14, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 90
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 92
    const-string v3, "Orientation"

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v15

    .line 94
    .local v15, orientation:I
    const/4 v3, 0x6

    if-eq v15, v3, :cond_0

    const/16 v3, 0x8

    if-eq v15, v3, :cond_0

    const/4 v3, 0x5

    if-eq v15, v3, :cond_0

    const/4 v3, 0x7

    if-ne v15, v3, :cond_1

    .line 98
    :cond_0
    move/from16 v21, p2

    .line 99
    .local v21, tmp:I
    move/from16 p2, p3

    .line 100
    move/from16 p3, v21

    .line 103
    .end local v21           #tmp:I
    :cond_1
    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    .line 104
    .local v23, width:I
    iget v13, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 105
    .local v13, height:I
    const/16 v20, 0x1

    .local v20, sampleW:I
    const/16 v18, 0x1

    .line 106
    .local v18, sampleH:I
    :goto_1
    div-int/lit8 v3, v23, 0x2

    move/from16 v0, p2

    if-le v3, v0, :cond_5

    .line 107
    div-int/lit8 v23, v23, 0x2

    .line 108
    shl-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 77
    .end local v11           #exifInterface:Landroid/media/ExifInterface;
    .end local v13           #height:I
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v15           #orientation:I
    .end local v18           #sampleH:I
    .end local v20           #sampleW:I
    .end local v23           #width:I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_data"

    aput-object v5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 79
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 81
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 83
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_3
    const/4 v2, 0x0

    .line 186
    :cond_4
    :goto_2
    return-object v2

    .line 112
    .restart local v11       #exifInterface:Landroid/media/ExifInterface;
    .restart local v13       #height:I
    .restart local v14       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v15       #orientation:I
    .restart local v18       #sampleH:I
    .restart local v20       #sampleW:I
    .restart local v23       #width:I
    :cond_5
    :goto_3
    div-int/lit8 v3, v13, 0x2

    move/from16 v0, p3

    if-le v3, v0, :cond_6

    .line 113
    div-int/lit8 v13, v13, 0x2

    .line 114
    shl-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 116
    :cond_6
    const/16 v19, 0x1

    .line 118
    .local v19, sampleSize:I
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    .restart local v14       #options:Landroid/graphics/BitmapFactory$Options;
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_7

    const v3, 0x7fffffff

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    .line 120
    :cond_7
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 124
    :goto_4
    move/from16 v0, v19

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 128
    :try_start_0
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 135
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :goto_5
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 136
    .local v7, matrix:Landroid/graphics/Matrix;
    if-eqz v2, :cond_4

    .line 139
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 140
    .local v22, w:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 142
    .local v12, h:I
    const/4 v3, 0x6

    if-eq v15, v3, :cond_8

    const/16 v3, 0x8

    if-eq v15, v3, :cond_8

    const/4 v3, 0x5

    if-eq v15, v3, :cond_8

    const/4 v3, 0x7

    if-ne v15, v3, :cond_9

    .line 146
    :cond_8
    move/from16 v21, v22

    .line 147
    .restart local v21       #tmp:I
    move/from16 v22, v12

    .line 148
    move/from16 v12, v21

    .line 150
    .end local v21           #tmp:I
    :cond_9
    packed-switch v15, :pswitch_data_0

    .line 175
    :goto_6
    move/from16 v0, p2

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v24, v3, v4

    .line 176
    .local v24, xS:F
    move/from16 v0, p3

    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v25, v3, v4

    .line 178
    .local v25, yS:F
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 180
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    move-object/from16 v2, v17

    .line 186
    goto/16 :goto_2

    .line 122
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v12           #h:I
    .end local v22           #w:I
    .end local v24           #xS:F
    .end local v25           #yS:F
    :cond_a
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto :goto_4

    .line 129
    :catch_0
    move-exception v10

    .line 130
    .local v10, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 131
    iget v3, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v3, v3, 0x1

    iput v3, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 132
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_5

    .line 152
    .end local v10           #e:Ljava/lang/OutOfMemoryError;
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    .restart local v12       #h:I
    .restart local v22       #w:I
    :pswitch_0
    const/high16 v3, 0x42b4

    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, v12

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_6

    .line 155
    :pswitch_1
    const/high16 v3, 0x4334

    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, v12

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_6

    .line 158
    :pswitch_2
    const/high16 v3, 0x4387

    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, v12

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_6

    .line 161
    :pswitch_3
    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 164
    :pswitch_4
    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 167
    :pswitch_5
    const/high16 v3, 0x42b4

    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, v12

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 168
    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 171
    :pswitch_6
    const/high16 v3, 0x4387

    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    int-to-float v5, v12

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-virtual {v7, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 172
    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 181
    .restart local v24       #xS:F
    .restart local v25       #yS:F
    :catch_1
    move-exception v10

    .line 182
    .restart local v10       #e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 183
    const-string v3, "ResourceCompressHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OOMHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "matrix:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 150
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

.method public static getThumbBitmap(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 31
    .parameter "context"
    .parameter "uri"
    .parameter "sizeLimit"
    .parameter "minSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v28, "file"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v28, 0x5

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 228
    .local v16, path:Ljava/lang/String;
    :goto_0
    new-instance v11, Landroid/media/ExifInterface;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 230
    .local v11, exifInterface:Landroid/media/ExifInterface;
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 231
    .local v14, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 232
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 234
    const-string v8, "Orientation"

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v11, v8, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v15

    .line 236
    .local v15, orientation:I
    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v25, v0

    .line 237
    .local v25, width:I
    iget v12, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 239
    .local v12, height:I
    move/from16 v0, v25

    if-le v0, v12, :cond_3

    move/from16 v13, v25

    .line 240
    .local v13, longSide:I
    :goto_1
    move/from16 v0, v25

    if-le v0, v12, :cond_4

    move/from16 v23, v12

    .line 241
    .local v23, shortSide:I
    :goto_2
    int-to-float v8, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v22, v8, v28

    .line 242
    .local v22, scale:F
    const/16 v21, 0x1

    .local v21, sampleW:I
    const/16 v19, 0x1

    .line 243
    .local v19, sampleH:I
    const/16 v20, 0x1

    .line 244
    .local v20, sampleSize:I
    move/from16 v0, p2

    int-to-float v8, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v8, v8, v28

    cmpl-float v8, v22, v8

    if-lez v8, :cond_9

    .line 245
    :goto_3
    div-int/lit8 v8, v23, 0x2

    move/from16 v0, p3

    if-le v8, v0, :cond_5

    .line 246
    div-int/lit8 v23, v23, 0x2

    .line 247
    shl-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 219
    .end local v11           #exifInterface:Landroid/media/ExifInterface;
    .end local v12           #height:I
    .end local v13           #longSide:I
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v15           #orientation:I
    .end local v16           #path:Ljava/lang/String;
    .end local v19           #sampleH:I
    .end local v20           #sampleSize:I
    .end local v21           #sampleW:I
    .end local v22           #scale:F
    .end local v23           #shortSide:I
    .end local v25           #width:I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v28, "content"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v28, "_data"

    aput-object v28, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 221
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 222
    const/4 v8, 0x0

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 223
    .restart local v16       #path:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 225
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v16           #path:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 354
    :cond_2
    :goto_4
    return-object v2

    .restart local v11       #exifInterface:Landroid/media/ExifInterface;
    .restart local v12       #height:I
    .restart local v14       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v15       #orientation:I
    .restart local v16       #path:Ljava/lang/String;
    .restart local v25       #width:I
    :cond_3
    move v13, v12

    .line 239
    goto :goto_1

    .restart local v13       #longSide:I
    :cond_4
    move/from16 v23, v25

    .line 240
    goto :goto_2

    .line 249
    .restart local v19       #sampleH:I
    .restart local v20       #sampleSize:I
    .restart local v21       #sampleW:I
    .restart local v22       #scale:F
    .restart local v23       #shortSide:I
    :cond_5
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 250
    .restart local v14       #options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v20

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 268
    :goto_5
    :try_start_0
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 274
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :goto_6
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 275
    .local v7, matrix:Landroid/graphics/Matrix;
    if-eqz v2, :cond_2

    .line 278
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 279
    .local v5, w:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 281
    .local v6, h:I
    const/4 v8, 0x6

    if-eq v15, v8, :cond_6

    const/16 v8, 0x8

    if-eq v15, v8, :cond_6

    const/4 v8, 0x5

    if-eq v15, v8, :cond_6

    const/4 v8, 0x7

    if-ne v15, v8, :cond_7

    .line 285
    :cond_6
    move/from16 v24, v5

    .line 286
    .local v24, tmp:I
    move v5, v6

    .line 287
    move/from16 v6, v24

    .line 289
    .end local v24           #tmp:I
    :cond_7
    packed-switch v15, :pswitch_data_0

    .line 314
    :goto_7
    const/16 v18, 0x0

    .line 315
    .local v18, sS:F
    const/16 v26, 0x0

    .line 316
    .local v26, xS:F
    const/16 v27, 0x0

    .line 317
    .local v27, yS:F
    move/from16 v0, p2

    int-to-float v8, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v8, v8, v28

    cmpl-float v8, v22, v8

    if-lez v8, :cond_d

    .line 318
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v28

    if-le v8, v0, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    .line 319
    :goto_8
    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v18, v8, v28

    .line 320
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 326
    :goto_9
    const/4 v3, 0x0

    .local v3, x:I
    const/4 v4, 0x0

    .line 328
    .local v4, y:I
    move/from16 v0, p2

    int-to-float v8, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v8, v8, v28

    cmpl-float v8, v22, v8

    if-lez v8, :cond_f

    .line 329
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v28

    if-le v8, v0, :cond_e

    .line 330
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 331
    mul-int v8, v6, p2

    div-int v5, v8, p3

    .line 332
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    div-int/lit8 v3, v8, 0x2

    .line 333
    const/4 v4, 0x0

    .line 344
    :goto_a
    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    .line 352
    .local v17, result:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_8

    .line 353
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    move-object/from16 v2, v17

    .line 354
    goto/16 :goto_4

    .line 252
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #x:I
    .end local v4           #y:I
    .end local v5           #w:I
    .end local v6           #h:I
    .end local v7           #matrix:Landroid/graphics/Matrix;
    .end local v17           #result:Landroid/graphics/Bitmap;
    .end local v18           #sS:F
    .end local v26           #xS:F
    .end local v27           #yS:F
    :cond_9
    :goto_b
    div-int/lit8 v8, v25, 0x2

    move/from16 v0, p2

    if-le v8, v0, :cond_a

    .line 253
    div-int/lit8 v25, v25, 0x2

    .line 254
    shl-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 257
    :cond_a
    :goto_c
    div-int/lit8 v8, v12, 0x2

    move/from16 v0, p2

    if-le v8, v0, :cond_b

    .line 258
    div-int/lit8 v12, v12, 0x2

    .line 259
    shl-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 262
    :cond_b
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 263
    .restart local v14       #options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 264
    move/from16 v0, v20

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto/16 :goto_5

    .line 269
    :catch_0
    move-exception v10

    .line 270
    .local v10, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 271
    iget v8, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v8, v8, 0x1

    iput v8, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 272
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_6

    .line 291
    .end local v10           #e:Ljava/lang/OutOfMemoryError;
    .restart local v5       #w:I
    .restart local v6       #h:I
    .restart local v7       #matrix:Landroid/graphics/Matrix;
    :pswitch_0
    const/high16 v8, 0x42b4

    int-to-float v0, v5

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    int-to-float v0, v6

    move/from16 v29, v0

    const/high16 v30, 0x4000

    div-float v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v7, v8, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto/16 :goto_7

    .line 294
    :pswitch_1
    const/high16 v8, 0x4334

    int-to-float v0, v5

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    int-to-float v0, v6

    move/from16 v29, v0

    const/high16 v30, 0x4000

    div-float v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v7, v8, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto/16 :goto_7

    .line 297
    :pswitch_2
    const/high16 v8, 0x4387

    int-to-float v0, v5

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    int-to-float v0, v6

    move/from16 v29, v0

    const/high16 v30, 0x4000

    div-float v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v7, v8, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto/16 :goto_7

    .line 300
    :pswitch_3
    const/high16 v8, -0x4080

    const/high16 v28, 0x3f80

    move/from16 v0, v28

    invoke-virtual {v7, v8, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_7

    .line 303
    :pswitch_4
    const/high16 v8, 0x3f80

    const/high16 v28, -0x4080

    move/from16 v0, v28

    invoke-virtual {v7, v8, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_7

    .line 306
    :pswitch_5
    const/high16 v8, 0x42b4

    int-to-float v0, v5

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    int-to-float v0, v6

    move/from16 v29, v0

    const/high16 v30, 0x4000

    div-float v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v7, v8, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 307
    const/high16 v8, 0x3f80

    const/high16 v28, -0x4080

    move/from16 v0, v28

    invoke-virtual {v7, v8, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_7

    .line 310
    :pswitch_6
    const/high16 v8, 0x4387

    int-to-float v0, v5

    move/from16 v28, v0

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    int-to-float v0, v6

    move/from16 v29, v0

    const/high16 v30, 0x4000

    div-float v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v7, v8, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 311
    const/high16 v8, 0x3f80

    const/high16 v28, -0x4080

    move/from16 v0, v28

    invoke-virtual {v7, v8, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_7

    .line 318
    .restart local v18       #sS:F
    .restart local v26       #xS:F
    .restart local v27       #yS:F
    :cond_c
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    goto/16 :goto_8

    .line 322
    :cond_d
    move/from16 v0, p2

    int-to-float v8, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v26, v8, v28

    .line 323
    move/from16 v0, p2

    int-to-float v8, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v8, v28

    .line 324
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(FF)F

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v7, v8, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_9

    .line 335
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_e
    :try_start_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 336
    mul-int v8, v5, p2

    div-int v6, v8, p3

    .line 337
    const/4 v3, 0x0

    .line 338
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int/2addr v8, v6

    div-int/lit8 v4, v8, 0x2

    goto/16 :goto_a

    .line 341
    :cond_f
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 342
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    goto/16 :goto_a

    .line 345
    :catch_1
    move-exception v10

    .line 346
    .restart local v10       #e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 347
    const-string v8, "ResourceCompressHandler"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "OOMHeight:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "Width:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "matrix:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_10

    .line 349
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 350
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 289
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

.method public static interceptBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "filePath"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 190
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 192
    .local v4, widthOrg:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 194
    .local v2, heightOrg:I
    sub-int v7, v4, p1

    div-int/lit8 v5, v7, 0x2

    .line 195
    .local v5, xTopLeft:I
    sub-int v7, v2, p2

    div-int/lit8 v6, v7, 0x2

    .line 197
    .local v6, yTopLeft:I
    if-lez v5, :cond_0

    if-gtz v6, :cond_2

    .line 198
    :cond_0
    const-string v7, "Util"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignore intercept ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lio/rong/common/RLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 208
    :cond_1
    :goto_0
    return-object v3

    .line 203
    :cond_2
    :try_start_0
    invoke-static {v0, v5, v6, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 204
    .local v3, result:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 205
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v3           #result:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 208
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const/4 v3, 0x0

    goto :goto_0
.end method
