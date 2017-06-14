.class Lmabeijianxi/camera/MediaRecorderSystem$1;
.super Landroid/os/AsyncTask;
.source "MediaRecorderSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmabeijianxi/camera/MediaRecorderSystem;->concatVideoParts()V
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
.field final synthetic this$0:Lmabeijianxi/camera/MediaRecorderSystem;


# direct methods
.method constructor <init>(Lmabeijianxi/camera/MediaRecorderSystem;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 176
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderSystem$1;->this$0:Lmabeijianxi/camera/MediaRecorderSystem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 14
    .parameter "params"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 180
    const-string v1, ""

    .line 181
    .local v1, cmd:Ljava/lang/String;
    const/4 v0, 0x0

    .line 183
    .local v0, cameraId:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lmabeijianxi/camera/MediaRecorderSystem$1;->this$0:Lmabeijianxi/camera/MediaRecorderSystem;

    iget-object v9, v9, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v9}, Lmabeijianxi/camera/model/MediaObject;->getMedaParts()Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v3

    .local v3, j:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 184
    iget-object v9, p0, Lmabeijianxi/camera/MediaRecorderSystem$1;->this$0:Lmabeijianxi/camera/MediaRecorderSystem;

    iget-object v9, v9, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v9}, Lmabeijianxi/camera/model/MediaObject;->getMedaParts()Ljava/util/LinkedList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;

    .line 185
    .local v4, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    iget-object v9, v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    invoke-static {v9}, Lmabeijianxi/camera/util/FileUtils;->checkFile(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 186
    iget-object v9, v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    const-string v10, ".mp4"

    const-string v11, ".ts"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, ts:Ljava/lang/String;
    invoke-static {v5}, Lmabeijianxi/camera/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 188
    iget v0, v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;->cameraId:I

    .line 189
    const-string v9, "ffmpeg %s -i \"%s\" -r 25 -vcodec copy -acodec copy -vbsf h264_mp4toannexb \"%s\""

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {}, Lmabeijianxi/camera/FFMpegUtils;->getLogCommand()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    iget-object v11, v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    aput-object v11, v10, v7

    aput-object v5, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 191
    const-string v9, ""

    invoke-static {v9, v1}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FFmpegRun(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_0

    .line 192
    iput-object v5, v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    .line 183
    .end local v5           #ts:Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_0
    const-string v9, ""

    iput-object v9, v4, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mediaPath:Ljava/lang/String;

    goto :goto_1

    .line 201
    .end local v4           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_1
    if-nez v0, :cond_2

    const-string v6, "transpose=1"

    .line 203
    .local v6, vf:Ljava/lang/String;
    :goto_2
    const-string v9, "ffmpeg %s -i \"%s\" -vf \"%s\" %s -acodec copy -absf aac_adtstoasc -f mp4 -movflags faststart \"%s\""

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {}, Lmabeijianxi/camera/FFMpegUtils;->getLogCommand()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    iget-object v11, p0, Lmabeijianxi/camera/MediaRecorderSystem$1;->this$0:Lmabeijianxi/camera/MediaRecorderSystem;

    iget-object v11, v11, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v11}, Lmabeijianxi/camera/model/MediaObject;->getConcatYUV()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    aput-object v6, v10, v12

    invoke-static {}, Lmabeijianxi/camera/FFMpegUtils;->getVCodecCommand()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    const/4 v11, 0x4

    iget-object v12, p0, Lmabeijianxi/camera/MediaRecorderSystem$1;->this$0:Lmabeijianxi/camera/MediaRecorderSystem;

    iget-object v12, v12, Lmabeijianxi/camera/MediaRecorderSystem;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v12}, Lmabeijianxi/camera/model/MediaObject;->getOutputTempVideoPath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string v9, "MediaRecorderSystem"

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v9, ""

    invoke-static {v9, v1}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FFmpegRun(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    .line 201
    .end local v6           #vf:Ljava/lang/String;
    :cond_2
    const-string v6, "transpose=2,hflip"

    goto :goto_2

    .restart local v6       #vf:Ljava/lang/String;
    :cond_3
    move v7, v8

    .line 208
    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 176
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmabeijianxi/camera/MediaRecorderSystem$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 213
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderSystem$1;->this$0:Lmabeijianxi/camera/MediaRecorderSystem;

    iget-object v0, v0, Lmabeijianxi/camera/MediaRecorderSystem;->mEncodeHanlder:Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->sendEmptyMessage(I)Z

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderSystem$1;->this$0:Lmabeijianxi/camera/MediaRecorderSystem;

    iget-object v0, v0, Lmabeijianxi/camera/MediaRecorderSystem;->mEncodeHanlder:Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmabeijianxi/camera/MediaRecorderSystem$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
