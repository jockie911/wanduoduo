.class public Lio/rong/imkit/manager/AudioRecordManager;
.super Ljava/lang/Object;
.source "AudioRecordManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/manager/AudioRecordManager$TimerState;,
        Lio/rong/imkit/manager/AudioRecordManager$CancelState;,
        Lio/rong/imkit/manager/AudioRecordManager$RecordState;,
        Lio/rong/imkit/manager/AudioRecordManager$IdleState;,
        Lio/rong/imkit/manager/AudioRecordManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioRecordManager"


# instance fields
.field private RECORD_INTERVAL:I

.field cancelState:Lio/rong/imkit/manager/IAudioState;

.field idleState:Lio/rong/imkit/manager/IAudioState;

.field private mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPath:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private mCurAudioState:Lio/rong/imkit/manager/IAudioState;

.field private mHandler:Landroid/os/Handler;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mRecordWindow:Landroid/widget/PopupWindow;

.field private mRootView:Landroid/view/View;

.field private mStateIV:Landroid/widget/ImageView;

.field private mStateTV:Landroid/widget/TextView;

.field private mTargetId:Ljava/lang/String;

.field private mTimerTV:Landroid/widget/TextView;

.field recordState:Lio/rong/imkit/manager/IAudioState;

.field private smStartRecTime:J

.field timerState:Lio/rong/imkit/manager/IAudioState;


# direct methods
.method private constructor <init>()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v2, 0x3c

    iput v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->RECORD_INTERVAL:I

    .line 96
    new-instance v2, Lio/rong/imkit/manager/AudioRecordManager$IdleState;

    invoke-direct {v2, p0}, Lio/rong/imkit/manager/AudioRecordManager$IdleState;-><init>(Lio/rong/imkit/manager/AudioRecordManager;)V

    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->idleState:Lio/rong/imkit/manager/IAudioState;

    .line 129
    new-instance v2, Lio/rong/imkit/manager/AudioRecordManager$RecordState;

    invoke-direct {v2, p0}, Lio/rong/imkit/manager/AudioRecordManager$RecordState;-><init>(Lio/rong/imkit/manager/AudioRecordManager;)V

    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->recordState:Lio/rong/imkit/manager/IAudioState;

    .line 195
    new-instance v2, Lio/rong/imkit/manager/AudioRecordManager$CancelState;

    invoke-direct {v2, p0}, Lio/rong/imkit/manager/AudioRecordManager$CancelState;-><init>(Lio/rong/imkit/manager/AudioRecordManager;)V

    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->cancelState:Lio/rong/imkit/manager/IAudioState;

    .line 241
    new-instance v2, Lio/rong/imkit/manager/AudioRecordManager$TimerState;

    invoke-direct {v2, p0}, Lio/rong/imkit/manager/AudioRecordManager$TimerState;-><init>(Lio/rong/imkit/manager/AudioRecordManager;)V

    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->timerState:Lio/rong/imkit/manager/IAudioState;

    .line 69
    const-string v2, "AudioRecordManager"

    const-string v3, "AudioRecordManager"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 72
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 73
    .local v1, manager:Landroid/telephony/TelephonyManager;
    new-instance v2, Lio/rong/imkit/manager/AudioRecordManager$1;

    invoke-direct {v2, p0}, Lio/rong/imkit/manager/AudioRecordManager$1;-><init>(Lio/rong/imkit/manager/AudioRecordManager;)V

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1           #manager:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->idleState:Lio/rong/imkit/manager/IAudioState;

    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;

    .line 93
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->idleState:Lio/rong/imkit/manager/IAudioState;

    invoke-virtual {v2}, Lio/rong/imkit/manager/IAudioState;->enter()V

    .line 94
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lio/rong/imkit/manager/AudioRecordManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioRecordManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lio/rong/imkit/manager/AudioRecordManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioRecordManager;->checkAudioTimeLength()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lio/rong/imkit/manager/AudioRecordManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioRecordManager;->stopRec()V

    return-void
.end method

