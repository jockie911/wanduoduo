.class public Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;
.super Ljava/lang/Object;
.source "JCMediaManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;,
        Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;
    }
.end annotation


# static fields
.field public static final HANDLER_PREPARE:I = 0x0

.field public static final HANDLER_RELEASE:I = 0x2

.field public static final HANDLER_SETDISPLAY:I = 0x1

.field private static JCMediaManager:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

.field public static TAG:Ljava/lang/String;

.field public static textureView:Landroid/view/TextureView;


# instance fields
.field public currentVideoHeight:I

.field public currentVideoWidth:I

.field public lastState:I

.field mMediaHandler:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;

.field mMediaHandlerThread:Landroid/os/HandlerThread;

.field mainThreadHandler:Landroid/os/Handler;

.field public mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "JieCaoVideoPlayer"

    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->currentVideoWidth:I

    .line 37
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->currentVideoHeight:I

    .line 55
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    .line 57
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;

    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mMediaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mMediaHandler:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mainThreadHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method public static instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->JCMediaManager:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    invoke-direct {v0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;-><init>()V

    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->JCMediaManager:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    .line 51
    :cond_0
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->JCMediaManager:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    return-object v0
.end method


# virtual methods
.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 2
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 160
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$3;

    invoke-direct {v1, p0, p2}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$3;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 148
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$2;

    invoke-direct {v1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$2;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 184
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$5;

    invoke-direct {v1, p0, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$5;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 197
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$6;

    invoke-direct {v1, p0, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$6;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 136
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$1;

    invoke-direct {v1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$1;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 172
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$4;

    invoke-direct {v1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$4;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method

.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 2
    .parameter "mp"
    .parameter "width"
    .parameter "height"
    .parameter "sar_num"
    .parameter "sar_den"

    .prologue
    .line 210
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->currentVideoWidth:I

    .line 211
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->currentVideoHeight:I

    .line 212
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$7;

    invoke-direct {v1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$7;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method public prepare(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 3
    .parameter "url"
    .parameter
    .parameter "loop"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, mapHeadData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 115
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 116
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;

    invoke-direct {v0, p0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 117
    .local v0, fb:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 118
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mMediaHandler:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;

    invoke-virtual {v2, v1}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public releaseMediaPlayer()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 123
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 124
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mMediaHandler:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;

    invoke-virtual {v1, v0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    return-void
.end method

.method public setDisplay(Landroid/view/Surface;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 128
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 129
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 130
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mMediaHandler:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;

    invoke-virtual {v1, v0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    return-void
.end method
