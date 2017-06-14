.class public Lcom/wanduoduo/ui/index/VideoPlayActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "VideoPlayActivity.java"


# instance fields
.field sensorEventListener:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$JCAutoFullscreenListener;

.field sensorManager:Landroid/hardware/SensorManager;

.field videocontroller:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/ui/index/VideoPlayActivity;->isHaveTitleBar:Z

    .line 30
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/wanduoduo/ui/index/VideoPlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/wanduoduo/ui/index/VideoPlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 31
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$JCAutoFullscreenListener;

    invoke-direct {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$JCAutoFullscreenListener;-><init>()V

    iput-object v0, p0, Lcom/wanduoduo/ui/index/VideoPlayActivity;->sensorEventListener:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$JCAutoFullscreenListener;

    .line 32
    const v0, 0x7f04005d

    return v0
.end method

.method protected initData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    const v1, 0x7f0e01eb

    invoke-virtual {p0, v1}, Lcom/wanduoduo/ui/index/VideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iput-object v1, p0, Lcom/wanduoduo/ui/index/VideoPlayActivity;->videocontroller:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    .line 38
    invoke-virtual {p0}, Lcom/wanduoduo/ui/index/VideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, videoUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/wanduoduo/ui/index/VideoPlayActivity;->videocontroller:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v4, v2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->backPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    invoke-super {p0, p1}, Lcom/wanduoduo/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 67
    :pswitch_0
    invoke-virtual {p0}, Lcom/wanduoduo/ui/index/VideoPlayActivity;->finish()V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->onPause()V

    .line 59
    iget-object v0, p0, Lcom/wanduoduo/ui/index/VideoPlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/wanduoduo/ui/index/VideoPlayActivity;->sensorEventListener:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$JCAutoFullscreenListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 60
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->releaseAllVideos()V

    .line 61
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0}, Lcom/wanduoduo/base/BaseActivity;->onResume()V

    .line 45
    iget-object v1, p0, Lcom/wanduoduo/ui/index/VideoPlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 46
    .local v0, accelerometerSensor:Landroid/hardware/Sensor;
    iget-object v1, p0, Lcom/wanduoduo/ui/index/VideoPlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/wanduoduo/ui/index/VideoPlayActivity;->sensorEventListener:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$JCAutoFullscreenListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 47
    return-void
.end method

.method protected setStatusBar()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 75
    invoke-virtual {p0}, Lcom/wanduoduo/ui/index/VideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 76
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 77
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 78
    return-void
.end method
