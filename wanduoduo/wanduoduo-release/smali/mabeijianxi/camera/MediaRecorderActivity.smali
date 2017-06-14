.class public Lmabeijianxi/camera/MediaRecorderActivity;
.super Landroid/app/Activity;
.source "MediaRecorderActivity.java"

# interfaces
.implements Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;
.implements Landroid/view/View$OnClickListener;
.implements Lmabeijianxi/camera/MediaRecorderBase$OnPreparedListener;
.implements Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;


# static fields
.field private static final HANDLE_INVALIDATE_PROGRESS:I = 0x0

.field private static final HANDLE_STOP_RECORD:I = 0x1

.field public static final MEDIA_RECORDER_CONFIG_KEY:Ljava/lang/String; = "media_recorder_config_key"

.field public static final MEDIA_RECORDER_MAX_TIME_KEY:Ljava/lang/String; = "media_recorder_max_time_key"

.field public static final MEDIA_RECORDER_MIN_TIME_KEY:Ljava/lang/String; = "media_recorder_min_time_key"

.field public static final OUTPUT_DIRECTORY:Ljava/lang/String; = "output_directory"

.field public static final OVER_ACTIVITY_NAME:Ljava/lang/String; = "over_activity_name"

.field private static RECORD_TIME_MAX:I = 0x0

.field private static RECORD_TIME_MIN:I = 0x0

.field public static final VIDEO_SCREENSHOT:Ljava/lang/String; = "video_screenshot"

.field public static final VIDEO_URI:Ljava/lang/String; = "video_uri"


# instance fields
.field private mBottomLayout:Landroid/widget/RelativeLayout;

.field private mCameraSwitch:Landroid/widget/CheckBox;

.field private mHandler:Landroid/os/Handler;

.field private mMediaObject:Lmabeijianxi/camera/model/MediaObject;

.field private mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

.field private mOnVideoControllerTouchListener:Landroid/view/View$OnTouchListener;

.field private volatile mPressedStatus:Z

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressView:Lmabeijianxi/camera/views/ProgressView;

.field private mRecordController:Landroid/widget/TextView;

.field private mRecordDelete:Landroid/widget/CheckedTextView;

.field private mRecordLed:Landroid/widget/CheckBox;

.field private volatile mReleased:Z

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTitleNext:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x1770

    sput v0, Lmabeijianxi/camera/MediaRecorderActivity;->RECORD_TIME_MAX:I

    .line 49
    const/16 v0, 0x5dc

    sput v0, Lmabeijianxi/camera/MediaRecorderActivity;->RECORD_TIME_MIN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 257
    new-instance v0, Lmabeijianxi/camera/MediaRecorderActivity$1;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/MediaRecorderActivity$1;-><init>(Lmabeijianxi/camera/MediaRecorderActivity;)V

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mOnVideoControllerTouchListener:Landroid/view/View$OnTouchListener;

    .line 540
    new-instance v0, Lmabeijianxi/camera/MediaRecorderActivity$3;

    invoke-direct {v0, p0}, Lmabeijianxi/camera/MediaRecorderActivity$3;-><init>(Lmabeijianxi/camera/MediaRecorderActivity;)V

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/MediaRecorderBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    return-object v0
.end method

