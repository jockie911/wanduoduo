.class public Lmabeijianxi/camera/model/MediaObject$MediaPart;
.super Ljava/lang/Object;
.source "MediaObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmabeijianxi/camera/model/MediaObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaPart"
.end annotation


# instance fields
.field public audioPath:Ljava/lang/String;

.field public cameraId:I

.field public cutEndTime:I

.field public cutStartTime:I

.field public duration:I

.field public transient endTime:J

.field public index:I

.field public transient mCurrentOutputAudio:Ljava/io/FileOutputStream;

.field public transient mCurrentOutputVideo:Ljava/io/FileOutputStream;

.field public mediaPath:Ljava/lang/String;

.field public position:I

.field public volatile transient recording:Z

.field public transient remove:Z

.field public speed:I

.field public transient startTime:J

.field public tempAudioPath:Ljava/lang/String;

.field public tempMediaPath:Ljava/lang/String;

.field public tempPath:Ljava/lang/String;

.field public thumbPath:Ljava/lang/String;

.field public type:I

.field public yuvHeight:I

.field public yuvWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->type:I

    .line 369
    const/16 v0, 0xa

    iput v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->speed:I

    .line 385
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    invoke-static {v0}, Lmabeijianxi/camera/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 389
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->audioPath:Ljava/lang/String;

    invoke-static {v0}, Lmabeijianxi/camera/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 390
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->thumbPath:Ljava/lang/String;

    invoke-static {v0}, Lmabeijianxi/camera/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 391
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempMediaPath:Ljava/lang/String;

    invoke-static {v0}, Lmabeijianxi/camera/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 392
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->tempAudioPath:Ljava/lang/String;

    invoke-static {v0}, Lmabeijianxi/camera/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 393
    return-void
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 425
    iget v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    if-lez v0, :cond_0

    iget v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->duration:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->startTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public prepare()V
    .locals 3

    .prologue
    .line 409
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputVideo:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    invoke-virtual {p0}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->prepareAudio()V

    .line 414
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public prepareAudio()V
    .locals 3

    .prologue
    .line 418
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->audioPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputAudio:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputVideo:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 431
    :try_start_0
    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputVideo:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 432
    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputVideo:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    iput-object v2, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputVideo:Ljava/io/FileOutputStream;

    .line 439
    :cond_0
    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputAudio:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 441
    :try_start_1
    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputAudio:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 442
    iget-object v1, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputAudio:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    :goto_1
    iput-object v2, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputAudio:Ljava/io/FileOutputStream;

    .line 449
    :cond_1
    return-void

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 443
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 444
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public writeAudioData([B)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputAudio:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputAudio:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 399
    :cond_0
    return-void
.end method

.method public writeVideoData([B)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputVideo:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputVideo:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 405
    :cond_0
    return-void
.end method
