.class public abstract Lmabeijianxi/camera/MediaRecorderBase;
.super Ljava/lang/Object;
.source "MediaRecorderBase.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lmabeijianxi/camera/IMediaRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;,
        Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;,
        Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;,
        Lmabeijianxi/camera/MediaRecorderBase$OnPreparedListener;
    }
.end annotation


# static fields
.field public static final AUDIO_RECORD_ERROR_CREATE_FAILED:I = 0x3

.field public static final AUDIO_RECORD_ERROR_GET_MIN_BUFFER_SIZE_NOT_SUPPORT:I = 0x2

.field public static final AUDIO_RECORD_ERROR_SAMPLERATE_NOT_SUPPORT:I = 0x1

.field public static final AUDIO_RECORD_ERROR_UNKNOWN:I = 0x0

.field protected static CAPTURE_THUMBNAILS_TIME:I = 0x0

.field protected static MAX_FRAME_RATE:I = 0x0

.field public static final MEDIA_ERROR_CAMERA_AUTO_FOCUS:I = 0x67

.field public static final MEDIA_ERROR_CAMERA_PREVIEW:I = 0x66

.field public static final MEDIA_ERROR_CAMERA_SET_PREVIEW_DISPLAY:I = 0x65

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field protected static final MESSAGE_ENCODE_COMPLETE:I = 0x2

.field protected static final MESSAGE_ENCODE_ERROR:I = 0x3

.field protected static final MESSAGE_ENCODE_PROGRESS:I = 0x1

.field protected static final MESSAGE_ENCODE_START:I = 0x0

.field protected static MIN_FRAME_RATE:I = 0x0

.field public static SMALL_VIDEO_HEIGHT:I = 0x0

.field public static SMALL_VIDEO_WIDTH:I = 0x0

.field public static final VIDEO_BITRATE_HIGH:I = 0x800

.field public static final VIDEO_BITRATE_MEDIUM:I = 0x600

.field public static final VIDEO_BITRATE_NORMAL:I = 0x400

.field protected static doH264Compress:Z

.field protected static mVideoBitrate:I


# instance fields
.field protected camera:Landroid/hardware/Camera;

.field protected mAudioRecorder:Lmabeijianxi/camera/AudioRecorder;

.field protected mCameraId:I

.field protected mEncodeHanlder:Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

.field protected mFrameRate:I

.field protected mMediaObject:Lmabeijianxi/camera/model/MediaObject;

.field protected mOnEncodeListener:Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;

.field protected mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

.field protected mOnPreparedListener:Lmabeijianxi/camera/MediaRecorderBase$OnPreparedListener;

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field protected mPrepared:Z

.field protected volatile mPreviewFrameCallCount:J

.field protected volatile mRecording:Z

.field protected mStartPreview:Z

.field protected mSupportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field protected mSupportedPreviewWidth:I

.field protected mSurfaceCreated:Z

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 43
    const/16 v0, 0x168

    sput v0, Lmabeijianxi/camera/MediaRecorderBase;->SMALL_VIDEO_HEIGHT:I

    .line 47
    const/16 v0, 0x1e0

    sput v0, Lmabeijianxi/camera/MediaRecorderBase;->SMALL_VIDEO_WIDTH:I

    .line 114
    const/16 v0, 0x14

    sput v0, Lmabeijianxi/camera/MediaRecorderBase;->MAX_FRAME_RATE:I

    .line 118
    const/16 v0, 0x8

    sput v0, Lmabeijianxi/camera/MediaRecorderBase;->MIN_FRAME_RATE:I

    .line 120
    sput v1, Lmabeijianxi/camera/MediaRecorderBase;->CAPTURE_THUMBNAILS_TIME:I

    .line 122
    sput-boolean v1, Lmabeijianxi/camera/MediaRecorderBase;->doH264Compress:Z

    .line 178
    const/16 v0, 0x800

    sput v0, Lmabeijianxi/camera/MediaRecorderBase;->mVideoBitrate:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 170
    sget v0, Lmabeijianxi/camera/MediaRecorderBase;->MIN_FRAME_RATE:I

    iput v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mFrameRate:I

    .line 174
    iput v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mCameraId:I

    .line 180
    iput v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSupportedPreviewWidth:I

    .line 192
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mPreviewFrameCallCount:J

    .line 196
    return-void
.end method