.method static synthetic access$100(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/model/MediaObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lmabeijianxi/camera/MediaRecorderActivity;->RECORD_TIME_MAX:I

    return v0
.end method

.method static synthetic access$300(Lmabeijianxi/camera/MediaRecorderActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->cancelDelete()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lmabeijianxi/camera/MediaRecorderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->startRecord()V

    return-void
.end method

.method static synthetic access$500(Lmabeijianxi/camera/MediaRecorderActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mPressedStatus:Z

    return v0
.end method

.method static synthetic access$600(Lmabeijianxi/camera/MediaRecorderActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->stopRecord()V

    return-void
.end method

.method static synthetic access$700(Lmabeijianxi/camera/MediaRecorderActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mTitleNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/views/ProgressView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;

    return-object v0
.end method

.method private cancelDelete()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 500
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v2, :cond_1

    .line 501
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v2}, Lmabeijianxi/camera/model/MediaObject;->getCurrentPart()Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v0

    .line 502
    .local v0, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->remove:Z

    if-eqz v2, :cond_1

    .line 503
    iput-boolean v1, v0, Lmabeijianxi/camera/model/MediaObject$MediaPart;->remove:Z

    .line 504
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordDelete:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 506
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;

    invoke-virtual {v1}, Lmabeijianxi/camera/views/ProgressView;->invalidate()V

    .line 509
    :cond_0
    const/4 v1, 0x1

    .line 512
    .end local v0           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_1
    return v1
.end method

.method private checkStatus()I
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, duration:I
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaObject;->getDuration()I

    move-result v0

    .line 522
    sget v1, Lmabeijianxi/camera/MediaRecorderActivity;->RECORD_TIME_MIN:I

    if-ge v0, v1, :cond_2

    .line 523
    if-nez v0, :cond_0

    .line 524
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mCameraSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordDelete:Landroid/widget/CheckedTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 528
    :cond_0
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mTitleNext:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 529
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mTitleNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    :cond_1
    :goto_0
    return v0

    .line 532
    :cond_2
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mTitleNext:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mTitleNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static goSmallVideoRecorder(Landroid/app/Activity;Ljava/lang/String;Lmabeijianxi/camera/model/MediaRecorderConfig;)V
    .locals 2
    .parameter "context"
    .parameter "overGOActivityName"
    .parameter "mediaRecorderConfig"

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmabeijianxi/camera/MediaRecorderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "over_activity_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "media_recorder_config_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 157
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "media_recorder_config_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lmabeijianxi/camera/model/MediaRecorderConfig;

    .line 158
    .local v1, mediaRecorderConfig:Lmabeijianxi/camera/model/MediaRecorderConfig;
    if-nez v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig;->getRecordTimeMax()I

    move-result v2

    sput v2, Lmabeijianxi/camera/MediaRecorderActivity;->RECORD_TIME_MAX:I

    .line 162
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig;->getRecordTimeMin()I

    move-result v2

    sput v2, Lmabeijianxi/camera/MediaRecorderActivity;->RECORD_TIME_MIN:I

    .line 163
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig;->getMaxFrameRate()I

    move-result v2

    sput v2, Lmabeijianxi/camera/MediaRecorderBase;->MAX_FRAME_RATE:I

    .line 164
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig;->getMinFrameRate()I

    move-result v2

    sput v2, Lmabeijianxi/camera/MediaRecorderBase;->MIN_FRAME_RATE:I

    .line 165
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig;->getSmallVideoHeight()I

    move-result v2

    sput v2, Lmabeijianxi/camera/MediaRecorderBase;->SMALL_VIDEO_HEIGHT:I

    .line 166
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig;->getSmallVideoWidth()I

    move-result v2

    sput v2, Lmabeijianxi/camera/MediaRecorderBase;->SMALL_VIDEO_WIDTH:I

    .line 167
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig;->getVideoBitrate()I

    move-result v2

    sput v2, Lmabeijianxi/camera/MediaRecorderBase;->mVideoBitrate:I

    .line 168
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig;->getCaptureThumbnailsTime()I

    move-result v2

    sput v2, Lmabeijianxi/camera/MediaRecorderBase;->CAPTURE_THUMBNAILS_TIME:I

    .line 169
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig;->isDoH264Compress()Z

    move-result v2

    sput-boolean v2, Lmabeijianxi/camera/MediaRecorderBase;->doH264Compress:Z

    goto :goto_0
.end method

.method private initMediaRecorder()V
    .locals 5

    .prologue
    .line 238
    new-instance v2, Lmabeijianxi/camera/MediaRecorderNative;

    invoke-direct {v2}, Lmabeijianxi/camera/MediaRecorderNative;-><init>()V

    iput-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    .line 240
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v2, p0}, Lmabeijianxi/camera/MediaRecorderBase;->setOnErrorListener(Lmabeijianxi/camera/MediaRecorderBase$OnErrorListener;)V

    .line 241
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v2, p0}, Lmabeijianxi/camera/MediaRecorderBase;->setOnEncodeListener(Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;)V

    .line 242
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmabeijianxi/camera/VCamera;->getVideoCachePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, f:Ljava/io/File;
    invoke-static {v0}, Lmabeijianxi/camera/util/FileUtils;->checkFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 244
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 246
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-static {}, Lmabeijianxi/camera/VCamera;->getVideoCachePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 247
    invoke-virtual {v2, v1, v3}, Lmabeijianxi/camera/MediaRecorderBase;->setOutputDirectory(Ljava/lang/String;Ljava/lang/String;)Lmabeijianxi/camera/model/MediaObject;

    move-result-object v2

    iput-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    .line 249
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmabeijianxi/camera/MediaRecorderBase;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 250
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v2}, Lmabeijianxi/camera/MediaRecorderBase;->prepare()V

    .line 251
    return-void
.end method

.method private initSurfaceView()V
    .locals 9

    .prologue
    .line 222
    invoke-static {p0}, Lmabeijianxi/camera/util/DeviceUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    .line 223
    .local v2, w:I
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v5, v2

    sget v6, Lmabeijianxi/camera/MediaRecorderBase;->SMALL_VIDEO_WIDTH:I

    int-to-float v6, v6

    sget v7, Lmabeijianxi/camera/MediaRecorderBase;->SMALL_VIDEO_HEIGHT:I

    int-to-float v7, v7

    const/high16 v8, 0x3f80

    mul-float/2addr v7, v8

    div-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 224
    move v3, v2

    .line 225
    .local v3, width:I
    mul-int/lit8 v4, v2, 0x4

    div-int/lit8 v0, v4, 0x3

    .line 227
    .local v0, height:I
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 228
    invoke-virtual {v4}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 229
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 230
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 231
    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    return-void
.end method

.method private loadViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 177
    sget v0, Lmabeijianxi/camera/R$layout;->activity_media_recorder:I

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->setContentView(I)V

    .line 179
    sget v0, Lmabeijianxi/camera/R$id;->record_preview:I

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 180
    sget v0, Lmabeijianxi/camera/R$id;->record_camera_switcher:I

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mCameraSwitch:Landroid/widget/CheckBox;

    .line 181
    sget v0, Lmabeijianxi/camera/R$id;->title_next:I

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mTitleNext:Landroid/widget/ImageView;

    .line 182
    sget v0, Lmabeijianxi/camera/R$id;->record_progress:I

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmabeijianxi/camera/views/ProgressView;

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;

    .line 183
    sget v0, Lmabeijianxi/camera/R$id;->record_delete:I

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordDelete:Landroid/widget/CheckedTextView;

    .line 184
    sget v0, Lmabeijianxi/camera/R$id;->record_controller:I

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordController:Landroid/widget/TextView;

    .line 185
    sget v0, Lmabeijianxi/camera/R$id;->bottom_layout:I

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    .line 186
    sget v0, Lmabeijianxi/camera/R$id;->record_camera_led:I

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordLed:Landroid/widget/CheckBox;

    .line 192
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mTitleNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    sget v0, Lmabeijianxi/camera/R$id;->title_back:I

    invoke-virtual {p0, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordDelete:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordController:Landroid/widget/TextView;

    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mOnVideoControllerTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    invoke-static {}, Lmabeijianxi/camera/MediaRecorderBase;->isSupportFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mCameraSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    :goto_0
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lmabeijianxi/camera/util/DeviceUtils;->isSupportCameraLedFlash(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordLed:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :goto_1
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;

    sget v1, Lmabeijianxi/camera/MediaRecorderActivity;->RECORD_TIME_MAX:I

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/views/ProgressView;->setMaxDuration(I)V

    .line 214
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;

    sget v1, Lmabeijianxi/camera/MediaRecorderActivity;->RECORD_TIME_MIN:I

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/views/ProgressView;->setMinTime(I)V

    .line 215
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->initSurfaceView()V

    .line 216
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mCameraSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordLed:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method private startRecord()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const v3, 0x3f4ccccd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 330
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    if-eqz v1, :cond_2

    .line 332
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v1}, Lmabeijianxi/camera/MediaRecorderBase;->startRecord()Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v0

    .line 333
    .local v0, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    if-nez v0, :cond_0

    .line 360
    .end local v0           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :goto_0
    return-void

    .line 338
    .restart local v0       #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_0
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    instance-of v1, v1, Lmabeijianxi/camera/MediaRecorderSystem;

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mCameraSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 341
    :cond_1
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;

    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v1, v2}, Lmabeijianxi/camera/views/ProgressView;->setData(Lmabeijianxi/camera/model/MediaObject;)V

    .line 344
    .end local v0           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_2
    iput-boolean v5, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mPressedStatus:Z

    .line 346
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordController:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 349
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 350
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 353
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mHandler:Landroid/os/Handler;

    sget v2, Lmabeijianxi/camera/MediaRecorderActivity;->RECORD_TIME_MAX:I

    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    .line 355
    invoke-virtual {v3}, Lmabeijianxi/camera/model/MediaObject;->getDuration()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 354
    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 357
    :cond_3
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordDelete:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v6}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 358
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mCameraSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 359
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordLed:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method private stopRecord()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x1

    .line 400
    iput-boolean v4, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mPressedStatus:Z

    .line 401
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordController:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 403
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v0}, Lmabeijianxi/camera/MediaRecorderBase;->stopRecord()V

    .line 407
    :cond_0
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordDelete:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mCameraSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 409
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordLed:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 411
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->checkStatus()I

    .line 413
    return-void
