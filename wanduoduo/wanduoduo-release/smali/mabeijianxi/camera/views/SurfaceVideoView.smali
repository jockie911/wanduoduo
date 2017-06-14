.class public Lmabeijianxi/camera/views/SurfaceVideoView;
.super Landroid/view/SurfaceView;
.source "SurfaceVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmabeijianxi/camera/views/SurfaceVideoView$OnPlayStateListener;
    }
.end annotation


# static fields
.field private static final HANDLER_MESSAGE_LOOP:I = 0x1

.field private static final HANDLER_MESSAGE_PARSE:I = 0x0

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final STATE_RELEASED:I = 0x5


# instance fields
.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPlayStateListener:Lmabeijianxi/camera/views/SurfaceVideoView$OnPlayStateListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHandler:Landroid/os/Handler;

.field private mVideoHeight:I

.field mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 39
    iput-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 56
    iput v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    .line 57
    iput v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mTargetState:I

    .line 373
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$1;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$1;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 383
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$2;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$2;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 413
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$3;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$3;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 425
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$4;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$4;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 435
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$5;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$5;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 444
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$6;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$6;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 471
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$7;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$7;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    .line 77
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->initVideoView()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 39
    iput-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 56
    iput v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    .line 57
    iput v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mTargetState:I

    .line 373
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$1;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$1;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 383
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$2;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$2;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 413
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$3;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$3;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 425
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$4;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$4;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 435
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$5;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$5;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 444
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$6;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$6;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 471
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$7;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$7;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->initVideoView()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 39
    iput-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 56
    iput v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    .line 57
    iput v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mTargetState:I

    .line 373
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$1;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$1;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 383
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$2;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$2;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 413
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$3;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$3;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 425
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$4;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$4;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 435
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$5;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$5;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 444
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$6;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$6;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 471
    new-instance v0, Lmabeijianxi/camera/views/SurfaceVideoView$7;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/views/SurfaceVideoView$7;-><init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    .line 72
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->initVideoView()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lmabeijianxi/camera/views/SurfaceVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    return v0
.end method

