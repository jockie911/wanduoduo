.class Lmabeijianxi/camera/MediaRecorderBase$2;
.super Landroid/os/AsyncTask;
.source "MediaRecorderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmabeijianxi/camera/MediaRecorderBase;->concatVideoParts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmabeijianxi/camera/MediaRecorderBase;


# direct methods
.method constructor <init>(Lmabeijianxi/camera/MediaRecorderBase;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 828
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 833
    const-string v7, "ffmpeg %s -i \"%s\" -vcodec copy -acodec copy -absf aac_adtstoasc -f mp4 -movflags faststart \"%s\""

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {}, Lmabeijianxi/camera/FFMpegUtils;->getLogCommand()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v9, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v9, v9, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v9}, Lmabeijianxi/camera/model/MediaObject;->getConcatYUV()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x2

    iget-object v10, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v10, v10, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v10}, Lmabeijianxi/camera/model/MediaObject;->getOutputTempVideoPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, cmd:Ljava/lang/String;
    const-string v7, ""

    invoke-static {v7, v1}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FFmpegRun(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    move v3, v5

    .line 835
    .local v3, mergeFlag:Z
    :goto_0
    sget-boolean v7, Lmabeijianxi/camera/MediaRecorderBase;->doH264Compress:Z

    if-eqz v7, :cond_3

    .line 836
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ffmpeg -i "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v8, v8, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v8}, Lmabeijianxi/camera/model/MediaObject;->getOutputTempVideoPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -c:v libx264 -crf 28 -preset:v veryfast -c:a libfdk_aac -vbr 4 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v8, v8, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v8}, Lmabeijianxi/camera/model/MediaObject;->getOutputTempTranscodingVideoPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 838
    .local v2, cmd_transcoding:Ljava/lang/String;
    const-string v7, ""

    invoke-static {v7, v2}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FFmpegRun(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    move v4, v5

    .line 840
    .local v4, transcodingFlag:Z
    :goto_1
    iget-object v7, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v7, v7, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v7}, Lmabeijianxi/camera/model/MediaObject;->getOutputTempTranscodingVideoPath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v8, v8, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v8}, Lmabeijianxi/camera/model/MediaObject;->getOutputVideoThumbPath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lmabeijianxi/camera/MediaRecorderBase;->SMALL_VIDEO_WIDTH:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lmabeijianxi/camera/MediaRecorderBase;->SMALL_VIDEO_HEIGHT:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Lmabeijianxi/camera/MediaRecorderBase;->CAPTURE_THUMBNAILS_TIME:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lmabeijianxi/camera/FFMpegUtils;->captureThumbnails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 842
    .local v0, captureFlag:Z
    iget-object v7, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v7, v7, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v7}, Lmabeijianxi/camera/model/MediaObject;->getOutputDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmabeijianxi/camera/util/FileUtils;->deleteCacheFile(Ljava/lang/String;)V

    .line 844
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 850
    .end local v2           #cmd_transcoding:Ljava/lang/String;
    .end local v4           #transcodingFlag:Z
    :goto_3
    return-object v5

    .end local v0           #captureFlag:Z
    .end local v3           #mergeFlag:Z
    :cond_0
    move v3, v6

    .line 834
    goto/16 :goto_0

    .restart local v2       #cmd_transcoding:Ljava/lang/String;
    .restart local v3       #mergeFlag:Z
    :cond_1
    move v4, v6

    .line 838
    goto :goto_1

    .restart local v0       #captureFlag:Z
    .restart local v4       #transcodingFlag:Z
    :cond_2
    move v5, v6

    .line 844
    goto :goto_2

    .line 846
    .end local v0           #captureFlag:Z
    .end local v2           #cmd_transcoding:Ljava/lang/String;
    .end local v4           #transcodingFlag:Z
    :cond_3
    iget-object v7, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v7, v7, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v7}, Lmabeijianxi/camera/model/MediaObject;->getOutputTempVideoPath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v8, v8, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v8}, Lmabeijianxi/camera/model/MediaObject;->getOutputVideoThumbPath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lmabeijianxi/camera/MediaRecorderBase;->SMALL_VIDEO_WIDTH:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lmabeijianxi/camera/MediaRecorderBase;->SMALL_VIDEO_HEIGHT:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Lmabeijianxi/camera/MediaRecorderBase;->CAPTURE_THUMBNAILS_TIME:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lmabeijianxi/camera/FFMpegUtils;->captureThumbnails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 848
    .restart local v0       #captureFlag:Z
    iget-object v7, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v7, v7, Lmabeijianxi/camera/MediaRecorderBase;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v7}, Lmabeijianxi/camera/model/MediaObject;->getOutputDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmabeijianxi/camera/util/FileUtils;->deleteCacheFile2TS(Ljava/lang/String;)V

    .line 850
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_3

    :cond_4
    move v5, v6

    goto :goto_4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 828
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmabeijianxi/camera/MediaRecorderBase$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 858
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v0, v0, Lmabeijianxi/camera/MediaRecorderBase;->mEncodeHanlder:Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->sendEmptyMessage(I)Z

    .line 864
    :goto_0
    return-void

    .line 862
    :cond_0
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase$2;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v0, v0, Lmabeijianxi/camera/MediaRecorderBase;->mEncodeHanlder:Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmabeijianxi/camera/MediaRecorderBase$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