.end method


# virtual methods
.method public hideProgress()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 653
    :cond_0
    return-void
.end method

.method public onAudioError(ILjava/lang/String;)V
    .locals 0
    .parameter "what"
    .parameter "message"

    .prologue
    .line 612
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordDelete:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordDelete:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->cancelDelete()Z

    .line 394
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v0}, Lmabeijianxi/camera/model/MediaObject;->getDuration()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lmabeijianxi/camera/R$string;->hint:I

    .line 372
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lmabeijianxi/camera/R$string;->record_camera_exit_dialog_message:I

    .line 373
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lmabeijianxi/camera/R$string;->record_camera_cancel_dialog_yes:I

    new-instance v2, Lmabeijianxi/camera/MediaRecorderActivity$2;

    invoke-direct {v2, p0}, Lmabeijianxi/camera/MediaRecorderActivity$2;-><init>(Lmabeijianxi/camera/MediaRecorderActivity;)V

    .line 374
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lmabeijianxi/camera/R$string;->record_camera_cancel_dialog_no:I

    const/4 v2, 0x0

    .line 386
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 387
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 391
    :cond_1
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v0}, Lmabeijianxi/camera/model/MediaObject;->delete()V

    .line 393
    :cond_2
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 418
    .local v0, id:I
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    :cond_0
    sget v2, Lmabeijianxi/camera/R$id;->record_delete:I

    if-eq v0, v2, :cond_1

    .line 424
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v2, :cond_1

    .line 425
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v2}, Lmabeijianxi/camera/model/MediaObject;->getCurrentPart()Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v1

    .line 426
    .local v1, part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    if-eqz v1, :cond_1

    .line 427
    iget-boolean v2, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->remove:Z

    if-eqz v2, :cond_1

    .line 428
    iput-boolean v3, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->remove:Z

    .line 429
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordDelete:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 430
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;

    if-eqz v2, :cond_1

    .line 431
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;

    invoke-virtual {v2}, Lmabeijianxi/camera/views/ProgressView;->invalidate()V

    .line 437
    .end local v1           #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    :cond_1
    sget v2, Lmabeijianxi/camera/R$id;->title_back:I

    if-ne v0, v2, :cond_3

    .line 438
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->onBackPressed()V

    .line 493
    :cond_2
    :goto_0
    return-void

    .line 439
    :cond_3
    sget v2, Lmabeijianxi/camera/R$id;->record_camera_switcher:I

    if-ne v0, v2, :cond_8

    .line 440
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordLed:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 441
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    if-eqz v2, :cond_4

    .line 442
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v2}, Lmabeijianxi/camera/MediaRecorderBase;->toggleFlashMode()Z

    .line 444
    :cond_4
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordLed:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 447
    :cond_5
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    if-eqz v2, :cond_6

    .line 448
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v2}, Lmabeijianxi/camera/MediaRecorderBase;->switchCamera()V

    .line 451
    :cond_6
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v2}, Lmabeijianxi/camera/MediaRecorderBase;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 452
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordLed:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 454
    :cond_7
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordLed:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 456
    :cond_8
    sget v2, Lmabeijianxi/camera/R$id;->record_camera_led:I

    if-ne v0, v2, :cond_a

    .line 458
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    if-eqz v2, :cond_9

    .line 459
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v2}, Lmabeijianxi/camera/MediaRecorderBase;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_2

    .line 464
    :cond_9
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    if-eqz v2, :cond_2

    .line 465
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v2}, Lmabeijianxi/camera/MediaRecorderBase;->toggleFlashMode()Z

    goto :goto_0

    .line 467
    :cond_a
    sget v2, Lmabeijianxi/camera/R$id;->title_next:I

    if-ne v0, v2, :cond_b

    .line 468
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v2}, Lmabeijianxi/camera/MediaRecorderBase;->startEncoding()V

    goto :goto_0

    .line 472
    :cond_b
    sget v2, Lmabeijianxi/camera/R$id;->record_delete:I

    if-ne v0, v2, :cond_2

    .line 474
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    if-eqz v2, :cond_2

    .line 475
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v2}, Lmabeijianxi/camera/model/MediaObject;->getCurrentPart()Lmabeijianxi/camera/model/MediaObject$MediaPart;

    move-result-object v1

    .line 476
    .restart local v1       #part:Lmabeijianxi/camera/model/MediaObject$MediaPart;
    if-eqz v1, :cond_c

    .line 477
    iget-boolean v2, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->remove:Z

    if-eqz v2, :cond_e

    .line 478
    iput-boolean v3, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->remove:Z

    .line 479
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v2, v1, v4}, Lmabeijianxi/camera/model/MediaObject;->removePart(Lmabeijianxi/camera/model/MediaObject$MediaPart;Z)V

    .line 480
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordDelete:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 486
    :cond_c
    :goto_1
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;

    if-eqz v2, :cond_d

    .line 487
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;

    invoke-virtual {v2}, Lmabeijianxi/camera/views/ProgressView;->invalidate()V

    .line 490
    :cond_d
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->checkStatus()I

    goto/16 :goto_0

    .line 482
    :cond_e
    iput-boolean v4, v1, Lmabeijianxi/camera/model/MediaObject$MediaPart;->remove:Z

    .line 483
    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordDelete:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 151
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->initData()V

    .line 152
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->loadViews()V

    .line 153
    return-void