.method static synthetic access$1400(Lio/rong/imkit/manager/AudioRecordManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioRecordManager;->sendAudioFile()V

    return-void
.end method

.method static synthetic access$1500(Lio/rong/imkit/manager/AudioRecordManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioRecordManager;->destroyView()V

    return-void
.end method

.method static synthetic access$1600(Lio/rong/imkit/manager/AudioRecordManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lio/rong/imkit/manager/AudioRecordManager;->setTimeoutView(I)V

    return-void
.end method

.method static synthetic access$1700(Lio/rong/imkit/manager/AudioRecordManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioRecordManager;->deleteAudioFile()V

    return-void
.end method

.method static synthetic access$1800(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$1802(Lio/rong/imkit/manager/AudioRecordManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p1
.end method

.method static synthetic access$1900(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imkit/manager/AudioRecordManager;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lio/rong/imkit/manager/AudioRecordManager;->initView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lio/rong/imkit/manager/AudioRecordManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioRecordManager;->setRecordingView()V

    return-void
.end method

.method static synthetic access$500(Lio/rong/imkit/manager/AudioRecordManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioRecordManager;->startRec()V

    return-void
.end method

.method static synthetic access$602(Lio/rong/imkit/manager/AudioRecordManager;J)J
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lio/rong/imkit/manager/AudioRecordManager;->smStartRecTime:J

    return-wide p1
.end method

.method static synthetic access$702(Lio/rong/imkit/manager/AudioRecordManager;Lio/rong/imkit/manager/IAudioState;)Lio/rong/imkit/manager/IAudioState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;

    return-object p1
.end method

.method static synthetic access$800(Lio/rong/imkit/manager/AudioRecordManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioRecordManager;->audioDBChanged()V

    return-void
.end method

.method static synthetic access$900(Lio/rong/imkit/manager/AudioRecordManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioRecordManager;->setCancelView()V

    return-void
.end method

.method private audioDBChanged()V
    .locals 3

    .prologue
    .line 532
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    div-int/lit16 v0, v1, 0x258

    .line 534
    .local v0, db:I
    div-int/lit8 v1, v0, 0x5

    packed-switch v1, :pswitch_data_0

    .line 557
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_volume_8:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 561
    .end local v0           #db:I
    :cond_0
    :goto_0
    return-void

    .line 536
    .restart local v0       #db:I
    :pswitch_0
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_volume_1:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 539
    :pswitch_1
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_volume_2:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 542
    :pswitch_2
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_volume_3:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 545
    :pswitch_3
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_volume_4:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 548
    :pswitch_4
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_volume_5:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 551
    :pswitch_5
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_volume_6:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 554
    :pswitch_6
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_volume_7:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private checkAudioTimeLength()Z
    .locals 6

    .prologue
    .line 480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lio/rong/imkit/manager/AudioRecordManager;->smStartRecTime:J

    sub-long v0, v2, v4

    .line 481
    .local v0, delta:J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private deleteAudioFile()V
    .locals 3

    .prologue
    .line 499
    const-string v1, "AudioRecordManager"

    const-string v2, "deleteAudioFile"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioPath:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 502
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioPath:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 505
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private destroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    const-string v0, "AudioRecordManager"

    const-string v1, "destroyView"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRecordWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRecordWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 379
    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRecordWindow:Landroid/widget/PopupWindow;

    .line 380
    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    .line 381
    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;

    .line 382
    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mTimerTV:Landroid/widget/TextView;

    .line 383
    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;

    .line 384
    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mContext:Landroid/content/Context;

    .line 386
    :cond_0
    return-void
.end method

.method public static getInstance()Lio/rong/imkit/manager/AudioRecordManager;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lio/rong/imkit/manager/AudioRecordManager$SingletonHolder;->sInstance:Lio/rong/imkit/manager/AudioRecordManager;

    return-object v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 6
    .parameter "root"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 319
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 322
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v2, Lio/rong/imkit/R$layout;->rc_wi_vo_popup:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 324
    .local v1, view:Landroid/view/View;
    sget v2, Lio/rong/imkit/R$id;->rc_audio_state_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    .line 325
    sget v2, Lio/rong/imkit/R$id;->rc_audio_state_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;

    .line 326
    sget v2, Lio/rong/imkit/R$id;->rc_audio_timer:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mTimerTV:Landroid/widget/TextView;

    .line 328
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v1, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRecordWindow:Landroid/widget/PopupWindow;

    .line 329
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRecordWindow:Landroid/widget/PopupWindow;

    const/16 v3, 0x11

    invoke-virtual {v2, p1, v3, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 330
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRecordWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 331
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRecordWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 332
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRecordWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 333
    return-void
.end method

.method private muteAudioFocus(Landroid/media/AudioManager;Z)V
    .locals 3
    .parameter "audioManager"
    .parameter "bMute"

    .prologue
    .line 564
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 566
    const-string v0, "AudioRecordManager"

    const-string v1, "muteAudioFocus Android 2.1 and below can not stop music"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :goto_0
    return-void

    .line 569
    :cond_0
    if-eqz p2, :cond_1

    .line 570
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    .line 572
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0
.end method

.method private sendAudioFile()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 508
    const-string v2, "AudioRecordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendAudioFile path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioPath:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioPath:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lio/rong/imkit/manager/AudioRecordManager;->smStartRecTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    div-int/lit16 v0, v2, 0x3e8

    .line 511
    .local v0, duration:I
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioPath:Landroid/net/Uri;

    invoke-static {v2, v0}, Lio/rong/message/VoiceMessage;->obtain(Landroid/net/Uri;I)Lio/rong/message/VoiceMessage;

    move-result-object v1

    .line 512
    .local v1, voiceMessage:Lio/rong/message/VoiceMessage;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mTargetId:Ljava/lang/String;

    iget-object v4, p0, Lio/rong/imkit/manager/AudioRecordManager;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-static {v3, v4, v1}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/manager/AudioRecordManager$3;

    invoke-direct {v4, p0}, Lio/rong/imkit/manager/AudioRecordManager$3;-><init>(Lio/rong/imkit/manager/AudioRecordManager;)V

    invoke-virtual {v2, v3, v6, v6, v4}, Lio/rong/imkit/RongIM;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMessageCallback;)V

    .line 529
    .end local v0           #duration:I
    .end local v1           #voiceMessage:Lio/rong/message/VoiceMessage;
    :cond_0
    return-void
.end method

.method private setCancelView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    const-string v0, "AudioRecordManager"

    const-string v1, "setCancelView"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRecordWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mTimerTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_volume_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;

    sget v1, Lio/rong/imkit/R$string;->rc_voice_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 368
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;

    sget v1, Lio/rong/imkit/R$drawable;->rc_corner_voice_style:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 370
    :cond_0
    return-void
.end method

.method private setRecordingView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 347
    const-string v0, "AudioRecordManager"

    const-string v1, "setRecordingView"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRecordWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_volume_1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;

    sget v1, Lio/rong/imkit/R$string;->rc_voice_rec:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 354
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 355
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mTimerTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    :cond_0
    return-void
.end method

.method private setTimeoutView(I)V
    .locals 5
    .parameter "counter"

    .prologue
    const/4 v4, 0x0

    .line 336
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRecordWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;

    sget v1, Lio/rong/imkit/R$string;->rc_voice_rec:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 341
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mTimerTV:Landroid/widget/TextView;

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mTimerTV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    :cond_0
    return-void
.end method

.method private startRec()V
    .locals 8

    .prologue
    .line 448
    const-string v3, "AudioRecordManager"

    const-string v4, "startRec"

    invoke-static {v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :try_start_0
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lio/rong/imkit/manager/AudioRecordManager;->muteAudioFocus(Landroid/media/AudioManager;Z)V

    .line 452
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 453
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 455
    :try_start_1
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$integer;->rc_audio_encoding_bit_rate:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 456
    .local v0, bps:I
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x1f40

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 457
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 461
    .end local v0           #bps:I
    :goto_0
    :try_start_2
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 462
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 463
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 464
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 465
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lio/rong/imkit/manager/AudioRecordManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "temp.voice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioPath:Landroid/net/Uri;

    .line 466
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioPath:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 467
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 468
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 470
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 471
    .local v2, message:Landroid/os/Message;
    const/4 v3, 0x7

    iput v3, v2, Landroid/os/Message;->what:I

    .line 472
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 473
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lio/rong/imkit/manager/AudioRecordManager;->RECORD_INTERVAL:I

    mul-int/lit16 v4, v4, 0x3e8

    add-int/lit16 v4, v4, -0x2710

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 477
    .end local v2           #message:Landroid/os/Message;
    :goto_1
    return-void

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 474
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 475
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private stopRec()V
    .locals 3

    .prologue
    .line 485
    const-string v1, "AudioRecordManager"

    const-string v2, "stopRec"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :try_start_0
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lio/rong/imkit/manager/AudioRecordManager;->muteAudioFocus(Landroid/media/AudioManager;Z)V

    .line 488
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 490
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 491
    const/4 v1, 0x0

    iput-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public continueRecord()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/rong/imkit/manager/AudioRecordManager;->sendEmptyMessage(I)V

    .line 430
    return-void
.end method

.method public getMaxVoiceDuration()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->RECORD_INTERVAL:I

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 297
    const-string v1, "AudioRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 315
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 300
    :sswitch_0
    invoke-static {}, Lio/rong/imkit/manager/AudioStateMessage;->obtain()Lio/rong/imkit/manager/AudioStateMessage;

    move-result-object v0

    .line 301
    .local v0, m:Lio/rong/imkit/manager/AudioStateMessage;
    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, v0, Lio/rong/imkit/manager/AudioStateMessage;->what:I

    .line 302
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lio/rong/imkit/manager/AudioStateMessage;->obj:Ljava/lang/Object;

    .line 303
    invoke-virtual {p0, v0}, Lio/rong/imkit/manager/AudioRecordManager;->sendMessage(Lio/rong/imkit/manager/AudioStateMessage;)V

    goto :goto_0

    .line 306
    .end local v0           #m:Lio/rong/imkit/manager/AudioStateMessage;
    :sswitch_1
    invoke-static {}, Lio/rong/imkit/manager/AudioStateMessage;->obtain()Lio/rong/imkit/manager/AudioStateMessage;

    move-result-object v0

    .line 307
    .restart local v0       #m:Lio/rong/imkit/manager/AudioStateMessage;
    const/4 v1, 0x7

    iput v1, v0, Lio/rong/imkit/manager/AudioStateMessage;->what:I

    .line 308
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Lio/rong/imkit/manager/AudioStateMessage;->obj:Ljava/lang/Object;

    .line 309
    invoke-virtual {p0, v0}, Lio/rong/imkit/manager/AudioRecordManager;->sendMessage(Lio/rong/imkit/manager/AudioStateMessage;)V

    goto :goto_0

    .line 312
    .end local v0           #m:Lio/rong/imkit/manager/AudioStateMessage;
    :sswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lio/rong/imkit/manager/AudioRecordManager;->sendEmptyMessage(I)V

    goto :goto_0

    .line 298
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method sendEmptyMessage(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 442
    invoke-static {}, Lio/rong/imkit/manager/AudioStateMessage;->obtain()Lio/rong/imkit/manager/AudioStateMessage;

    move-result-object v0

    .line 443
    .local v0, message:Lio/rong/imkit/manager/AudioStateMessage;
    iput p1, v0, Lio/rong/imkit/manager/AudioStateMessage;->what:I

    .line 444
    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;

    invoke-virtual {v1, v0}, Lio/rong/imkit/manager/IAudioState;->handleMessage(Lio/rong/imkit/manager/AudioStateMessage;)V

    .line 445
    return-void
.end method

.method sendMessage(Lio/rong/imkit/manager/AudioStateMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 438
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;

    invoke-virtual {v0, p1}, Lio/rong/imkit/manager/IAudioState;->handleMessage(Lio/rong/imkit/manager/AudioStateMessage;)V

    .line 439
    return-void
.end method

.method public setMaxVoiceDuration(I)V
    .locals 0
    .parameter "maxVoiceDuration"

    .prologue
    .line 389
    iput p1, p0, Lio/rong/imkit/manager/AudioRecordManager;->RECORD_INTERVAL:I

    .line 390
    return-void
.end method

.method public startRecord(Landroid/view/View;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
    .locals 2
    .parameter "rootView"
    .parameter "conversationType"
    .parameter "targetId"

    .prologue
    .line 397
    iput-object p1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mRootView:Landroid/view/View;

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mContext:Landroid/content/Context;

    .line 399
    iput-object p2, p0, Lio/rong/imkit/manager/AudioRecordManager;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 400
    iput-object p3, p0, Lio/rong/imkit/manager/AudioRecordManager;->mTargetId:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioManager:Landroid/media/AudioManager;

    .line 403
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 407
    :cond_0
    new-instance v0, Lio/rong/imkit/manager/AudioRecordManager$2;

    invoke-direct {v0, p0}, Lio/rong/imkit/manager/AudioRecordManager$2;-><init>(Lio/rong/imkit/manager/AudioRecordManager;)V

    iput-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager;->mAfChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 417
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/rong/imkit/manager/AudioRecordManager;->sendEmptyMessage(I)V

    .line 419
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->getInstance()Lio/rong/imlib/TypingMessage/TypingMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->isShowMessageTyping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v0

    const-string v1, "RC:VcMsg"

    invoke-virtual {v0, p2, p3, v1}, Lio/rong/imlib/RongIMClient;->sendTypingStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_1
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lio/rong/imkit/manager/AudioRecordManager;->sendEmptyMessage(I)V

    .line 434
    return-void
.end method

.method public willCancelRecord()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/rong/imkit/manager/AudioRecordManager;->sendEmptyMessage(I)V

    .line 426
    return-void
.end method
