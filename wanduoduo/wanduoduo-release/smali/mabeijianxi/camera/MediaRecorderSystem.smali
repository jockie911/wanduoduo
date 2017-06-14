.class public Lmabeijianxi/camera/MediaRecorderSystem;
.super Lmabeijianxi/camera/MediaRecorderBase;
.source "MediaRecorderSystem.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# instance fields
.field private mMediaRecorder:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderBase;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method protected concatVideoParts()V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lmabeijianxi/camera/MediaRecorderSystem$1;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/MediaRecorderSystem$1;-><init>(Lmabeijianxi/camera/MediaRecorderSystem;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 219
    invoke-virtual {v0, v1}, Lmabeijianxi/camera/MediaRecorderSystem$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :cond_0
    :goto_0
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mOnErrorListener:Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;

    invoke-interface {v1, p2, p3}, Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;->onVideoError(II)V

    .line 165
    :cond_1
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Yixia"

    const-string v2, "stopRecord"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 160
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Yixia"

    const-string v2, "stopRecord"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-super {p0}, Lmabeijianxi/camera/MediaRecorderBase;->release()V

    .line 140
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 143
    :try_start_0
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    :cond_0
    :goto_0
    iput-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 151
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Yixia"

    const-string v2, "stopRecord"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 146
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Yixia"

    const-string v2, "stopRecord"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setPreviewCallback()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public startRecord()Lmabeijianxi/camera/model/MediaObject$MediaPart;
    .locals 7

    .prologue
    const/high16 v6, 0x20

    .line 31
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mRecording:Z

    if-nez v3, :cond_1

    .line 32
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    iget v4, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mCameraId:I

    const-string v5, ".mp4"

    invoke-virtual {v3, v4, v5}, Lmabeijianxi/camera/model/MediaObject;->buildMediaPart(ILjava/lang/String;)Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v2

    .line 35
    .local v2, result:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :try_start_0
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_0

    .line 36
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 37
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 43
    :goto_0
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    .line 44
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderSystem;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 45
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 48
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 49
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 51
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 54
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 56
    .local v1, mProfile:Landroid/media/CamcorderProfile;
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x280

    const/16 v5, 0x1e0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 57
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v4, 0xac44

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 58
    iget v3, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    if-le v3, v6, :cond_2

    .line 59
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/high16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 62
    :goto_1
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 64
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 65
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 70
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 75
    const-string v3, "Yixia"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutputFile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 78
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 79
    const/4 v3, 0x1

    iput-boolean v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mRecording:Z

    .line 92
    .end local v1           #mProfile:Landroid/media/CamcorderProfile;
    .end local v2           #result:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :goto_2
    return-object v2

    .line 39
    .restart local v2       #result:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_0
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 83
    const-string v3, "Yixia"

    const-string v4, "startRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v2           #result:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_1
    :goto_3
    const/4 v2, 0x0

    goto :goto_2

    .line 61
    .restart local v1       #mProfile:Landroid/media/CamcorderProfile;
    .restart local v2       #result:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v4, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 84
    .end local v1           #mProfile:Landroid/media/CamcorderProfile;
    :catch_1
    move-exception v0

    .line 85
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    const-string v3, "Yixia"

    const-string v4, "startRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 87
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    const-string v3, "Yixia"

    const-string v4, "startRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public stopRecord()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 99
    .local v2, endTime:J
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_0

    .line 101
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 102
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 104
    :try_start_0
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 114
    :cond_0
    :goto_0
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderSystem;->camera:Landroid/hardware/Camera;

    if-eqz v4, :cond_1

    .line 116
    :try_start_1
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderSystem;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->lock()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 123
    :cond_1
    :goto_1
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v4, :cond_2

    .line 124
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v4}, Lmabeijianxi/camera/model/MediaObject;->getCurrentPart()Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v1

    .line 125
    .local v1, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    if-eqz v1, :cond_2

    iget-boolean v4, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->recording:Z

    if-eqz v4, :cond_2

    .line 126
    iput-boolean v8, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->recording:Z

    .line 127
    iput-wide v2, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->endTime:J

    .line 128
    iget-wide v4, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->endTime:J

    iget-wide v6, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    .line 129
    iput v8, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cutStartTime:I

    .line 130
    iget v4, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    iput v4, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cutEndTime:I

    .line 133
    .end local v1           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_2
    iput-boolean v8, p0, Lmabeijianxi/camera/MediaRecorderSystem;->mRecording:Z

    .line 134
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "Yixia"

    const-string v5, "stopRecord"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 107
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "Yixia"

    const-string v5, "stopRecord"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Yixia"

    const-string v5, "stopRecord"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 117
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "Yixia"

    const-string v5, "stopRecord"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
