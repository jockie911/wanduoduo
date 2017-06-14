.class public Lcom/yixia/videoeditor/adapter/UtilityAdapter;
.super Ljava/lang/Object;
.source "UtilityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yixia/videoeditor/adapter/UtilityAdapter$OnNativeListener;
    }
.end annotation


# static fields
.field public static final FILTERINFO_CACHEDFRAME:I = 0x1

.field public static final FILTERINFO_CAUSEGC:I = 0x6

.field public static final FILTERINFO_PAUSEPLAY:I = 0x3

.field public static final FILTERINFO_PROCESSEDFRAME:I = 0x0

.field public static final FILTERINFO_PROGRESS:I = 0x4

.field public static final FILTERINFO_STARTPLAY:I = 0x2

.field public static final FILTERINFO_TOTALMS:I = 0x5

.field public static final FILTERTYPE_FILTER:I = 0x0

.field public static final FILTERTYPE_FRAME:I = 0x1

.field public static final FLIPTYPE_HORIZONTAL:I = 0x1

.field public static final FLIPTYPE_NORMAL:I = 0x0

.field public static final FLIPTYPE_VERTICAL:I = 0x2

.field public static final NOTIFYKEY_PLAYSTATE:I = 0x1

.field public static final NOTIFYVALUE_BUFFEREMPTY:I = 0x0

.field public static final NOTIFYVALUE_BUFFERFULL:I = 0x1

.field public static final NOTIFYVALUE_HAVEERROR:I = 0x3

.field public static final NOTIFYVALUE_PLAYFINISH:I = 0x2

.field public static final OUTPUTFORMAT_MASK_HARDWARE_ACC:I = 0x10

.field public static final OUTPUTFORMAT_MASK_MP4:I = 0x20

.field public static final OUTPUTFORMAT_MASK_NEED_LASTSNAP:I = 0x8

.field public static final OUTPUTFORMAT_MASK_ZIP:I = 0x4

.field public static final OUTPUTFORMAT_RGBA:I = 0x2

.field public static final OUTPUTFORMAT_YUV:I = 0x1

.field public static final PARSERACTION_FREE:I = 0x4

.field public static final PARSERACTION_INIT:I = 0x0

.field public static final PARSERACTION_PROGRESS:I = 0x5

.field public static final PARSERACTION_START:I = 0x2

.field public static final PARSERACTION_STOP:I = 0x3

.field public static final PARSERACTION_UPDATE:I = 0x1

.field private static volatile gInitialized:Z

.field protected static mAudioTrack:Landroid/media/AudioTrack;

.field private static mOnNativeListener:Lcom/yixia/videoeditor/adapter/UtilityAdapter$OnNativeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "utility"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    return-void
.end method