.end method

.method public onEncodeComplete()V
    .locals 5

    .prologue
    .line 578
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->hideProgress()V

    .line 579
    const/4 v1, 0x0

    .line 581
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "over_activity_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :try_start_1
    const-string v3, "output_directory"

    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v4}, Lmabeijianxi/camera/model/MediaObject;->getOutputDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string v3, "video_uri"

    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v4}, Lmabeijianxi/camera/model/MediaObject;->getOutputTempTranscodingVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v3, "video_screenshot"

    iget-object v4, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v4}, Lmabeijianxi/camera/model/MediaObject;->getOutputVideoThumbPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    invoke-virtual {p0, v2}, Lmabeijianxi/camera/MediaRecorderActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 590
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->finish()V

    .line 591
    return-void

    .line 586
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 587
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\u9700\u8981\u4f20\u5165\u5f55\u5236\u5b8c\u6210\u540e\u8df3\u8f6c\u7684Activity\u7684\u5168\u7c7b\u540d"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 586
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method public onEncodeError()V
    .locals 2

    .prologue
    .line 598
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->hideProgress()V

    .line 599
    sget v0, Lmabeijianxi/camera/R$string;->record_video_transcoding_faild:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 601
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->finish()V

    .line 602
    return-void
.end method

.method public onEncodeProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 571
    return-void