.method static synthetic access$002(Lmabeijianxi/camera/views/SurfaceVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$100(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1000(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1100(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1200(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lmabeijianxi/camera/views/SurfaceVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mDuration:I

    return p1
.end method

.method static synthetic access$302(Lmabeijianxi/camera/views/SurfaceVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$402(Lmabeijianxi/camera/views/SurfaceVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$500(Lmabeijianxi/camera/views/SurfaceVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$600(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$900(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method public static getSystemVolumn(Landroid/content/Context;)F
    .locals 4
    .parameter "context"

    .prologue
    .line 107
    if-eqz p0, :cond_0

    .line 109
    :try_start_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 110
    .local v0, mAudioManager:Landroid/media/AudioManager;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 111
    .local v1, maxVolumn:I
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 116
    .end local v0           #mAudioManager:Landroid/media/AudioManager;
    .end local v1           #maxVolumn:I
    :goto_0
    return v2

    .line 112
    :catch_0
    move-exception v2

    .line 116
    :cond_0
    const/high16 v2, 0x3f00

    goto :goto_0
.end method

.method private tryAgain(Ljava/lang/Exception;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    .line 179
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->openVideo(Landroid/net/Uri;)V

    .line 180
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/content/Context;Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "context"
    .parameter "event"

    .prologue
    .line 219
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 222
    :pswitch_0
    invoke-static {p1}, Lmabeijianxi/camera/views/SurfaceVideoView;->getSystemVolumn(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->setVolume(F)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, position:I
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 270
    iget v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    packed-switch v1, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 272
    :pswitch_0
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->getDuration()I

    move-result v0

    .line 273
    goto :goto_0

    .line 277
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    goto :goto_0

    .line 278
    :catch_1
    move-exception v1

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mDuration:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoWidth:I

    return v0
.end method

.method protected initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    iput v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoWidth:I

    .line 89
    iput v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHeight:I

    .line 91
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 92
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 97
    :cond_0
    invoke-virtual {p0, v3}, Lmabeijianxi/camera/views/SurfaceVideoView;->setFocusable(Z)V

    .line 98
    invoke-virtual {p0, v3}, Lmabeijianxi/camera/views/SurfaceVideoView;->setFocusableInTouchMode(Z)V

    .line 99
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->requestFocus()Z

    .line 101
    iput v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    .line 102
    iput v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mTargetState:I

    .line 103
    return-void
.end method

.method public isComplate()Z
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 291
    :try_start_0
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 296
    :goto_0
    return v0

    .line 293
    :catch_0
    move-exception v0

    .line 296
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public isPrepared()Z
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRelease()Z
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loopDelayed(II)V
    .locals 6
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 509
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    :cond_0
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 513
    :cond_1
    sub-int v0, p2, p1

    .line 514
    .local v0, delayMillis:I
    invoke-virtual {p0, p1}, Lmabeijianxi/camera/views/SurfaceVideoView;->seekTo(I)V

    .line 515
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 516
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->start()V

    .line 517
    :cond_2
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 518
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    :cond_3
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v4, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 520
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 544
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 545
    return-void
.end method

.method public openVideo(Landroid/net/Uri;)V
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 318
    if-eqz p1, :cond_0

    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    .line 320
    :cond_0
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 321
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mUri:Landroid/net/Uri;

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mUri:Landroid/net/Uri;

    .line 327
    iput v4, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mDuration:I

    .line 334
    const/4 v1, 0x0

    .line 336
    .local v1, exception:Ljava/lang/Exception;
    :try_start_0
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_3

    .line 337
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 338
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 339
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 340
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 341
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 342
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 343
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 344
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 347
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 351
    :goto_1
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 355
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 358
    const/4 v2, 0x1

    iput v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 366
    :goto_2
    if-eqz v1, :cond_1

    .line 367
    const/4 v2, -0x1

    iput v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    .line 368
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v2, :cond_1

    .line 369
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v5, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0

    .line 349
    :cond_3
    :try_start_1
    iget-object v2, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, ex:Ljava/io/IOException;
    move-object v1, v0

    .line 365
    goto :goto_2

    .line 361
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 362
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    move-object v1, v0

    .line 365
    goto :goto_2

    .line 363
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 364
    .local v0, ex:Ljava/lang/Exception;
    move-object v1, v0

    goto :goto_2
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    .line 201
    iput v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mTargetState:I

    .line 203
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 205
    :try_start_0
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 206
    const/4 v1, 0x4

    iput v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    .line 207
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnPlayStateListener:Lmabeijianxi/camera/views/SurfaceVideoView$OnPlayStateListener;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnPlayStateListener:Lmabeijianxi/camera/views/SurfaceVideoView$OnPlayStateListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lmabeijianxi/camera/views/SurfaceVideoView$OnPlayStateListener;->onStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-direct {p0, v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->tryAgain(Ljava/lang/Exception;)V

    goto :goto_0

    .line 211
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->tryAgain(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public pauseClearDelayed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 500
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->pause()V

    .line 501
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 503
    :cond_0
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    :cond_1
    return-void
.end method

.method public pauseDelayed(I)V
    .locals 4
    .parameter "delayMillis"

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    :cond_0
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 496
    return-void
.end method

.method public reOpen()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x2

    iput v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mTargetState:I

    .line 169
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->openVideo(Landroid/net/Uri;)V

    .line 170
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 301
    iput v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mTargetState:I

    .line 302
    iput v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    .line 303
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 311
    :cond_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    goto :goto_0

    .line 306
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2
    .parameter "msec"

    .prologue
    .line 254
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 256
    :cond_0
    if-gez p1, :cond_1

    .line 257
    const/4 p1, 0x0

    .line 258
    :cond_1
    :try_start_0
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_2
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0

    .line 259
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 2
    .parameter "looping"

    .prologue
    .line 244
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 246
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 148
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 149
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 132
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 133
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 120
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 121
    return-void
.end method

.method public setOnPlayStateListener(Lmabeijianxi/camera/views/SurfaceVideoView$OnPlayStateListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 136
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnPlayStateListener:Lmabeijianxi/camera/views/SurfaceVideoView$OnPlayStateListener;

    .line 137
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 128
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 129
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 140
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 141
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 124
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 125
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 153
    invoke-static {p1}, Lmabeijianxi/camera/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x2

    iput v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mTargetState:I

    .line 155
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->openVideo(Landroid/net/Uri;)V

    .line 157
    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 229
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 231
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_1
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 183
    iput v3, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mTargetState:I

    .line 185
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    iget v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 187
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 189
    :cond_1
    const/4 v1, 0x3

    iput v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I

    .line 190
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnPlayStateListener:Lmabeijianxi/camera/views/SurfaceVideoView$OnPlayStateListener;

    if-eqz v1, :cond_2

    .line 191
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mOnPlayStateListener:Lmabeijianxi/camera/views/SurfaceVideoView$OnPlayStateListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lmabeijianxi/camera/views/SurfaceVideoView$OnPlayStateListener;->onStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    :cond_2
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-direct {p0, v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->tryAgain(Ljava/lang/Exception;)V

    goto :goto_0

    .line 194
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->tryAgain(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 533
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 534
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 524
    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 525
    .local v0, needReOpen:Z
    :goto_0
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 526
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->reOpen()V

    .line 529
    :cond_0
    return-void

    .line 524
    .end local v0           #needReOpen:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 539
    invoke-virtual {p0}, Lmabeijianxi/camera/views/SurfaceVideoView;->release()V

    .line 540
    return-void
.end method
