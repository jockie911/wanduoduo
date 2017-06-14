.class public Lmabeijianxi/camera/MediaRecorderNative;
.super Lmabeijianxi/camera/MediaRecorderBase;
.source "MediaRecorderNative.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# static fields
.field private static final VIDEO_SUFFIX:Ljava/lang/String; = ".ts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :cond_0
    :goto_0
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderNative;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderNative;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    invoke-interface {v1, p2, p3}, Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;->onVideoError(II)V

    .line 92
    :cond_1
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Yixia"

    const-string v2, "stopRecord"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 87
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Yixia"

    const-string v2, "stopRecord"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 62
    iget-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderNative;->mRecording:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p1}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->RenderDataYuv([B)V

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Lmabeijianxi/camera/MediaRecorderBase;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 67
    return-void
.end method

.method protected onStartPreviewSuccess()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 72
    iget v0, p0, Lmabeijianxi/camera/MediaRecorderNative;->mCameraId:I

    if-nez v0, :cond_0

    .line 73
    iget v0, p0, Lmabeijianxi/camera/MediaRecorderNative;->mSupportedPreviewWidth:I

    sget v1, Lmabeijianxi/camera/MediaRecorderNative;->SMALL_VIDEO_WIDTH:I

    invoke-static {v0, v1, v2, v2}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->RenderInputSettings(IIII)V

    .line 77
    :goto_0
    sget v0, Lmabeijianxi/camera/MediaRecorderNative;->SMALL_VIDEO_WIDTH:I

    sget v1, Lmabeijianxi/camera/MediaRecorderNative;->SMALL_VIDEO_HEIGHT:I

    iget v2, p0, Lmabeijianxi/camera/MediaRecorderNative;->mFrameRate:I

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->RenderOutputSettings(IIII)V

    .line 78
    return-void

    .line 75
    :cond_0
    iget v0, p0, Lmabeijianxi/camera/MediaRecorderNative;->mSupportedPreviewWidth:I

    sget v1, Lmabeijianxi/camera/MediaRecorderNative;->SMALL_VIDEO_WIDTH:I

    const/16 v2, 0xb4

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->RenderInputSettings(IIII)V

    goto :goto_0
.end method

.method public receiveAudioData([BI)V
    .locals 1
    .parameter "sampleBuffer"
    .parameter "len"

    .prologue
    .line 97
    iget-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderNative;->mRecording:Z

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    .line 98
    invoke-static {p1}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->RenderDataPcm([B)V

    .line 100
    :cond_0
    return-void
.end method

.method public startRecord()Lmabeijianxi/camera/model/MediaObject$MediaPart;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 24
    invoke-static {}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 25
    invoke-static {}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->initFilterParser()V

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 30
    .local v1, result:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderNative;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v2, :cond_1

    .line 32
    iput-boolean v5, p0, Lmabeijianxi/camera/MediaRecorderNative;->mRecording:Z

    .line 33
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderNative;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    iget v3, p0, Lmabeijianxi/camera/MediaRecorderNative;->mCameraId:I

    const-string v4, ".ts"

    invoke-virtual {v2, v3, v4}, Lmabeijianxi/camera/model/MediaObject;->buildMediaPart(ILjava/lang/String;)Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v1

    .line 34
    const-string v2, "filename = \"%s\"; "

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, cmd:Ljava/lang/String;
    iget v2, p0, Lmabeijianxi/camera/MediaRecorderNative;->mCameraId:I

    if-nez v2, :cond_2

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "addcmd = %s; "

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -vf \"transpose=1,crop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lmabeijianxi/camera/MediaRecorderNative;->SMALL_VIDEO_WIDTH:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lmabeijianxi/camera/MediaRecorderNative;->SMALL_VIDEO_HEIGHT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":0:0\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FilterParserAction(Ljava/lang/String;I)I

    .line 44
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderNative;->mAudioRecorder:Lmabeijianxi/camera/AudioRecorder;

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 45
    new-instance v2, Lmabeijianxi/camera/AudioRecorder;

    invoke-direct {v2, p0}, Lmabeijianxi/camera/AudioRecorder;-><init>(Lmabeijianxi/camera/IMediaRecorder;)V

    iput-object v2, p0, Lmabeijianxi/camera/MediaRecorderNative;->mAudioRecorder:Lmabeijianxi/camera/AudioRecorder;

    .line 46
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderNative;->mAudioRecorder:Lmabeijianxi/camera/AudioRecorder;

    invoke-virtual {v2}, Lmabeijianxi/camera/AudioRecorder;->start()V

    .line 49
    .end local v0           #cmd:Ljava/lang/String;
    :cond_1
    return-object v1

    .line 40
    .restart local v0       #cmd:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "addcmd = %s; "

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -vf \"transpose=2,crop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lmabeijianxi/camera/MediaRecorderNative;->SMALL_VIDEO_WIDTH:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lmabeijianxi/camera/MediaRecorderNative;->SMALL_VIDEO_HEIGHT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":0:0\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 55
    const-string v0, ""

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FilterParserAction(Ljava/lang/String;I)I

    .line 56
    invoke-super {p0}, Lmabeijianxi/camera/MediaRecorderBase;->stopRecord()V

    .line 57
    return-void
.end method
