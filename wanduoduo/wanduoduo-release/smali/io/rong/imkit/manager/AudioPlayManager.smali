.class public Lio/rong/imkit/manager/AudioPlayManager;
.super Ljava/lang/Object;
.source "AudioPlayManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/manager/AudioPlayManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioPlayManager"


# instance fields
.field private _audioManager:Landroid/media/AudioManager;

.field private _mediaPlayer:Landroid/media/MediaPlayer;

.field private _playListener:Lio/rong/imkit/manager/IAudioPlayListener;

.field private _playingUri:Landroid/net/Uri;

.field private _powerManager:Landroid/os/PowerManager;

.field private _sensor:Landroid/hardware/Sensor;

.field private _sensorManager:Landroid/hardware/SensorManager;

.field private _wakeLock:Landroid/os/PowerManager$WakeLock;

.field private afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/manager/AudioPlayManager;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$002(Lio/rong/imkit/manager/AudioPlayManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lio/rong/imkit/manager/AudioPlayManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p1
.end method

.method static synthetic access$100(Lio/rong/imkit/manager/AudioPlayManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioPlayManager;->resetMediaPlayer()V

    return-void
.end method

.method static synthetic access$200(Lio/rong/imkit/manager/AudioPlayManager;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imkit/manager/AudioPlayManager;Landroid/media/AudioManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lio/rong/imkit/manager/AudioPlayManager;->muteAudioFocus(Landroid/media/AudioManager;Z)V

    return-void
.end method

.method static synthetic access$402(Lio/rong/imkit/manager/AudioPlayManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$500(Lio/rong/imkit/manager/AudioPlayManager;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playingUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$502(Lio/rong/imkit/manager/AudioPlayManager;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playingUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$600(Lio/rong/imkit/manager/AudioPlayManager;)Lio/rong/imkit/manager/IAudioPlayListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playListener:Lio/rong/imkit/manager/IAudioPlayListener;

    return-object v0
.end method

.method public static getInstance()Lio/rong/imkit/manager/AudioPlayManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lio/rong/imkit/manager/AudioPlayManager$SingletonHolder;->sInstance:Lio/rong/imkit/manager/AudioPlayManager;

    return-object v0
.end method

.method private muteAudioFocus(Landroid/media/AudioManager;Z)V
    .locals 3
    .parameter "audioManager"
    .parameter "bMute"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 191
    const-string v0, "AudioPlayManager"

    const-string v1, "muteAudioFocus Android 2.1 and below can not stop music"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 194
    :cond_0
    if-eqz p2, :cond_1

    .line 195
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_0
.end method

.method private resetMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 167
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 168
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/rong/imkit/manager/AudioPlayManager;->muteAudioFocus(Landroid/media/AudioManager;Z)V

    .line 170
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playListener:Lio/rong/imkit/manager/IAudioPlayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playingUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playListener:Lio/rong/imkit/manager/IAudioPlayListener;

    iget-object v1, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playingUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lio/rong/imkit/manager/IAudioPlayListener;->onStop(Landroid/net/Uri;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 178
    :cond_1
    iput-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playListener:Lio/rong/imkit/manager/IAudioPlayListener;

    .line 179
    iput-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playingUri:Landroid/net/Uri;

    .line 180
    iput-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 181
    return-void
.end method

.method private setScreenOff()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 74
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_powerManager:Landroid/os/PowerManager;

    const/16 v1, 0x20

    const-string v2, "AudioPlayManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 83
    :cond_1
    return-void

    .line 77
    :cond_2
    const-string v0, "AudioPlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does not support on level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setScreenOn()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 88
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public getPlayingUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playingUri:Landroid/net/Uri;

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 96
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .parameter "event"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 41
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v3

    .line 43
    .local v1, range:F
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 45
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 46
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 47
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioPlayManager;->setScreenOn()V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 50
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 51
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 55
    :goto_1
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioPlayManager;->setScreenOff()V

    .line 57
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 58
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 59
    .local v0, maxVolume:I
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v4, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 53
    .end local v0           #maxVolume:I
    :cond_2
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1

    .line 62
    :cond_3
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 64
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 65
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioPlayManager;->setScreenOn()V

    goto :goto_0
.end method

.method public startPlay(Landroid/content/Context;Landroid/net/Uri;Lio/rong/imkit/manager/IAudioPlayListener;)V
    .locals 5
    .parameter "context"
    .parameter "audioUri"
    .parameter "playListener"

    .prologue
    .line 99
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 100
    :cond_0
    const-string v2, "AudioPlayManager"

    const-string v3, "startPlay context or audioUri is null."

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioPlayManager;->resetMediaPlayer()V

    .line 105
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    if-eqz v2, :cond_3

    .line 106
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 107
    .local v0, am:Landroid/media/AudioManager;
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 108
    const/4 v2, 0x0

    iput-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 111
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_3
    new-instance v2, Lio/rong/imkit/manager/AudioPlayManager$1;

    invoke-direct {v2, p0, p1}, Lio/rong/imkit/manager/AudioPlayManager$1;-><init>(Lio/rong/imkit/manager/AudioPlayManager;Landroid/content/Context;)V

    iput-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 124
    :try_start_0
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_powerManager:Landroid/os/PowerManager;

    .line 125
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    .line 126
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_sensorManager:Landroid/hardware/SensorManager;

    .line 127
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_sensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_sensor:Landroid/hardware/Sensor;

    .line 128
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_sensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lio/rong/imkit/manager/AudioPlayManager;->_sensor:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v2, p0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 129
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lio/rong/imkit/manager/AudioPlayManager;->muteAudioFocus(Landroid/media/AudioManager;Z)V

    .line 131
    iput-object p3, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playListener:Lio/rong/imkit/manager/IAudioPlayListener;

    .line 132
    iput-object p2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playingUri:Landroid/net/Uri;

    .line 133
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    .line 134
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lio/rong/imkit/manager/AudioPlayManager$2;

    invoke-direct {v3, p0}, Lio/rong/imkit/manager/AudioPlayManager$2;-><init>(Lio/rong/imkit/manager/AudioPlayManager;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 148
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 149
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 150
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 151
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playListener:Lio/rong/imkit/manager/IAudioPlayListener;

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playListener:Lio/rong/imkit/manager/IAudioPlayListener;

    iget-object v3, p0, Lio/rong/imkit/manager/AudioPlayManager;->_playingUri:Landroid/net/Uri;

    invoke-interface {v2, v3}, Lio/rong/imkit/manager/IAudioPlayListener;->onStart(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    if-eqz p3, :cond_1

    .line 156
    invoke-interface {p3, p2}, Lio/rong/imkit/manager/IAudioPlayListener;->onStop(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method public stopPlay()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lio/rong/imkit/manager/AudioPlayManager;->resetMediaPlayer()V

    .line 162
    return-void
.end method
