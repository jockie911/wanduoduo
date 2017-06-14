.class public abstract Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.super Landroid/widget/FrameLayout;
.source "JCVideoPlayer.java"

# interfaces
.implements Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$JCAutoFullscreenListener;,
        Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;
    }
.end annotation


# static fields
.field public static ACTION_BAR_EXIST:Z = false

.field public static CLICK_QUIT_FULLSCREEN_TIME:J = 0x0L

.field public static final CURRENT_STATE_AUTO_COMPLETE:I = 0x6

.field public static final CURRENT_STATE_ERROR:I = 0x7

.field public static final CURRENT_STATE_NORMAL:I = 0x0

.field public static final CURRENT_STATE_PAUSE:I = 0x5

.field public static final CURRENT_STATE_PLAYING:I = 0x2

.field public static final CURRENT_STATE_PLAYING_BUFFERING_START:I = 0x3

.field public static final CURRENT_STATE_PREPAREING:I = 0x1

.field public static final FULLSCREEN_ID:I = 0x8405

.field public static final FULL_SCREEN_NORMAL_DELAY:I = 0x1f4

.field protected static JC_BURIED_POINT:Lfm/jiecao/jcvideoplayer_lib/JCBuriedPoint; = null

.field public static final SCREEN_LAYOUT_DETAIL:I = 0x3

.field public static final SCREEN_LAYOUT_LIST:I = 0x0

.field public static final SCREEN_WINDOW_FULLSCREEN:I = 0x1

.field public static final SCREEN_WINDOW_TINY:I = 0x2

.field public static final TAG:Ljava/lang/String; = "JieCaoVideoPlayer"

.field public static final THRESHOLD:I = 0x50

.field public static final TINY_ID:I = 0x8406

.field public static TOOL_BAR_EXIST:Z

.field protected static UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

.field public static WIFI_TIP_DIALOG_SHOWED:Z

.field public static onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public bottomContainer:Landroid/view/ViewGroup;

.field public currentScreen:I

.field public currentState:I

.field public currentTimeTextView:Landroid/widget/TextView;

.field public fullscreenButton:Landroid/widget/ImageView;

.field lastAutoFullscreenTime:J

.field public looping:Z

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mBackUpBufferState:I

.field protected mChangePosition:Z

.field protected mChangeVolume:Z

.field protected mDownPosition:I

.field protected mDownX:F

.field protected mDownY:F

.field protected mGestureDownVolume:I

.field protected mHandler:Landroid/os/Handler;

.field protected mProgressTimerTask:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mSeekTimePosition:I

.field protected mTouchingProgressBar:Z

