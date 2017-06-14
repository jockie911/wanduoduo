.class public Lmabeijianxi/camera/MediaRecorderCustom;
.super Lmabeijianxi/camera/MediaRecorderBase;
.source "MediaRecorderCustom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HANDLE_PART_STOP:I = 0x3

.field private static final HANDLE_SAVE_PCM:I = 0x2

.field private static final HANDLE_SAVE_YUV:I = 0x1


# instance fields
.field private g_audioframe:I

.field private g_videoframe:I

.field private mHandler:Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderBase;-><init>()V

    .line 154
    iput v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->g_audioframe:I

    .line 155
    iput v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->g_videoframe:I

    return-void
.end method


# virtual methods
.method public appendVideoData(I)I
    .locals 3
    .parameter "len"

    .prologue
    .line 174
    iget v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->g_audioframe:I

    mul-int/lit8 v1, v1, 0x11

    const v2, 0x186a0

    div-int v0, v1, v2

    .line 175
    .local v0, allocframe:I
    iget v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->g_videoframe:I

    if-le v1, v0, :cond_0

    .line 176
    const/4 v1, 0x0

    .line 179
    :goto_0
    return v1

    .line 177
    :cond_0
    iget v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->g_videoframe:I

    sub-int/2addr v0, v1

    .line 178
    iget v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->g_videoframe:I

    add-int/2addr v1, v0

    iput v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->g_videoframe:I

    move v1, v0

    .line 179
    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 5
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 67
    iget-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mHandler:Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mHandler:Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;

    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mHandler:Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;

    const/4 v2, 0x1

    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v3}, Lmabeijianxi/camera/model/MediaObject;->getCurrentIndex()I

    move-result v3

    array-length v4, p1

    invoke-virtual {p0, v4}, Lmabeijianxi/camera/MediaRecorderCustom;->appendVideoData(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p1}, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 34
    iget-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mPrepared:Z

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "handler_thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mHandlerThread:Landroid/os/HandlerThread;

    .line 36
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v0, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;

    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;-><init>(Lmabeijianxi/camera/MediaRecorderCustom;Landroid/os/Looper;)V

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mHandler:Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mPrepared:Z

    .line 42
    :cond_0
    iget-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mSurfaceCreated:Z

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderCustom;->startPreview()V

    .line 44
    :cond_1
    return-void
.end method

.method public receiveAudioData([BI)V
    .locals 5
    .parameter "sampleBuffer"
    .parameter "len"

    .prologue
    .line 166
    iget-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v0, :cond_0

    .line 167
    iget v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->g_audioframe:I

    add-int/2addr v0, p2

    iput v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->g_audioframe:I

    .line 168
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mHandler:Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;

    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mHandler:Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;

    const/4 v2, 0x2

    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v3}, Lmabeijianxi/camera/model/MediaObject;->getCurrentIndex()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p1}, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lmabeijianxi/camera/MediaRecorderBase;->release()V

    .line 76
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    :cond_0
    return-void
.end method

.method public resetAVSync()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->g_audioframe:I

    .line 160
    iput v0, p0, Lmabeijianxi/camera/MediaRecorderCustom;->g_videoframe:I

    .line 161
    return-void
.end method

.method public startEncoding()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public startRecord()Lmabeijianxi/camera/model/MediaObject$MediaPart;
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, result:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    iget v2, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mCameraId:I

    invoke-virtual {v1, v2}, Lmabeijianxi/camera/model/MediaObject;->buildMediaPart(I)Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderCustom;->resetAVSync()V

    .line 54
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mAudioRecorder:Lmabeijianxi/camera/AudioRecorder;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lmabeijianxi/camera/AudioRecorder;

    invoke-direct {v1, p0}, Lmabeijianxi/camera/AudioRecorder;-><init>(Lmabeijianxi/camera/IMediaRecorder;)V

    iput-object v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mAudioRecorder:Lmabeijianxi/camera/AudioRecorder;

    .line 56
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mAudioRecorder:Lmabeijianxi/camera/AudioRecorder;

    invoke-virtual {v1}, Lmabeijianxi/camera/AudioRecorder;->start()V

    .line 59
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmabeijianxi/camera/MediaRecorderCustom;->mRecording:Z

    .line 62
    :cond_1
    return-object v0
.end method
