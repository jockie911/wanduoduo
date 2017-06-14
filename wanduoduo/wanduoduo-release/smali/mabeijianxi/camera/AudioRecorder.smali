.class public Lmabeijianxi/camera/AudioRecorder;
.super Ljava/lang/Thread;
.source "AudioRecorder.java"


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mMediaRecorder:Lmabeijianxi/camera/IMediaRecorder;

.field private mSampleRate:I


# direct methods
.method public constructor <init>(Lmabeijianxi/camera/IMediaRecorder;)V
    .locals 1
    .parameter "mediaRecorder"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 14
    const v0, 0xac44

    iput v0, p0, Lmabeijianxi/camera/AudioRecorder;->mSampleRate:I

    .line 18
    iput-object p1, p0, Lmabeijianxi/camera/AudioRecorder;->mMediaRecorder:Lmabeijianxi/camera/IMediaRecorder;

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v10, 0x0

    .line 28
    iget v0, p0, Lmabeijianxi/camera/AudioRecorder;->mSampleRate:I

    const/16 v2, 0x1f40

    if-eq v0, v2, :cond_0

    iget v0, p0, Lmabeijianxi/camera/AudioRecorder;->mSampleRate:I

    const/16 v2, 0x3e80

    if-eq v0, v2, :cond_0

    iget v0, p0, Lmabeijianxi/camera/AudioRecorder;->mSampleRate:I

    const/16 v2, 0x5622

    if-eq v0, v2, :cond_0

    iget v0, p0, Lmabeijianxi/camera/AudioRecorder;->mSampleRate:I

    const v2, 0xac44

    if-eq v0, v2, :cond_0

    .line 29
    iget-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mMediaRecorder:Lmabeijianxi/camera/IMediaRecorder;

    const-string v2, "sampleRate not support."

    invoke-interface {v0, v1, v2}, Lmabeijianxi/camera/IMediaRecorder;->onAudioError(ILjava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 33
    :cond_0
    iget v0, p0, Lmabeijianxi/camera/AudioRecorder;->mSampleRate:I

    invoke-static {v0, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 35
    .local v5, mMinBufferSize:I
    const/4 v0, -0x2

    if-ne v0, v5, :cond_1

    .line 36
    iget-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mMediaRecorder:Lmabeijianxi/camera/IMediaRecorder;

    const-string v1, "parameters are not supported by the hardware."

    invoke-interface {v0, v4, v1}, Lmabeijianxi/camera/IMediaRecorder;->onAudioError(ILjava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lmabeijianxi/camera/AudioRecorder;->mSampleRate:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    .line 41
    iget-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mMediaRecorder:Lmabeijianxi/camera/IMediaRecorder;

    const/4 v1, 0x3

    const-string v2, "new AudioRecord failed."

    invoke-interface {v0, v1, v2}, Lmabeijianxi/camera/IMediaRecorder;->onAudioError(ILjava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    :try_start_0
    iget-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    new-array v9, v5, [B

    .line 55
    .local v9, sampleBuffer:[B
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    .line 56
    iget-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v8

    .line 57
    .local v8, result:I
    if-lez v8, :cond_3

    .line 58
    iget-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mMediaRecorder:Lmabeijianxi/camera/IMediaRecorder;

    invoke-interface {v0, v9, v8}, Lmabeijianxi/camera/IMediaRecorder;->receiveAudioData([BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 61
    .end local v8           #result:I
    :catch_0
    move-exception v6

    .line 62
    .local v6, e:Ljava/lang/Exception;
    const-string v7, ""

    .line 63
    .local v7, message:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 64
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 65
    :cond_4
    iget-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mMediaRecorder:Lmabeijianxi/camera/IMediaRecorder;

    invoke-interface {v0, v10, v7}, Lmabeijianxi/camera/IMediaRecorder;->onAudioError(ILjava/lang/String;)V

    .line 68
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #message:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mAudioRecord:Landroid/media/AudioRecord;

    goto :goto_0

    .line 47
    .end local v9           #sampleBuffer:[B
    :catch_1
    move-exception v6

    .line 48
    .local v6, e:Ljava/lang/IllegalStateException;
    iget-object v0, p0, Lmabeijianxi/camera/AudioRecorder;->mMediaRecorder:Lmabeijianxi/camera/IMediaRecorder;

    const-string v1, "startRecording failed."

    invoke-interface {v0, v10, v1}, Lmabeijianxi/camera/IMediaRecorder;->onAudioError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setSampleRate(I)V
    .locals 0
    .parameter "sampleRate"

    .prologue
    .line 23
    iput p1, p0, Lmabeijianxi/camera/AudioRecorder;->mSampleRate:I

    .line 24
    return-void
.end method