.method public static native FFmpegInit(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public static native FFmpegIsRunning(Ljava/lang/String;)Z
.end method

.method public static native FFmpegKill(Ljava/lang/String;)V
.end method

.method public static native FFmpegRun(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native FFmpegVideoGetInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native FFmpegVideoGetTransTime(I)I
.end method

.method public static native FilterParserAction(Ljava/lang/String;I)I
.end method

.method public static native FilterParserFree()V
.end method

.method public static native FilterParserInfo(I)I
.end method

.method public static native FilterParserInit(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public static FilterParserPause(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 131
    sget-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 132
    if-eqz p0, :cond_1

    .line 133
    sget-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 138
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->RenderPause(Z)V

    .line 139
    return-void

    .line 135
    :cond_1
    sget-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_0
.end method

.method public static native GetVitamioAudioCallbackPointer(I)I
.end method

.method public static native GetVitamioVideoCallbackPointer(I)I
.end method

.method public static native RenderCloseOutputFile()V
.end method

.method public static native RenderDataPcm([B)V
.end method

.method public static native RenderDataYuv([B)V
.end method

.method public static native RenderGetDataArgb(F)[I
.end method

.method public static native RenderInputSettings(IIII)V
.end method

.method public static native RenderIsOutputJobFinish()Z
.end method

.method public static native RenderOpenOutputFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native RenderOutputSettings(IIII)V
.end method

.method public static native RenderPause(Z)V
.end method

.method public static native RenderSetFilter(ILjava/lang/String;)V
.end method

.method public static native RenderStep()V
.end method

.method public static native RenderViewInit(II)I
.end method

.method public static native SaveData(Ljava/lang/String;[II)Z
.end method

.method public static native SoundEffect(Ljava/lang/String;Ljava/lang/String;FFI)I
.end method

.method public static native VideoGetMetadataRotate(Ljava/lang/String;)I
.end method

.method public static native VitamioStartRecord(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native VitamioStopRecord(I)I
.end method

.method public static freeFilterParser()V
    .locals 2

    .prologue
    .line 198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->gInitialized:Z

    .line 199
    const-string v0, ""

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FilterParserAction(Ljava/lang/String;I)I

    .line 200
    return-void
.end method

.method public static initFilterParser()V
    .locals 2

    .prologue
    .line 191
    sget-boolean v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->gInitialized:Z

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->gInitialized:Z

    .line 193
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FilterParserAction(Ljava/lang/String;I)I

    .line 195
    :cond_0
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->gInitialized:Z

    return v0
.end method

.method public static ndkAudioInit()Z
    .locals 7

    .prologue
    const v2, 0xac44

    const/4 v6, 0x1

    const/4 v3, 0x2

    .line 218
    invoke-static {v2, v3, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 220
    .local v5, desiredFrames:I
    sget-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    .line 227
    sget-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 228
    const/4 v0, 0x0

    sput-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    .line 229
    const-string v0, "ndkAudio"

    const-string v1, "Init failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v6, 0x0

    .line 234
    :cond_0
    :goto_0
    return v6

    .line 232
    :cond_1
    sget-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    goto :goto_0
.end method

.method public static ndkAudioQuit()V
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 266
    sget-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 267
    const/4 v0, 0x0

    sput-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    .line 269
    :cond_0
    return-void
.end method

.method public static ndkAudioWrite([SI)V
    .locals 6
    .parameter "buffer"
    .parameter "cnt"

    .prologue
    .line 239
    const/16 v1, 0x64

    .line 241
    .local v1, limitcount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 242
    add-int/lit8 v1, v1, -0x1

    .line 243
    if-gtz v1, :cond_1

    .line 244
    const-string v3, "ndkAudio"

    const-string v4, "avoid dead loop"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    :goto_1
    return-void

    .line 247
    :cond_1
    sget-object v3, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mAudioTrack:Landroid/media/AudioTrack;

    sub-int v4, p1, v0

    invoke-virtual {v3, p0, v0, v4}, Landroid/media/AudioTrack;->write([SII)I

    move-result v2

    .line 248
    .local v2, result:I
    if-lez v2, :cond_2

    .line 249
    add-int/2addr v0, v2

    goto :goto_0

    .line 250
    :cond_2
    if-nez v2, :cond_3

    .line 252
    const-wide/16 v4, 0x1

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v3

    goto :goto_0

    .line 257
    :cond_3
    const-string v3, "ndkAudio"

    const-string v4, "write failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static ndkNotify(II)I
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 284
    sget-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mOnNativeListener:Lcom/yixia/videoeditor/adapter/UtilityAdapter$OnNativeListener;

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mOnNativeListener:Lcom/yixia/videoeditor/adapter/UtilityAdapter$OnNativeListener;

    invoke-interface {v0, p0, p1}, Lcom/yixia/videoeditor/adapter/UtilityAdapter$OnNativeListener;->ndkNotify(II)V

    .line 289
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 287
    :cond_0
    const-string v0, "ndkNotify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndkNotify key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static registerNativeListener(Lcom/yixia/videoeditor/adapter/UtilityAdapter$OnNativeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 294
    sput-object p0, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->mOnNativeListener:Lcom/yixia/videoeditor/adapter/UtilityAdapter$OnNativeListener;

    .line 295
    return-void
.end method
