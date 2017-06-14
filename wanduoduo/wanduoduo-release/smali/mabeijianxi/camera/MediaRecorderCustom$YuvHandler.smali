.class Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;
.super Landroid/os/Handler;
.source "MediaRecorderCustom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmabeijianxi/camera/MediaRecorderCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YuvHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lmabeijianxi/camera/MediaRecorderCustom;


# direct methods
.method public constructor <init>(Lmabeijianxi/camera/MediaRecorderCustom;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 91
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->this$0:Lmabeijianxi/camera/MediaRecorderCustom;

    .line 92
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 93
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v8, 0x3

    .line 97
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 98
    .local v4, position:I
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 149
    return-void

    .line 100
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 101
    .local v0, allocframe:I
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    move-object v5, v6

    check-cast v5, [B

    .line 103
    .local v5, yuv:[B
    iget-object v6, p0, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->this$0:Lmabeijianxi/camera/MediaRecorderCustom;

    iget-object v6, v6, Lmabeijianxi/camera/MediaRecorderCustom;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v6, :cond_0

    .line 104
    iget-object v6, p0, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->this$0:Lmabeijianxi/camera/MediaRecorderCustom;

    iget-object v6, v6, Lmabeijianxi/camera/MediaRecorderCustom;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v6, v4}, Lmabeijianxi/camera/model/MediaObject;->getPart(I)Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v3

    .line 105
    .local v3, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    if-eqz v3, :cond_0

    iget-object v6, v3, Lmabeijianxi/camera/model/MediaObject$MediaPart;->mCurrentOutputVideo:Ljava/io/FileOutputStream;

    if-eqz v6, :cond_0

    .line 109
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 110
    :try_start_0
    invoke-virtual {v3, v5}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->writeVideoData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/io/IOException;
    const-string v6, "MediaRecorder"

    const-string v7, "save_yuv"

    invoke-static {v6, v7, v1}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    iget-boolean v6, v3, Lmabeijianxi/camera/model/MediaObject$MediaPart;->recording:Z

    if-nez v6, :cond_0

    .line 119
    invoke-virtual {p0, v8}, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    invoke-virtual {p0, v8}, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->removeMessages(I)V

    .line 121
    const/4 v6, 0x0

    invoke-virtual {p0, v8, v4, v6}, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {p0, v6, v8, v9}, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 128
    .end local v0           #allocframe:I
    .end local v2           #j:I
    .end local v3           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    .end local v5           #yuv:[B
    :pswitch_1
    iget-object v6, p0, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->this$0:Lmabeijianxi/camera/MediaRecorderCustom;

    iget-object v6, v6, Lmabeijianxi/camera/MediaRecorderCustom;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v6, :cond_0

    .line 129
    iget-object v6, p0, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->this$0:Lmabeijianxi/camera/MediaRecorderCustom;

    iget-object v6, v6, Lmabeijianxi/camera/MediaRecorderCustom;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v6, v4}, Lmabeijianxi/camera/model/MediaObject;->getPart(I)Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v3

    .line 130
    .restart local v3       #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    if-eqz v3, :cond_0

    .line 132
    :try_start_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    check-cast v6, [B

    invoke-virtual {v3, v6}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->writeAudioData([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 133
    :catch_1
    move-exception v1

    .line 134
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "MediaRecorder"

    const-string v7, "save_yuv"

    invoke-static {v6, v7, v1}, Lmabeijianxi/camera/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :pswitch_2
    iget-object v6, p0, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->this$0:Lmabeijianxi/camera/MediaRecorderCustom;

    iget-object v6, v6, Lmabeijianxi/camera/MediaRecorderCustom;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v6, :cond_0

    .line 141
    iget-object v6, p0, Lmabeijianxi/camera/MediaRecorderCustom$YuvHandler;->this$0:Lmabeijianxi/camera/MediaRecorderCustom;

    iget-object v6, v6, Lmabeijianxi/camera/MediaRecorderCustom;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v6, v4}, Lmabeijianxi/camera/model/MediaObject;->getPart(I)Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v3

    .line 142
    .restart local v3       #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v3}, Lmabeijianxi/camera/model/MediaObject$MediaPart;->stop()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
