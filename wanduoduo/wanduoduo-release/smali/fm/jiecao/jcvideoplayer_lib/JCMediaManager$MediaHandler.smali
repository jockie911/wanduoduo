.class public Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;
.super Landroid/os/Handler;
.source "JCMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;


# direct methods
.method public constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;Landroid/os/Looper;)V
    .locals 0
    .parameter "this$0"
    .parameter "looper"

    .prologue
    .line 63
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    .line 64
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 65
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    const/4 v3, 0x0

    iput v3, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->currentVideoWidth:I

    .line 74
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    const/4 v3, 0x0

    iput v3, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->currentVideoHeight:I

    .line 75
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    .line 76
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    new-instance v3, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    iput-object v3, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 77
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAudioStreamType(I)V

    .line 78
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v3, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;

    iget-object v4, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;->url:Ljava/lang/String;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;->mapHeadData:Ljava/util/Map;

    invoke-virtual {v3, v4, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v3, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;

    iget-boolean v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$FuckBean;->looping:Z

    invoke-virtual {v3, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLooping(Z)V

    .line 80
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 81
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 82
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 83
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 84
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 85
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 86
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 87
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 88
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 94
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 95
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v2

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto/16 :goto_0

    .line 97
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    .line 98
    .local v1, holder:Landroid/view/Surface;
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    sget-object v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->TAG:Ljava/lang/String;

    const-string v3, "set surface"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v2

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v2, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto/16 :goto_0

    .line 105
    .end local v1           #holder:Landroid/view/Surface;
    :pswitch_2
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$MediaHandler;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    goto/16 :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