.end method

.method public onEncodeStart()V
    .locals 2

    .prologue
    .line 566
    const-string v0, ""

    sget v1, Lmabeijianxi/camera/R$string;->record_camera_progress_message:I

    invoke-virtual {p0, v1}, Lmabeijianxi/camera/MediaRecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmabeijianxi/camera/MediaRecorderActivity;->showProgress(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    .line 567
    return-void
.end method

.method public onFinished()V
    .locals 0

    .prologue
    .line 620
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->finish()V

    .line 621
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 316
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->stopRecord()V

    .line 317
    invoke-static {}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->freeFilterParser()V

    .line 318
    iget-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mReleased:Z

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v0}, Lmabeijianxi/camera/MediaRecorderBase;->release()V

    .line 322
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mReleased:Z

    .line 323
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 301
    invoke-static {}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->freeFilterParser()V

    .line 302
    invoke-static {}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->initFilterParser()V

    .line 304
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->initMediaRecorder()V

    .line 311
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mRecordLed:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 308
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-virtual {v0}, Lmabeijianxi/camera/MediaRecorderBase;->prepare()V

    .line 309
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;

    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/views/ProgressView;->setData(Lmabeijianxi/camera/model/MediaObject;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 657
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 659
    invoke-virtual {p0}, Lmabeijianxi/camera/MediaRecorderActivity;->hideProgress()V

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 661
    return-void
.end method

.method public onVideoError(II)V
    .locals 0
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 607
    return-void
.end method

.method public showProgress(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "title"
    .parameter "message"

    .prologue
    .line 626
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->showProgress(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public showProgress(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/ProgressDialog;
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "theme"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 630
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 631
    if-lez p3, :cond_2

    .line 632
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0, p3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 635
    :goto_0
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 636
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 637
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 638
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 639
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 642
    :cond_0
    invoke-static {p1}, Lmabeijianxi/camera/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 644
    :cond_1
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 646
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 634
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method