.field public mapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public objects:[Ljava/lang/Object;

.field public progressBar:Landroid/widget/SeekBar;

.field public seekToInAdvance:I

.field public startButton:Landroid/widget/ImageView;

.field public surface:Landroid/view/Surface;

.field public textureViewContainer:Landroid/view/ViewGroup;

.field public topContainer:Landroid/view/ViewGroup;

.field public totalTimeTextView:Landroid/widget/TextView;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 52
    sput-boolean v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->ACTION_BAR_EXIST:Z

    .line 53
    sput-boolean v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->TOOL_BAR_EXIST:Z

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    .line 55
    const-wide/16 v0, 0x0

    sput-wide v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 744
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$1;

    invoke-direct {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$1;-><init>()V

    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    iput v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    .line 71
    iput v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentScreen:I

    .line 74
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->url:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->objects:[Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->looping:Z

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mapHeadData:Ljava/util/Map;

    .line 78
    iput v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->seekToInAdvance:I

    .line 96
    iput v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mBackUpBufferState:I

    .line 453
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->lastAutoFullscreenTime:J

    .line 109
    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->init(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    .line 71
    iput v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentScreen:I

    .line 74
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->url:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->objects:[Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->looping:Z

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mapHeadData:Ljava/util/Map;

    .line 78
    iput v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->seekToInAdvance:I

    .line 96
    iput v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mBackUpBufferState:I

    .line 453
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->lastAutoFullscreenTime:J

    .line 114
    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->init(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method public static backPress()Z
    .locals 2

    .prologue
    .line 597
    const-string v0, "JieCaoVideoPlayer"

    const-string v1, "backPress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->goToOtherListener()Z

    move-result v0

    .line 601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hideSupportActionBar(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/16 v2, 0x400

    .line 836
    sget-boolean v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->ACTION_BAR_EXIST:Z

    if-eqz v1, :cond_0

    .line 837
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 838
    .local v0, ab:Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 839
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 840
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 843
    .end local v0           #ab:Landroid/support/v7/app/ActionBar;
    :cond_0
    sget-boolean v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->TOOL_BAR_EXIST:Z

    if-eqz v1, :cond_1

    .line 844
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 847
    :cond_1
    return-void
.end method

.method public static releaseAllVideos()V
    .locals 2

    .prologue
    .line 780
    const-string v0, "JieCaoVideoPlayer"

    const-string v1, "releaseAllVideos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 782
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->onCompletion()V

    .line 784
    :cond_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->lastListener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 785
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->lastListener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->onCompletion()V

    .line 787
    :cond_1
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->releaseMediaPlayer()V

    .line 788
    return-void
.end method

.method public static setJcBuriedPoint(Lfm/jiecao/jcvideoplayer_lib/JCBuriedPoint;)V
    .locals 0
    .parameter "jcBuriedPoint"

    .prologue
    .line 791
    sput-object p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->JC_BURIED_POINT:Lfm/jiecao/jcvideoplayer_lib/JCBuriedPoint;

    .line 792
    return-void
.end method

.method public static showSupportActionBar(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 850
    sget-boolean v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->ACTION_BAR_EXIST:Z

    if-eqz v1, :cond_0

    .line 851
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 852
    .local v0, ab:Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 853
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 854
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 857
    .end local v0           #ab:Landroid/support/v7/app/ActionBar;
    :cond_0
    sget-boolean v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->TOOL_BAR_EXIST:Z

    if-eqz v1, :cond_1

    .line 858
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 860
    :cond_1
    return-void
.end method

.method public static varargs startFullscreen(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 16
    .parameter "context"
    .parameter "_class"
    .parameter "url"
    .parameter "objects"

    .prologue
    .line 802
    invoke-static/range {p0 .. p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->hideSupportActionBar(Landroid/content/Context;)V

    .line 803
    invoke-static/range {p0 .. p0}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->getAppCompActivity(Landroid/content/Context;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v12

    const v13, 0x1020002

    invoke-virtual {v12, v13}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 804
    .local v9, vp:Landroid/view/ViewGroup;
    const v12, 0x8405

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 805
    .local v7, old:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 806
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 809
    :cond_0
    const/4 v12, 0x1

    :try_start_0
    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/content/Context;

    aput-object v14, v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 810
    .local v2, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;>;"
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    invoke-virtual {v2, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 811
    .local v5, jcVideoPlayer:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
    const v12, 0x8405

    invoke-virtual {v5, v12}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setId(I)V

    .line 812
    const-string v12, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 813
    .local v11, wm:Landroid/view/WindowManager;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 814
    .local v10, w:I
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 815
    .local v4, h:I
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 816
    .local v6, lp:Landroid/widget/FrameLayout$LayoutParams;
    sub-int v12, v10, v4

    div-int/lit8 v12, v12, 0x2

    sub-int v13, v10, v4

    neg-int v13, v13

    div-int/lit8 v13, v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 817
    invoke-virtual {v9, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    sget v12, Lfm/jiecao/jcvideoplayer_lib/R$anim;->start_fullscreen:I

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 820
    .local v8, ra:Landroid/view/animation/Animation;
    invoke-virtual {v5, v8}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setAnimation(Landroid/view/animation/Animation;)V

    .line 822
    const/4 v12, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v12, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 823
    invoke-virtual {v5}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->addTextureView()V

    .line 824
    const/high16 v12, 0x42b4

    invoke-virtual {v5, v12}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setRotation(F)V

    .line 826
    iget-object v12, v5, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->performClick()Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 833
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;>;"
    .end local v4           #h:I
    .end local v5           #jcVideoPlayer:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
    .end local v6           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v8           #ra:Landroid/view/animation/Animation;
    .end local v10           #w:I
    .end local v11           #wm:Landroid/view/WindowManager;
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v3

    .line 829
    .local v3, e:Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 830
    .end local v3           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v3

    .line 831
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addTextureView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 303
    const-string v1, "JieCaoVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTextureView ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 305
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 307
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->textureView:Landroid/view/TextureView;

    .line 308
    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lfm/jiecao/jcvideoplayer_lib/JCResizeTextureView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->textureView:Landroid/view/TextureView;

    .line 309
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 311
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 312
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 313
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    return-void
.end method

.method public autoFullscreenLeft()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->lastAutoFullscreenTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentScreen:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentScreen:I

    if-eq v0, v4, :cond_0

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->lastAutoFullscreenTime:J

    .line 463
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->startWindowFullscreen()V

    .line 465
    :cond_0
    return-void
.end method

.method public autoFullscreenRight()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public autoQuitFullscreen()V
    .locals 4

    .prologue
    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->lastAutoFullscreenTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentScreen:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->lastAutoFullscreenTime:J

    .line 479
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->backPress()Z

    .line 481
    :cond_0
    return-void
.end method

.method public cancelProgressTimer()V
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 358
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mProgressTimerTask:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mProgressTimerTask:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;

    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;->cancel()Z

    .line 361
    :cond_1
    return-void
.end method

.method public clearFullscreenLayout()V
    .locals 5

    .prologue
    .line 378
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 379
    .local v2, vp:Landroid/view/ViewGroup;
    const v3, 0x8405

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 380
    .local v0, oldF:Landroid/view/View;
    const v3, 0x8406

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 381
    .local v1, oldT:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 384
    :cond_0
    if-eqz v1, :cond_1

    .line 385
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 387
    :cond_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->showSupportActionBar(Landroid/content/Context;)V

    .line 388
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 0

    .prologue
    .line 898
    return-void
.end method

.method public dismissVolumDialog()V
    .locals 0

    .prologue
    .line 906
    return-void
.end method

.method public getCurrentPositionWhenPlaying()I
    .locals 6

    .prologue
    .line 697
    const/4 v1, 0x0

    .line 698
    .local v1, position:I
    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 700
    :cond_0
    :try_start_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v3

    iget-object v3, v3, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    long-to-int v1, v4

    :cond_1
    move v2, v1

    .line 706
    .end local v1           #position:I
    .local v2, position:I
    :goto_0
    return v2

    .line 701
    .end local v2           #position:I
    .restart local v1       #position:I
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v2, v1

    .line 703
    .end local v1           #position:I
    .restart local v2       #position:I
    goto :goto_0
.end method

.method public getDuration()I
    .locals 6

    .prologue
    .line 710
    const/4 v0, 0x0

    .line 712
    .local v0, duration:I
    :try_start_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v3

    iget-object v3, v3, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    long-to-int v0, v4

    move v1, v0

    .line 717
    .end local v0           #duration:I
    .local v1, duration:I
    :goto_0
    return v1

    .line 713
    .end local v1           #duration:I
    .restart local v0       #duration:I
    :catch_0
    move-exception v2

    .line 714
    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v1, v0

    .line 715
    .end local v0           #duration:I
    .restart local v1       #duration:I
    goto :goto_0
.end method

.method public abstract getLayoutId()I
.end method

.method public goBackThisListener()V
    .locals 3

    .prologue
    .line 532
    const-string v0, "JieCaoVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goBackThisListener  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v0

    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->lastState:I

    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    .line 535
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    .line 536
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->addTextureView()V

    .line 538
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->showSupportActionBar(Landroid/content/Context;)V

    .line 539
    return-void
.end method

.method public goToOtherListener()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 425
    const-string v1, "JieCaoVideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goToOtherListener  ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentScreen:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentScreen:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 433
    :cond_0
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentScreen:I

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onEvent(I)V

    .line 436
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->lastListener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v1

    if-nez v1, :cond_2

    .line 437
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v1

    invoke-interface {v1}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->onCompletion()V

    .line 438
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->showSupportActionBar(Landroid/content/Context;)V

    move v1, v2

    .line 450
    :goto_1
    return v1

    .line 433
    :cond_1
    const/16 v1, 0xa

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 442
    .local v0, vp:Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 443
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->lastListener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v1

    invoke-static {v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->setListener(Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;)V

    .line 444
    const/4 v1, 0x0

    invoke-static {v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->setLastListener(Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;)V

    .line 445
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v1

    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    iput v3, v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->lastState:I

    .line 446
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v1

    invoke-interface {v1}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->goBackThisListener()V

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    move v1, v2

    .line 448
    goto :goto_1

    .line 450
    .end local v0           #vp:Landroid/view/ViewGroup;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 118
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 119
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->start:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->startButton:Landroid/widget/ImageView;

    .line 120
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->fullscreen:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->fullscreenButton:Landroid/widget/ImageView;

    .line 121
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->progress:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    .line 122
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->current:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    .line 123
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->total:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    .line 124
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->layout_bottom:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->bottomContainer:Landroid/view/ViewGroup;

    .line 125
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->surface_container:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    .line 126
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->layout_top:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->topContainer:Landroid/view/ViewGroup;

    .line 128
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->fullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 131
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mScreenWidth:I

    .line 136
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mScreenHeight:I

    .line 137
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 139
    return-void
.end method

.method public isCurrentMediaListener()Z
    .locals 1

    .prologue
    .line 775
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 776
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoCompletion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    const-string v0, "JieCaoVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoCompletion  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onEvent(I)V

    .line 394
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->onCompletion()V

    .line 396
    invoke-static {v3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->setListener(Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;)V

    .line 398
    :cond_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->lastListener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 399
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->lastListener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->onCompletion()V

    .line 400
    invoke-static {v3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->setLastListener(Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;)V

    .line 402
    :cond_1
    return-void
.end method

.method public onBufferingUpdate(I)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 485
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 486
    const-string v0, "JieCaoVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferingUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setTextAndProgress(I)V

    .line 489
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x7

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 164
    .local v0, i:I
    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$id;->start:I

    if-ne v0, v3, :cond_8

    .line 165
    const-string v3, "JieCaoVideoPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick start ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfm/jiecao/jcvideoplayer_lib/R$string;->no_url:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    if-eqz v3, :cond_2

    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    if-ne v3, v6, :cond_5

    .line 171
    :cond_2
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->url:Ljava/lang/String;

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v3, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v3, :cond_3

    .line 172
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->showWifiDialog()V

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->prepareVideo()V

    .line 176
    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    if-eq v3, v6, :cond_4

    :goto_1
    invoke-virtual {p0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onEvent(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 177
    :cond_5
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    if-ne v1, v7, :cond_6

    .line 178
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onEvent(I)V

    .line 179
    const-string v1, "JieCaoVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseVideo ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v1

    iget-object v1, v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 181
    invoke-virtual {p0, v8}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    goto :goto_0

    .line 182
    :cond_6
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    if-ne v1, v8, :cond_7

    .line 183
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onEvent(I)V

    .line 184
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v1

    iget-object v1, v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    .line 185
    invoke-virtual {p0, v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    goto :goto_0

    .line 186
    :cond_7
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 187
    invoke-virtual {p0, v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onEvent(I)V

    .line 188
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->prepareVideo()V

    goto/16 :goto_0

    .line 190
    :cond_8
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->fullscreen:I

    if-ne v0, v1, :cond_a

    .line 191
    const-string v1, "JieCaoVideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick fullscreen ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    .line 193
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentScreen:I

    if-ne v1, v2, :cond_9

    .line 195
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->backPress()Z

    goto/16 :goto_0

    .line 197
    :cond_9
    const-string v1, "JieCaoVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toFullscreenActivity ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0, v6}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onEvent(I)V

    .line 199
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->startWindowFullscreen()V

    goto/16 :goto_0

    .line 201
    :cond_a
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->surface_container:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    if-ne v1, v6, :cond_0

    .line 202
    const-string v1, "JieCaoVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick surfaceContainer State=Error ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->prepareVideo()V

    goto/16 :goto_0
.end method

.method public onCompletion()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 406
    const-string v1, "JieCaoVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCompletion  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0, v4}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    .line 408
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 409
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 412
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->setListener(Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;)V

    .line 414
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v1

    iput v4, v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->currentVideoWidth:I

    .line 415
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v1

    iput v4, v1, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->currentVideoHeight:I

    .line 417
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 418
    .local v0, mAudioManager:Landroid/media/AudioManager;
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 419
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 420
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->clearFullscreenLayout()V

    .line 421
    return-void
.end method

.method public onError(II)V
    .locals 3
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 497
    const-string v0, "JieCaoVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/16 v0, 0x26

    if-eq p1, v0, :cond_0

    const/16 v0, -0x26

    if-eq p1, v0, :cond_0

    .line 499
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    .line 501
    :cond_0
    return-void
.end method

.method public onEvent(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 795
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->JC_BURIED_POINT:Lfm/jiecao/jcvideoplayer_lib/JCBuriedPoint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->JC_BURIED_POINT:Lfm/jiecao/jcvideoplayer_lib/JCBuriedPoint;

    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->url:Ljava/lang/String;

    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentScreen:I

    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2, v3}, Lfm/jiecao/jcvideoplayer_lib/JCBuriedPoint;->onEvent(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 798
    :cond_0
    return-void
.end method

.method public onInfo(II)V
    .locals 4
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, -0x1

    .line 505
    const-string v0, "JieCaoVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo what - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_1

    .line 507
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mBackUpBufferState:I

    .line 508
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    .line 509
    const-string v0, "JieCaoVideoPlayer"

    const-string v1, "MEDIA_INFO_BUFFERING_START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    const/16 v0, 0x2be

    if-ne p1, v0, :cond_0

    .line 511
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mBackUpBufferState:I

    if-eq v0, v3, :cond_2

    .line 512
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mBackUpBufferState:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    .line 513
    iput v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mBackUpBufferState:I

    .line 515
    :cond_2
    const-string v0, "JieCaoVideoPlayer"

    const-string v1, "MEDIA_INFO_BUFFERING_END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPrepared()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 365
    const-string v0, "JieCaoVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v0

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    .line 369
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->seekToInAdvance:I

    if-eq v0, v4, :cond_1

    .line 370
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v0

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->seekToInAdvance:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

    .line 371
    iput v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->seekToInAdvance:I

    .line 373
    :cond_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->startProgressTimer()V

    .line 374
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 566
    return-void
.end method

.method public onSeekComplete()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 570
    const-string v1, "JieCaoVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bottomProgress onStartTrackingTouch ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->cancelProgressTimer()V

    .line 572
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 573
    .local v0, vpdown:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    .line 574
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 575
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 577
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .parameter "seekBar"

    .prologue
    const/4 v5, 0x5

    .line 581
    const-string v2, "JieCaoVideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bottomProgress onStopTrackingTouch ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-virtual {p0, v5}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onEvent(I)V

    .line 583
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->startProgressTimer()V

    .line 584
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 585
    .local v1, vpup:Landroid/view/ViewParent;
    :goto_0
    if-eqz v1, :cond_0

    .line 586
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 587
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 589
    :cond_0
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    if-eq v2, v5, :cond_1

    .line 594
    :goto_1
    return-void

    .line 591
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x64

    .line 592
    .local v0, time:I
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v2

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

    .line 593
    const-string v2, "JieCaoVideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seekTo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 543
    const-string v0, "JieCaoVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->surface:Landroid/view/Surface;

    .line 545
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v0

    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->setDisplay(Landroid/view/Surface;)V

    .line 546
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surface"

    .prologue
    .line 555
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 556
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 551
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 562
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "v"
    .parameter "event"

    .prologue
    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 225
    .local v17, x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 226
    .local v18, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v13

    .line 227
    .local v13, id:I
    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$id;->surface_container:I

    if-ne v13, v2, :cond_0

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 299
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 230
    :pswitch_0
    const-string v2, "JieCaoVideoPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onTouch surfaceContainer actionDown ["

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, "] "

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mTouchingProgressBar:Z

    .line 233
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mDownX:F

    .line 234
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mDownY:F

    .line 235
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mChangeVolume:Z

    .line 236
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mChangePosition:Z

    goto :goto_0

    .line 240
    :pswitch_1
    const-string v2, "JieCaoVideoPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onTouch surfaceContainer actionMove ["

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, "] "

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-object/from16 v0, p0

    iget v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mDownX:F

    sub-float v3, v17, v2

    .line 242
    .local v3, deltaX:F
    move-object/from16 v0, p0

    iget v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mDownY:F

    sub-float v11, v18, v2

    .line 243
    .local v11, deltaY:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 244
    .local v8, absDeltaX:F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 245
    .local v9, absDeltaY:F
    move-object/from16 v0, p0

    iget v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentScreen:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 246
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mChangePosition:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mChangeVolume:Z

    if-nez v2, :cond_2

    .line 247
    const/high16 v2, 0x42a0

    cmpl-float v2, v8, v2

    if-gtz v2, :cond_1

    const/high16 v2, 0x42a0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_2

    .line 248
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->cancelProgressTimer()V

    .line 249
    const/high16 v2, 0x42a0

    cmpl-float v2, v8, v2

    if-ltz v2, :cond_5

    .line 250
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mChangePosition:Z

    .line 251
    invoke-virtual/range {p0 .. p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mDownPosition:I

    .line 259
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mChangePosition:Z

    if-eqz v2, :cond_4

    .line 260
    invoke-virtual/range {p0 .. p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    move-result v7

    .line 261
    .local v7, totalTimeDuration:I
    move-object/from16 v0, p0

    iget v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mDownPosition:I

    int-to-float v2, v2

    int-to-float v5, v7

    mul-float/2addr v5, v3

    move-object/from16 v0, p0

    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mScreenWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v5, v5, v19

    add-float/2addr v2, v5

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mSeekTimePosition:I

    .line 262
    move-object/from16 v0, p0

    iget v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mSeekTimePosition:I

    if-le v2, v7, :cond_3

    .line 263
    move-object/from16 v0, p0

    iput v7, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mSeekTimePosition:I

    .line 264
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mSeekTimePosition:I

    invoke-static {v2}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, seekTime:Ljava/lang/String;
    invoke-static {v7}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    .line 267
    .local v6, totalTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v5, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mSeekTimePosition:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V

    .line 269
    .end local v4           #seekTime:Ljava/lang/String;
    .end local v6           #totalTime:Ljava/lang/String;
    .end local v7           #totalTimeDuration:I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mChangeVolume:Z

    if-eqz v2, :cond_0

    .line 270
    neg-float v11, v11

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v14

    .line 272
    .local v14, max:I
    int-to-float v2, v14

    mul-float/2addr v2, v11

    const/high16 v5, 0x4040

    mul-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mScreenHeight:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-int v10, v2

    .line 273
    .local v10, deltaV:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mGestureDownVolume:I

    move/from16 v19, v0

    add-int v19, v19, v10

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v5, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 274
    move-object/from16 v0, p0

    iget v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mGestureDownVolume:I

    mul-int/lit8 v2, v2, 0x64

    div-int/2addr v2, v14

    int-to-float v2, v2

    const/high16 v5, 0x4040

    mul-float/2addr v5, v11

    const/high16 v19, 0x42c8

    mul-float v5, v5, v19

    move-object/from16 v0, p0

    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mScreenHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v5, v5, v19

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v16, v0

    .line 276
    .local v16, volumePercent:I
    neg-float v2, v11

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->showVolumDialog(FI)V

    goto/16 :goto_0

    .line 253
    .end local v10           #deltaV:I
    .end local v14           #max:I
    .end local v16           #volumePercent:I
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mChangeVolume:Z

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mGestureDownVolume:I

    goto/16 :goto_1

    .line 281
    .end local v3           #deltaX:F
    .end local v8           #absDeltaX:F
    .end local v9           #absDeltaY:F
    .end local v11           #deltaY:F
    :pswitch_2
    const-string v2, "JieCaoVideoPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onTouch surfaceContainer actionUp ["

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v19, "] "

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mTouchingProgressBar:Z

    .line 283
    invoke-virtual/range {p0 .. p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->dismissProgressDialog()V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->dismissVolumDialog()V

    .line 285
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mChangePosition:Z

    if-eqz v2, :cond_7

    .line 286
    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onEvent(I)V

    .line 287
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v2

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->mediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-object/from16 v0, p0

    iget v5, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mSeekTimePosition:I

    int-to-long v0, v5

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    move-result v12

    .line 289
    .local v12, duration:I
    move-object/from16 v0, p0

    iget v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mSeekTimePosition:I

    mul-int/lit8 v2, v2, 0x64

    if-nez v12, :cond_6

    const/4 v12, 0x1

    .end local v12           #duration:I
    :cond_6
    div-int v15, v2, v12

    .line 290
    .local v15, progress:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v15}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 292
    .end local v15           #progress:I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mChangeVolume:Z

    if-eqz v2, :cond_8

    .line 293
    const/16 v2, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onEvent(I)V

    .line 295
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->startProgressTimer()V

    goto/16 :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onVideoSizeChanged()V
    .locals 5

    .prologue
    .line 521
    const-string v2, "JieCaoVideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVideoSizeChanged  ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v2

    iget v1, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->currentVideoWidth:I

    .line 524
    .local v1, mVideoWidth:I
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v2

    iget v0, v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->currentVideoHeight:I

    .line 525
    .local v0, mVideoHeight:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 526
    sget-object v2, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->requestLayout()V

    .line 528
    :cond_0
    return-void
.end method

.method public prepareVideo()V
    .locals 5

    .prologue
    .line 208
    const-string v1, "JieCaoVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareVideo ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v1

    invoke-interface {v1}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->onCompletion()V

    .line 212
    :cond_0
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->setListener(Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;)V

    .line 213
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->addTextureView()V

    .line 214
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 215
    .local v0, mAudioManager:Landroid/media/AudioManager;
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 217
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 218
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v1

    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->url:Ljava/lang/String;

    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mapHeadData:Ljava/util/Map;

    iget-boolean v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->looping:Z

    invoke-virtual {v1, v2, v3, v4}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->prepare(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 219
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    .line 220
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    .line 767
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 769
    const-string v0, "JieCaoVideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->releaseAllVideos()V

    .line 772
    :cond_0
    return-void
.end method

.method public resetProgressAndTime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 738
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 739
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 740
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-static {v2}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    return-void
.end method

.method public setProgressAndTime(IIII)V
    .locals 2
    .parameter "progress"
    .parameter "secProgress"
    .parameter "currentTime"
    .parameter "totalTime"

    .prologue
    .line 728
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mTouchingProgressBar:Z

    if-nez v0, :cond_0

    .line 729
    if-eqz p1, :cond_0

    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 731
    :cond_0
    const/16 v0, 0x5f

    if-le p2, v0, :cond_1

    const/16 p2, 0x64

    .line 732
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 733
    :cond_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    invoke-static {p3}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    :cond_3
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-static {p4}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    return-void
.end method

.method public setTextAndProgress(I)V
    .locals 5
    .parameter "secProgress"

    .prologue
    .line 721
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v1

    .line 722
    .local v1, position:I
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    move-result v0

    .line 723
    .local v0, duration:I
    mul-int/lit8 v4, v1, 0x64

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    div-int v2, v4, v3

    .line 724
    .local v2, progress:I
    invoke-virtual {p0, v2, p1, v1, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setProgressAndTime(IIII)V

    .line 725
    return-void

    .end local v2           #progress:I
    :cond_0
    move v3, v0

    .line 723
    goto :goto_0
.end method

.method public setUiWitStateAndScreen(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 317
    iput p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    .line 318
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 345
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 320
    :pswitch_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->cancelProgressTimer()V

    .line 322
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->releaseMediaPlayer()V

    goto :goto_0

    .line 326
    :pswitch_2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->resetProgressAndTime()V

    goto :goto_0

    .line 329
    :pswitch_3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->startProgressTimer()V

    goto :goto_0

    .line 332
    :pswitch_4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->startProgressTimer()V

    goto :goto_0

    .line 335
    :pswitch_5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->isCurrentMediaListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->instance()Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->releaseMediaPlayer()V

    goto :goto_0

    .line 340
    :pswitch_6
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->cancelProgressTimer()V

    .line 341
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->progressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 342
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public varargs setUp(Ljava/lang/String;ILjava/util/Map;[Ljava/lang/Object;)Z
    .locals 1
    .parameter "url"
    .parameter "screen"
    .parameter
    .parameter "objects"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p3, mapHeadData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p4}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mapHeadData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mapHeadData:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)Z
    .locals 6
    .parameter "url"
    .parameter "screen"
    .parameter "objects"

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 149
    :goto_0
    return v0

    .line 144
    :cond_0
    iput v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    .line 145
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->url:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->objects:[Ljava/lang/Object;

    .line 147
    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentScreen:I

    .line 148
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter "deltaX"
    .parameter "seekTime"
    .parameter "seekTimePosition"
    .parameter "totalTime"
    .parameter "totalTimeDuration"

    .prologue
    .line 894
    return-void
.end method

.method public showVolumDialog(FI)V
    .locals 0
    .parameter "deltaY"
    .parameter "volumePercent"

    .prologue
    .line 902
    return-void
.end method

.method public showWifiDialog()V
    .locals 0

    .prologue
    .line 889
    return-void
.end method

.method public startProgressTimer()V
    .locals 6

    .prologue
    .line 348
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->cancelProgressTimer()V

    .line 349
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    .line 350
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;

    invoke-direct {v0, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mProgressTimerTask:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;

    .line 351
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mProgressTimerTask:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 352
    return-void
.end method

.method public startWindowFullscreen()V
    .locals 14

    .prologue
    const v13, 0x8405

    .line 605
    const-string v10, "JieCaoVideoPlayer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startWindowFullscreen  ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->hideSupportActionBar(Landroid/content/Context;)V

    .line 609
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v10

    const v11, 0x1020002

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 610
    .local v7, vp:Landroid/view/ViewGroup;
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 611
    .local v5, old:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 612
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 614
    :cond_0
    iget-object v10, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-lez v10, :cond_1

    .line 615
    iget-object v10, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 618
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/Context;

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 619
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;>;"
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 620
    .local v3, jcVideoPlayer:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
    const v10, 0x8405

    invoke-virtual {v3, v10}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setId(I)V

    .line 621
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 622
    .local v9, wm:Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 623
    .local v8, w:I
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 624
    .local v2, h:I
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 625
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    sub-int v10, v8, v2

    div-int/lit8 v10, v10, 0x2

    sub-int v11, v8, v2

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 626
    invoke-virtual {v7, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    iget-object v10, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->url:Ljava/lang/String;

    const/4 v11, 0x1

    iget-object v12, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-virtual {v3, v10, v11, v12}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 628
    iget v10, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    invoke-virtual {v3, v10}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    .line 629
    invoke-virtual {v3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->addTextureView()V

    .line 630
    const/high16 v10, 0x42b4

    invoke-virtual {v3, v10}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setRotation(F)V

    .line 632
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lfm/jiecao/jcvideoplayer_lib/R$anim;->start_fullscreen:I

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 633
    .local v6, ra:Landroid/view/animation/Animation;
    invoke-virtual {v3, v6}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setAnimation(Landroid/view/animation/Animation;)V

    .line 635
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->setLastListener(Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;)V

    .line 636
    invoke-static {v3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->setListener(Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 644
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;>;"
    .end local v2           #h:I
    .end local v3           #jcVideoPlayer:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v6           #ra:Landroid/view/animation/Animation;
    .end local v8           #w:I
    .end local v9           #wm:Landroid/view/WindowManager;
    :goto_0
    return-void

    .line 639
    :catch_0
    move-exception v1

    .line 640
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 641
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 642
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startWindowTiny()V
    .locals 10

    .prologue
    const v9, 0x8406

    .line 647
    const-string v6, "JieCaoVideoPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startWindowTiny  ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onEvent(I)V

    .line 650
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1020002

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 651
    .local v5, vp:Landroid/view/ViewGroup;
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 652
    .local v4, old:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 653
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 655
    :cond_0
    iget-object v6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 656
    iget-object v6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 659
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 660
    .local v0, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 661
    .local v3, mJcVideoPlayer:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
    const v6, 0x8406

    invoke-virtual {v3, v6}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setId(I)V

    .line 662
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x190

    const/16 v7, 0x190

    invoke-direct {v2, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 663
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x55

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 664
    invoke-virtual {v5, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    iget-object v6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->url:Ljava/lang/String;

    const/4 v7, 0x2

    iget-object v8, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->objects:[Ljava/lang/Object;

    invoke-virtual {v3, v6, v7, v8}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 666
    iget v6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    invoke-virtual {v3, v6}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    .line 667
    invoke-virtual {v3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->addTextureView()V

    .line 668
    invoke-static {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->setLastListener(Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;)V

    .line 669
    invoke-static {v3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->setListener(Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 677
    .end local v0           #constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;>;"
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #mJcVideoPlayer:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v1

    .line 672
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 673
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 674
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
