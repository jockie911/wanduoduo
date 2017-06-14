.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$JCAutoFullscreenListener;
.super Ljava/lang/Object;
.source "JCVideoPlayer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JCAutoFullscreenListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 885
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/high16 v5, 0x4130

    .line 865
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 866
    .local v0, x:F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v1, v3, v4

    .line 867
    .local v1, y:F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v2, v3, v4

    .line 868
    .local v2, z:F
    const/high16 v3, -0x3ed0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    cmpl-float v3, v0, v5

    if-lez v3, :cond_2

    .line 872
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 873
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v3

    invoke-interface {v3}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->autoFullscreenLeft()V

    goto :goto_0

    .line 875
    :cond_2
    cmpl-float v3, v1, v5

    if-lez v3, :cond_0

    .line 876
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 877
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v3

    invoke-interface {v3}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->autoQuitFullscreen()V

    goto :goto_0
.end method