.method private getAutoFocusMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_3

    .line 320
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 321
    .local v0, focusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "GT-I950"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SCH-I959"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MEIZU MX3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "continuous-picture"

    invoke-direct {p0, v0, v1}, Lmabeijianxi/camera/MediaRecorderBase;->isSupported(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    const-string v1, "continuous-picture"

    .line 329
    .end local v0           #focusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 323
    .restart local v0       #focusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v1, "continuous-video"

    invoke-direct {p0, v0, v1}, Lmabeijianxi/camera/MediaRecorderBase;->isSupported(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    const-string v1, "continuous-video"

    goto :goto_0

    .line 325
    :cond_2
    const-string v1, "auto"

    invoke-direct {p0, v0, v1}, Lmabeijianxi/camera/MediaRecorderBase;->isSupported(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 326
    const-string v1, "auto"

    goto :goto_0

    .line 329
    .end local v0           #focusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportFrontCamera()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-static {}, Lmabeijianxi/camera/util/DeviceUtils;->hasGingerbread()Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    .local v0, numberOfCameras:I
    :cond_0
    :goto_0
    return v1

    .line 251
    .end local v0           #numberOfCameras:I
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 252
    .restart local v0       #numberOfCameras:I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 253
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSupported(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFlashMode(Ljava/lang/String;)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 394
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 396
    :try_start_0
    const-string v1, "torch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "off"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    :cond_0
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_1
    const/4 v1, 0x1

    .line 405
    :goto_0
    return v1

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Yixia"

    const-string v2, "setFlashMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stopAllRecord()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 484
    iput-boolean v8, p0, Lmabeijianxi/camera/MediaRecorderBase;->mRecording:Z

    .line 485
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v2}, Lmabeijianxi/camera/model/MediaObject;->getMedaParts()Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 486
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v2}, Lmabeijianxi/camera/model/MediaObject;->getMedaParts()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 487
    .local v0, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->recording:Z

    if-eqz v3, :cond_0

    .line 488
    iput-boolean v8, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->recording:Z

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->endTime:J

    .line 490
    iget-wide v4, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->endTime:J

    iget-wide v6, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    .line 491
    iput v8, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cutStartTime:I

    .line 492
    iget v3, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    iput v3, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cutEndTime:I

    .line 494
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, videoFile:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 496
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lmabeijianxi/camera/model/MediaObject;->removePart(Lmabeijianxi/camera/model/MediaObject$MediaPart;Z)V

    goto :goto_0

    .line 501
    .end local v0           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    .end local v1           #videoFile:Ljava/io/File;
    :cond_1
    return-void
.end method


# virtual methods
.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)Z
    .locals 5
    .parameter "cb"

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    .line 292
    :try_start_0
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 294
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v3, :cond_0

    .line 295
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderBase;->getAutoFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1}, Lmabeijianxi/camera/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 298
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 301
    .end local v1           #mode:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    const/4 v2, 0x1

    .line 311
    :cond_1
    :goto_0
    return v2

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    if-eqz v3, :cond_2

    .line 305
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    const/16 v4, 0x67

    invoke-interface {v3, v4, v2}, Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;->onVideoError(II)V

    .line 307
    :cond_2
    if-eqz v0, :cond_1

    .line 308
    const-string v3, "Yixia"

    const-string v4, "autoFocus"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected concatVideoParts()V
    .locals 2

    .prologue
    .line 828
    new-instance v0, Lmabeijianxi/camera/MediaRecorderBase$2;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/MediaRecorderBase$2;-><init>(Lmabeijianxi/camera/MediaRecorderBase;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 865
    invoke-virtual {v0, v1}, Lmabeijianxi/camera/MediaRecorderBase$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 866
    return-void
.end method

.method public isFrontCamera()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 239
    iget v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mCameraId:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public manualFocus(Landroid/hardware/Camera$AutoFocusCallback;Ljava/util/List;)Z
    .locals 4
    .parameter "cb"
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$AutoFocusCallback;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, focusAreas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v1, 0x0

    .line 341
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_2

    invoke-static {}, Lmabeijianxi/camera/util/DeviceUtils;->hasICS()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    :try_start_0
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 345
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-lez v2, :cond_0

    .line 348
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, p2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 351
    :cond_0
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    if-lez v2, :cond_1

    .line 352
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, p2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 354
    :cond_1
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "macro"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 356
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    const/4 v1, 0x1

    .line 366
    :cond_2
    :goto_0
    return v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    if-eqz v2, :cond_3

    .line 360
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    const/16 v3, 0x67

    invoke-interface {v2, v3, v1}, Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;->onVideoError(II)V

    .line 362
    :cond_3
    if-eqz v0, :cond_2

    .line 363
    const-string v2, "Yixia"

    const-string v3, "autoFocus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onAudioError(ILjava/lang/String;)V
    .locals 1
    .parameter "what"
    .parameter "message"

    .prologue
    .line 716
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    invoke-interface {v0, p1, p2}, Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;->onAudioError(ILjava/lang/String;)V

    .line 718
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 722
    iget-wide v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mPreviewFrameCallCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mPreviewFrameCallCount:J

    .line 723
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 724
    return-void
.end method

.method protected onStartPreviewSuccess()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mPrepared:Z

    .line 421
    iget-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSurfaceCreated:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderBase;->startPreview()V

    .line 423
    :cond_0
    return-void
.end method

.method protected prepareCameraParaments()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 516
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v5, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v3

    .line 520
    .local v3, rates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    .line 521
    sget v5, Lmabeijianxi/camera/MediaRecorderBase;->MAX_FRAME_RATE:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 522
    sget v5, Lmabeijianxi/camera/MediaRecorderBase;->MAX_FRAME_RATE:I

    iput v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mFrameRate:I

    .line 534
    :cond_2
    :goto_1
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v6, p0, Lmabeijianxi/camera/MediaRecorderBase;->mFrameRate:I

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, findWidth:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 539
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 540
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    sget v6, Lmabeijianxi/camera/MediaRecorderBase;->SMALL_VIDEO_WIDTH:I

    if-ne v5, v6, :cond_4

    .line 541
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iput v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSupportedPreviewWidth:I

    .line 542
    iget v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSupportedPreviewWidth:I

    const/16 v6, 0x2d0

    if-ne v5, v6, :cond_3

    .line 543
    const/16 v5, 0x280

    iput v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSupportedPreviewWidth:I

    .line 545
    :cond_3
    const/4 v0, 0x1

    .line 538
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 524
    .end local v0           #findWidth:Z
    .end local v1           #i:I
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :cond_5
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 525
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .restart local v1       #i:I
    :goto_3
    if-ltz v1, :cond_2

    .line 526
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget v6, Lmabeijianxi/camera/MediaRecorderBase;->MAX_FRAME_RATE:I

    if-gt v5, v6, :cond_6

    .line 527
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mFrameRate:I

    goto :goto_1

    .line 525
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 548
    .restart local v0       #findWidth:Z
    :cond_7
    if-eqz v0, :cond_b

    .line 549
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v6, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSupportedPreviewWidth:I

    sget v7, Lmabeijianxi/camera/MediaRecorderBase;->SMALL_VIDEO_WIDTH:I

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 555
    :goto_4
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 558
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderBase;->getAutoFocusMode()Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, mode:Ljava/lang/String;
    invoke-static {v2}, Lmabeijianxi/camera/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 560
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 567
    :cond_8
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v5

    const-string v6, "auto"

    invoke-direct {p0, v5, v6}, Lmabeijianxi/camera/MediaRecorderBase;->isSupported(Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 568
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "auto"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 571
    :cond_9
    const-string v5, "true"

    iget-object v6, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v7, "video-stabilization-supported"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 572
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "video-stabilization"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_a
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "GT-N7100"

    aput-object v7, v5, v6

    const-string v6, "GT-I9308"

    aput-object v6, v5, v8

    const/4 v6, 0x2

    const-string v7, "GT-I9300"

    aput-object v7, v5, v6

    invoke-static {v5}, Lmabeijianxi/camera/util/DeviceUtils;->isDevice([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 578
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "cam_mode"

    invoke-virtual {v5, v6, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 579
    iget-object v5, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "cam-mode"

    invoke-virtual {v5, v6, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 551
    .end local v2           #mode:Ljava/lang/String;
    :cond_b
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "\u4f20\u5165\u9ad8\u5ea6\u4e0d\u652f\u6301\u6216\u672a\u627e\u5230\u5bf9\u5e94\u5bbd\u5ea6"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public receiveAudioData([BI)V
    .locals 0
    .parameter "sampleBuffer"
    .parameter "len"

    .prologue
    .line 752
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 681
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderBase;->stopAllRecord()V

    .line 683
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderBase;->stopPreview()V

    .line 685
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mAudioRecorder:Lmabeijianxi/camera/AudioRecorder;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mAudioRecorder:Lmabeijianxi/camera/AudioRecorder;

    invoke-virtual {v0}, Lmabeijianxi/camera/AudioRecorder;->interrupt()V

    .line 687
    iput-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mAudioRecorder:Lmabeijianxi/camera/AudioRecorder;

    .line 690
    :cond_0
    iput-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 691
    iput-boolean v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mPrepared:Z

    .line 692
    iput-boolean v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSurfaceCreated:Z

    .line 693
    return-void
.end method

.method public setMediaObject(Lmabeijianxi/camera/model/MediaObject;)V
    .locals 0
    .parameter "mediaObject"

    .prologue
    .line 456
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    .line 457
    return-void
.end method

.method public setOnEncodeListener(Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 217
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnEncodeListener:Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;

    .line 218
    new-instance v0, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;-><init>(Lmabeijianxi/camera/MediaRecorderBase;)V

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mEncodeHanlder:Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

    .line 219
    return-void
.end method

.method public setOnErrorListener(Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 232
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    .line 233
    return-void
.end method

.method public setOnPreparedListener(Lmabeijianxi/camera/MediaRecorderBase$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 225
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnPreparedListener:Lmabeijianxi/camera/MediaRecorderBase$OnPreparedListener;

    .line 226
    return-void
.end method

.method public setOutputDirectory(Ljava/lang/String;Ljava/lang/String;)Lmabeijianxi/camera/model/MediaObject;
    .locals 3
    .parameter "key"
    .parameter "path"

    .prologue
    .line 433
    invoke-static {p2}, Lmabeijianxi/camera/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 436
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    invoke-static {v0}, Lmabeijianxi/camera/util/FileUtils;->deleteDir(Ljava/io/File;)V

    .line 444
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    new-instance v1, Lmabeijianxi/camera/model/MediaObject;

    sget v2, Lmabeijianxi/camera/MediaRecorderBase;->mVideoBitrate:I

    invoke-direct {v1, p1, p2, v2}, Lmabeijianxi/camera/model/MediaObject;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    .line 449
    .end local v0           #f:Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    return-object v1

    .line 441
    .restart local v0       #f:Ljava/io/File;
    :cond_2
    invoke-static {v0}, Lmabeijianxi/camera/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_0
.end method

.method protected setPreviewCallback()V
    .locals 7

    .prologue
    .line 640
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 641
    .local v3, size:Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_0

    .line 642
    new-instance v2, Landroid/graphics/PixelFormat;

    invoke-direct {v2}, Landroid/graphics/PixelFormat;-><init>()V

    .line 643
    .local v2, pf:Landroid/graphics/PixelFormat;
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v4

    invoke-static {v4, v2}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 644
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x8

    .line 646
    .local v0, buffSize:I
    :try_start_0
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    new-array v5, v0, [B

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 647
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    new-array v5, v0, [B

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 648
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    new-array v5, v0, [B

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 649
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :goto_0
    const-string v4, "Yixia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startPreview...setPreviewCallbackWithBuffer...width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    .end local v0           #buffSize:I
    .end local v2           #pf:Landroid/graphics/PixelFormat;
    :goto_1
    return-void

    .line 650
    .restart local v0       #buffSize:I
    .restart local v2       #pf:Landroid/graphics/PixelFormat;
    :catch_0
    move-exception v1

    .line 651
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "Yixia"

    const-string v5, "startPreview...setPreviewCallback..."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 655
    .end local v0           #buffSize:I
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #pf:Landroid/graphics/PixelFormat;
    :cond_0
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_1
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "sh"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 207
    invoke-static {}, Lmabeijianxi/camera/util/DeviceUtils;->hasHoneycomb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public setVideoBitRate(I)V
    .locals 0
    .parameter "bitRate"

    .prologue
    .line 412
    if-lez p1, :cond_0

    .line 413
    sput p1, Lmabeijianxi/camera/MediaRecorderBase;->mVideoBitrate:I

    .line 414
    :cond_0
    return-void
.end method

.method public startEncoding()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 814
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mEncodeHanlder:Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

    if-nez v0, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mEncodeHanlder:Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->removeMessages(I)V

    .line 818
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mEncodeHanlder:Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->removeMessages(I)V

    .line 819
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mEncodeHanlder:Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

    invoke-virtual {v0, v2}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->removeMessages(I)V

    .line 820
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mEncodeHanlder:Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->removeMessages(I)V

    .line 821
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mEncodeHanlder:Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

    invoke-virtual {v0, v2}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public startPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 587
    iget-boolean v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mStartPreview:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mPrepared:Z

    if-nez v1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mStartPreview:Z

    .line 594
    :try_start_0
    iget v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mCameraId:I

    if-nez v1, :cond_3

    .line 595
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    .line 599
    :goto_1
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :try_start_1
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 610
    :goto_2
    :try_start_2
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 611
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSupportedPreviewSizes:Ljava/util/List;

    .line 612
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderBase;->prepareCameraParaments()V

    .line 613
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 614
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderBase;->setPreviewCallback()V

    .line 615
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 617
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderBase;->onStartPreviewSuccess()V

    .line 618
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnPreparedListener:Lmabeijianxi/camera/MediaRecorderBase$OnPreparedListener;

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnPreparedListener:Lmabeijianxi/camera/MediaRecorderBase$OnPreparedListener;

    invoke-interface {v1}, Lmabeijianxi/camera/MediaRecorderBase$OnPreparedListener;->onPrepared()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 622
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    if-eqz v1, :cond_2

    .line 623
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    const/16 v2, 0x66

    invoke-interface {v1, v2, v4}, Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;->onVideoError(II)V

    .line 625
    :cond_2
    const-string v1, "Yixia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreview fail :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mCameraId:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    goto :goto_1

    .line 602
    :catch_1
    move-exception v0

    .line 603
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    if-eqz v1, :cond_4

    .line 604
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    const/16 v2, 0x65

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;->onVideoError(II)V

    .line 606
    :cond_4
    const-string v1, "Yixia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewDisplay fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method

.method public stopPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 663
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 665
    :try_start_0
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 666
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 668
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    iput-object v3, p0, Lmabeijianxi/camera/MediaRecorderBase;->camera:Landroid/hardware/Camera;

    .line 674
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mStartPreview:Z

    .line 675
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Yixia"

    const-string v2, "stopPreview..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 460
    iput-boolean v6, p0, Lmabeijianxi/camera/MediaRecorderBase;->mRecording:Z

    .line 463
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaObject;->getCurrentPart()Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v0

    .line 465
    .local v0, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->recording:Z

    if-eqz v1, :cond_0

    .line 466
    iput-boolean v6, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->recording:Z

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->endTime:J

    .line 468
    iget-wide v2, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->endTime:J

    iget-wide v4, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    .line 469
    iput v6, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cutStartTime:I

    .line 470
    iget v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    iput v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cutEndTime:I

    .line 478
    .end local v0           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 705
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 706
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 697
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 698
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSurfaceCreated:Z

    .line 699
    iget-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mStartPreview:Z

    if-nez v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderBase;->startPreview()V

    .line 701
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mSurfaceCreated:Z

    .line 712
    return-void
.end method

.method public switchCamera()V
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lmabeijianxi/camera/MediaRecorderBase;->mCameraId:I

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/MediaRecorderBase;->switchCamera(I)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/MediaRecorderBase;->switchCamera(I)V

    goto :goto_0
.end method

.method public switchCamera(I)V
    .locals 0
    .parameter "cameraFacingFront"

    .prologue
    .line 262
    packed-switch p1, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iput p1, p0, Lmabeijianxi/camera/MediaRecorderBase;->mCameraId:I

    .line 266
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderBase;->stopPreview()V

    .line 267
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderBase;->startPreview()V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public testPreviewFrameCallCount()V
    .locals 6

    .prologue
    .line 730
    new-instance v0, Lmabeijianxi/camera/MediaRecorderBase$1;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmabeijianxi/camera/MediaRecorderBase$1;-><init>(Lmabeijianxi/camera/MediaRecorderBase;JJ)V

    .line 743
    invoke-virtual {v0}, Lmabeijianxi/camera/MediaRecorderBase$1;->start()Landroid/os/CountDownTimer;

    .line 744
    return-void
.end method

.method public toggleFlashMode()Z
    .locals 4

    .prologue
    .line 373
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_2

    .line 375
    :try_start_0
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, mode:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    :cond_0
    const-string v2, "torch"

    invoke-direct {p0, v2}, Lmabeijianxi/camera/MediaRecorderBase;->setFlashMode(Ljava/lang/String;)Z

    .line 380
    :goto_0
    const/4 v2, 0x1

    .line 385
    .end local v1           #mode:Ljava/lang/String;
    :goto_1
    return v2

    .line 379
    .restart local v1       #mode:Ljava/lang/String;
    :cond_1
    const-string v2, "off"

    invoke-direct {p0, v2}, Lmabeijianxi/camera/MediaRecorderBase;->setFlashMode(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v1           #mode:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Yixia"

    const-string v3, "toggleFlashMode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
