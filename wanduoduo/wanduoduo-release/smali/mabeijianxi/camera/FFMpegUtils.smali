.class public Lmabeijianxi/camera/FFMpegUtils;
.super Ljava/lang/Object;
.source "FFMpegUtils.java"


# static fields
.field public static final AUDIO_VOLUME_CLOSE:I = 0x0

.field public static final AUDIO_VOLUME_HIGH:F = 1.0f

.field public static final AUDIO_VOLUME_LOW:F = 0.33f

.field public static final AUDIO_VOLUME_MEDIUM:F = 0.66f

.field private static final FFMPEG_COMMAND_LOG_LOGCATE:Ljava/lang/String; = " -d stdout -loglevel verbose"

.field private static final FFMPEG_COMMAND_VCODEC:Ljava/lang/String; = " -pix_fmt yuv420p -vcodec libx264 -profile:v baseline -preset ultrafast"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureThumbnails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "videoPath"
    .parameter "outputPath"
    .parameter "wh"

    .prologue
    .line 58
    const-string v0, "1"

    invoke-static {p0, p1, p2, v0}, Lmabeijianxi/camera/FFMpegUtils;->captureThumbnails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static captureThumbnails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "videoPath"
    .parameter "outputPath"
    .parameter "wh"
    .parameter "ss"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 322
    invoke-static {p1}, Lmabeijianxi/camera/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 323
    if-nez p3, :cond_0

    .line 324
    const-string p3, ""

    .line 327
    :goto_0
    const-string v3, "ffmpeg -d stdout -loglevel verbose -i \"%s\"%s -s %s -vframes 1 \"%s\""

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p3, v4, v1

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, cmd:Ljava/lang/String;
    const-string v3, ""

    invoke-static {v3, v0}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FFmpegRun(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    .line 326
    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " -ss "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .restart local v0       #cmd:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 328
    goto :goto_1
.end method

.method public static convertImage2Video(Lmabeijianxi/camera/model/MediaObject$MediaPart;)Z
    .locals 20
    .parameter "part"

    .prologue
    .line 223
    if-eqz p0, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempPath:Ljava/lang/String;

    invoke-static {v15}, Lmabeijianxi/camera/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 224
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempPath:Ljava/lang/String;

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v6, f:Ljava/io/File;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_3

    .line 230
    const/4 v14, 0x0

    .local v14, width:I
    const/4 v7, 0x0

    .local v7, height:I
    const/4 v9, -0x1

    .local v9, rotation:I
    const/4 v2, 0x0

    .local v2, cropX:I
    const/4 v3, 0x0

    .line 232
    .local v3, cropY:I
    :try_start_0
    new-instance v5, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempPath:Ljava/lang/String;

    invoke-direct {v5, v15}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 233
    .local v5, exif:Landroid/media/ExifInterface;
    const-string v15, "ImageWidth"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v14

    .line 234
    const-string v15, "ImageLength"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    .line 235
    const-string v15, "Orientation"

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 241
    .end local v5           #exif:Landroid/media/ExifInterface;
    :goto_0
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 242
    .local v10, scaleBuffer:Ljava/lang/StringBuffer;
    if-lez v14, :cond_0

    if-lez v7, :cond_0

    .line 243
    int-to-float v15, v14

    const/high16 v16, 0x3f80

    mul-float v15, v15, v16

    int-to-float v0, v7

    move/from16 v16, v0

    div-float v13, v15, v16

    .line 245
    .local v13, videoAspectRatio:F
    const-string v15, " -vf \"scale="

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    if-le v14, v7, :cond_1

    .line 248
    const-string v15, "-1:480"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const/high16 v15, 0x43f0

    mul-float v12, v15, v13

    .line 250
    .local v12, scaleWidth:F
    const/high16 v15, 0x43f0

    sub-float v15, v12, v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    float-to-int v2, v15

    .line 256
    .end local v12           #scaleWidth:F
    :goto_1
    const-string v15, "[tmp];[tmp]"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    packed-switch v9, :pswitch_data_0

    .line 270
    :goto_2
    :pswitch_0
    const-string v15, " crop=480:480:"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 272
    const-string v15, ":"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 274
    const-string v15, "\""

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    .end local v13           #videoAspectRatio:F
    :cond_0
    const-string v15, " -s 480x480"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    const-string v15, "ffmpeg %s -y -loop 1 -f image2 -i \"%s\" -vcodec rawvideo -r 15 -t %.1f -f rawvideo %s -pix_fmt yuv420p \"%s\""

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {}, Lmabeijianxi/camera/FFMpegUtils;->getLogCommand()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempPath:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x447a

    div-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, cmd:Ljava/lang/String;
    const-string v15, ""

    invoke-static {v15, v1}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FFmpegRun(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_2

    .line 288
    const v15, 0x15888

    move-object/from16 v0, p0

    iget v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x447a

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    mul-int v15, v15, v16

    new-array v8, v15, [B

    .line 289
    .local v8, hz:[B
    invoke-virtual/range {p0 .. p0}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->prepareAudio()V

    .line 291
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputAudio:Ljava/io/FileOutputStream;

    invoke-virtual {v15, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->stop()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 293
    const/4 v15, 0x1

    .line 307
    .end local v1           #cmd:Ljava/lang/String;
    .end local v2           #cropX:I
    .end local v3           #cropY:I
    .end local v6           #f:Ljava/io/File;
    .end local v7           #height:I
    .end local v8           #hz:[B
    .end local v9           #rotation:I
    .end local v10           #scaleBuffer:Ljava/lang/StringBuffer;
    .end local v14           #width:I
    :goto_3
    return v15

    .line 237
    .restart local v2       #cropX:I
    .restart local v3       #cropY:I
    .restart local v6       #f:Ljava/io/File;
    .restart local v7       #height:I
    .restart local v9       #rotation:I
    .restart local v14       #width:I
    :catch_0
    move-exception v4

    .line 238
    .local v4, e:Ljava/io/IOException;
    const-string v15, "Yixia"

    const-string v16, "convertImage2Video"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 252
    .end local v4           #e:Ljava/io/IOException;
    .restart local v10       #scaleBuffer:Ljava/lang/StringBuffer;
    .restart local v13       #videoAspectRatio:F
    :cond_1
    const-string v15, "480:-1"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    const/high16 v15, 0x43f0

    div-float v11, v15, v13

    .line 254
    .local v11, scaleHeight:F
    const/high16 v15, 0x43f0

    sub-float v15, v11, v15

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    float-to-int v3, v15

    goto/16 :goto_1

    .line 260
    .end local v11           #scaleHeight:F
    :pswitch_1
    const-string v15, "transpose=1[transpose];[transpose]"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 263
    :pswitch_2
    const-string v15, "transpose=2[transpose];[transpose]"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 266
    :pswitch_3
    const-string v15, "vflip[vflip];[vflip]hflip[transpose];[transpose]"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 294
    .end local v13           #videoAspectRatio:F
    .restart local v1       #cmd:Ljava/lang/String;
    .restart local v8       #hz:[B
    :catch_1
    move-exception v4

    .line 295
    .restart local v4       #e:Ljava/io/IOException;
    const-string v15, "Yixia"

    const-string v16, "convertImage2Video"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    .end local v4           #e:Ljava/io/IOException;
    .end local v8           #hz:[B
    :goto_4
    const/4 v15, 0x1

    goto :goto_3

    .line 296
    .restart local v8       #hz:[B
    :catch_2
    move-exception v4

    .line 297
    .local v4, e:Ljava/lang/Exception;
    const-string v15, "Yixia"

    const-string v16, "convertImage2Video"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 301
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #hz:[B
    :cond_2
    invoke-static {v1}, Lmabeijianxi/camera/VCamera;->copyFFmpegLog(Ljava/lang/String;)Z

    goto :goto_4

    .line 307
    .end local v1           #cmd:Ljava/lang/String;
    .end local v2           #cropX:I
    .end local v3           #cropY:I
    .end local v6           #f:Ljava/io/File;
    .end local v7           #height:I
    .end local v9           #rotation:I
    .end local v10           #scaleBuffer:Ljava/lang/StringBuffer;
    .end local v14           #width:I
    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    .line 258
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getLogCommand()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lmabeijianxi/camera/VCamera;->isLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, " -d stdout -loglevel verbose"

    .line 41
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -d \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmabeijianxi/camera/VCamera;->getVideoCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp_ffmpeg.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" -loglevel verbose"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVCodecCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, " -pix_fmt yuv420p -vcodec libx264 -profile:v baseline -preset ultrafast"

    return-object v0
.end method

.method public static importVideo(Lmabeijianxi/camera/model/MediaObject$MediaPart;IIIIIZ)Z
    .locals 32
    .parameter "part"
    .parameter "mWindowWidth"
    .parameter "videoWidth"
    .parameter "videoHeight"
    .parameter "cropX"
    .parameter "cropY"
    .parameter "hasAudio"

    .prologue
    .line 76
    if-eqz p0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempPath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lmabeijianxi/camera/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 77
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v7, f:Ljava/io/File;
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-nez v24, :cond_b

    .line 79
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v24, "ffmpeg"

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, buffer:Ljava/lang/StringBuffer;
    invoke-static {}, Lmabeijianxi/camera/FFMpegUtils;->getLogCommand()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v24, " -i \""

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v24, "\""

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const/16 v16, -0x1

    .line 91
    .local v16, rotation:I
    move/from16 v23, p2

    .local v23, width:I
    move/from16 v10, p3

    .local v10, height:I
    move/from16 v3, p4

    .local v3, cX:I
    move/from16 v4, p5

    .line 93
    .local v4, cY:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f80

    mul-float v24, v24, v25

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v19, v24, v25

    .line 96
    .local v19, videoAspectRatio:F
    invoke-static {}, Lmabeijianxi/camera/util/DeviceUtils;->hasJellyBeanMr1()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 97
    new-instance v14, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v14}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 98
    .local v14, metadata:Landroid/media/MediaMetadataRetriever;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 100
    const/16 v24, 0x18

    :try_start_0
    move/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 108
    .end local v14           #metadata:Landroid/media/MediaMetadataRetriever;
    :goto_0
    const/16 v24, 0x5a

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    const/16 v24, 0x10e

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 109
    :cond_0
    move/from16 v22, p2

    .line 110
    .local v22, w:I
    move/from16 v23, p3

    .line 111
    move/from16 v10, v22

    .line 114
    .end local v22           #w:I
    :cond_1
    const-string v24, " -vf \"scale="

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    move/from16 v0, v23

    if-lt v0, v10, :cond_4

    .line 117
    const-string v24, "-1:480"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const/high16 v24, 0x43f0

    mul-float v18, v24, v19

    .line 119
    .local v18, scaleWidth:F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v19

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v21, v0

    .line 120
    .local v21, viewWidth:I
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f80

    mul-float v24, v24, v25

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    mul-float v24, v24, v18

    move/from16 v0, v24

    float-to-int v3, v0

    .line 129
    .end local v18           #scaleWidth:F
    .end local v21           #viewWidth:I
    :goto_1
    const-string v24, "[tmp];[tmp]"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const/4 v9, 0x1

    .line 132
    .local v9, hasRotation:Z
    sparse-switch v16, :sswitch_data_0

    .line 143
    const/4 v9, 0x0

    .line 147
    :goto_2
    const-string v24, " crop=480:480:"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 149
    const-string v24, ":"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 152
    const-string v24, "\""

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    if-eqz v9, :cond_2

    .line 156
    const-string v24, " -metadata:s:v rotate=\"\""

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_2
    const-string v24, " -ss "

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    const-string v24, "%.1f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x447a

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v24, " -t "

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v24, "%.1f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->endTime:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x447a

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v24, " -an -vcodec rawvideo -f rawvideo -s 480x480 -pix_fmt yuv420p -r 15 \""

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string v24, "\""

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    if-nez p6, :cond_9

    .line 172
    const v24, 0x15888

    move/from16 v0, v24

    new-array v11, v0, [B

    .line 173
    .local v11, hz:[B
    invoke-virtual/range {p0 .. p0}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->prepareAudio()V

    .line 175
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->endTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    .line 176
    .local v5, duration:I
    div-int/lit16 v8, v5, 0x3e8

    .line 177
    .local v8, forCount:I
    if-lez v8, :cond_5

    .line 178
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    if-ge v12, v8, :cond_5

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputAudio:Ljava/io/FileOutputStream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 178
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 101
    .end local v5           #duration:I
    .end local v8           #forCount:I
    .end local v9           #hasRotation:Z
    .end local v11           #hz:[B
    .end local v12           #i:I
    .restart local v14       #metadata:Landroid/media/MediaMetadataRetriever;
    :catch_0
    move-exception v6

    .line 102
    .local v6, e:Ljava/lang/NumberFormatException;
    const/16 v16, -0x1

    goto/16 :goto_0

    .line 105
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v14           #metadata:Landroid/media/MediaMetadataRetriever;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempPath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->VideoGetMetadataRotate(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_0

    .line 123
    :cond_4
    const-string v24, "480:-1"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const/high16 v24, 0x43f0

    div-float v17, v24, v19

    .line 125
    .local v17, scaleHeight:F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v19

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v20, v0

    .line 126
    .local v20, viewHeight:I
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x3f80

    mul-float v24, v24, v25

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    mul-float v24, v24, v17

    move/from16 v0, v24

    float-to-int v4, v0

    goto/16 :goto_1

    .line 134
    .end local v17           #scaleHeight:F
    .end local v20           #viewHeight:I
    .restart local v9       #hasRotation:Z
    :sswitch_0
    const-string v24, "transpose=1[transpose];[transpose]"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 137
    :sswitch_1
    const-string v24, "transpose=2[transpose];[transpose]"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 140
    :sswitch_2
    const-string v24, "vflip[vflip];[vflip]hflip[transpose];[transpose]"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 182
    .restart local v5       #duration:I
    .restart local v8       #forCount:I
    .restart local v11       #hz:[B
    :cond_5
    :try_start_2
    rem-int/lit16 v0, v5, 0x3e8

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 183
    const v24, 0x15888

    mul-int/lit16 v0, v8, 0x3e8

    move/from16 v25, v0

    sub-int v25, v5, v25

    mul-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x447a

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v13, v0

    .line 184
    .local v13, lastSize:I
    rem-int/lit8 v24, v13, 0x2

    if-eqz v24, :cond_6

    .line 185
    add-int/lit8 v13, v13, 0x1

    .line 186
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputAudio:Ljava/io/FileOutputStream;

    move-object/from16 v24, v0

    new-array v0, v13, [B

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    .end local v5           #duration:I
    .end local v8           #forCount:I
    .end local v13           #lastSize:I
    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->stop()V

    .line 207
    .end local v11           #hz:[B
    :goto_5
    const-string v24, ""

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FFmpegRun(Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_a

    const/4 v15, 0x1

    .line 209
    .local v15, result:Z
    :goto_6
    if-nez v15, :cond_8

    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lmabeijianxi/camera/VCamera;->copyFFmpegLog(Ljava/lang/String;)Z

    .line 216
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #cX:I
    .end local v4           #cY:I
    .end local v7           #f:Ljava/io/File;
    .end local v9           #hasRotation:Z
    .end local v10           #height:I
    .end local v15           #result:Z
    .end local v16           #rotation:I
    .end local v19           #videoAspectRatio:F
    .end local v23           #width:I
    :cond_8
    :goto_7
    return v15

    .line 188
    .restart local v2       #buffer:Ljava/lang/StringBuffer;
    .restart local v3       #cX:I
    .restart local v4       #cY:I
    .restart local v7       #f:Ljava/io/File;
    .restart local v9       #hasRotation:Z
    .restart local v10       #height:I
    .restart local v11       #hz:[B
    .restart local v16       #rotation:I
    .restart local v19       #videoAspectRatio:F
    .restart local v23       #width:I
    :catch_1
    move-exception v6

    .line 189
    .local v6, e:Ljava/io/IOException;
    const-string v24, "Yixia"

    const-string v25, "convertImage2Video"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 190
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 191
    .local v6, e:Ljava/lang/Exception;
    const-string v24, "Yixia"

    const-string v25, "convertImage2Video"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v6}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 196
    .end local v6           #e:Ljava/lang/Exception;
    .end local v11           #hz:[B
    :cond_9
    const-string v24, " -ss "

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string v24, "%.1f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x447a

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v24, " -t "

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v24, "%.1f"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->endTime:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x447a

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    const-string v24, " -vn -acodec pcm_s16le -f s16le -ar 44100 -ac 1 \""

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->audioPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const-string v24, "\""

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 207
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_6

    .line 216
    .end local v2           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #cX:I
    .end local v4           #cY:I
    .end local v7           #f:Ljava/io/File;
    .end local v9           #hasRotation:Z
    .end local v10           #height:I
    .end local v16           #rotation:I
    .end local v19           #videoAspectRatio:F
    .end local v23           #width:I
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_1
    .end sparse-switch
.end method
