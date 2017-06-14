.class public Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;
.super Lcom/wanduoduo/base/BaseActivity;
.source "AuthenticationRecordVideoActivity.java"


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private isRecording:Z

.field ivRecoordDelete:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e7
        }
    .end annotation
.end field

.field ivRecordOk:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e9
        }
    .end annotation
.end field

.field ivRecordPlay:Landroid/widget/ImageView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00ea
        }
    .end annotation
.end field

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field myHandler:Lcom/wanduoduo/widget/MyHandler;

.field private path:Ljava/lang/String;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field surfaceView:Landroid/view/SurfaceView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e3
        }
    .end annotation
.end field

.field private totalTime:I

.field tvTime:Landroid/widget/TextView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0e00e5
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wanduoduo/base/BaseActivity;-><init>()V

    .line 45
    const/16 v0, 0x2710

    iput v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->totalTime:I

    .line 343
    new-instance v0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$2;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    return-void
.end method

.method private FindBackCamera()I
    .locals 4

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, cameraCount:I
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 139
    .local v2, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 141
    const/4 v0, 0x0

    .local v0, camIdx:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 142
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 143
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 148
    .end local v0           #camIdx:I
    :goto_1
    return v0

    .line 141
    .restart local v0       #camIdx:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private FindFrontCamera()I
    .locals 5

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, cameraCount:I
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 124
    .local v2, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 126
    const/4 v0, 0x0

    .local v0, camIdx:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 127
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 128
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 133
    .end local v0           #camIdx:I
    :goto_1
    return v0

    .line 126
    .restart local v0       #camIdx:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->FindFrontCamera()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->FindBackCamera()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->doChange(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method private doChange(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 156
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->getDegree()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 157
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/myvideo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->path:Ljava/lang/String;

    .line 187
    return-void
.end method

.method private initSurfaceView()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 70
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 71
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->surfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 72
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    new-instance v1, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;-><init>(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 118
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 338
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 341
    :cond_0
    return-void
.end method

.method private startRecord()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 255
    iget-boolean v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->isRecording:Z

    if-nez v3, :cond_2

    .line 257
    :try_start_0
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 259
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 260
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    .line 262
    :cond_0
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 265
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 267
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->FindFrontCamera()I

    move-result v0

    .line 268
    .local v0, CammeraIndex:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 269
    const-string v3, "\u60a8\u7684\u624b\u673a\u4e0d\u652f\u6301\u524d\u7f6e\u6444\u50cf\u5934"

    invoke-static {v3}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->FindBackCamera()I

    move-result v0

    .line 272
    :cond_1
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    .line 274
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 275
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    .line 276
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 277
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 278
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 279
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v4, 0xa00000

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 280
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 285
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 286
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->isRecording:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 296
    .end local v0           #CammeraIndex:I
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v2

    .line 288
    .local v2, e1:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->releaseMediaRecorder()V

    .line 289
    iput-boolean v6, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->isRecording:Z

    goto :goto_0

    .line 290
    .end local v2           #e1:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 291
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->releaseMediaRecorder()V

    .line 292
    iput-boolean v6, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->isRecording:Z

    goto :goto_0

    .line 295
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_2
    const-string v3, "\u89c6\u9891\u5f55\u5236\u4e2d..."

    invoke-static {v3}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopRecord()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 248
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->isRecording:Z

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public getDegree()I
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 166
    .local v1, rotating:I
    const/4 v0, 0x0

    .line 168
    .local v0, degree:I
    packed-switch v1, :pswitch_data_0

    .line 182
    :goto_0
    return v0

    .line 170
    :pswitch_0
    const/16 v0, 0x5a

    .line 171
    goto :goto_0

    .line 173
    :pswitch_1
    const/4 v0, 0x0

    .line 174
    goto :goto_0

    .line 176
    :pswitch_2
    const/16 v0, 0x10e

    .line 177
    goto :goto_0

    .line 179
    :pswitch_3
    const/16 v0, 0xb4

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->isHaveTitleBar:Z

    .line 51
    const v0, 0x7f040024

    return v0
.end method

.method protected initData()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->init()V

    .line 64
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->initSurfaceView()V

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00e1,
            0x7f0e00e2,
            0x7f0e00e7,
            0x7f0e00ea,
            0x7f0e00e9
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 198
    :pswitch_1
    iget-boolean v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->isRecording:Z

    if-nez v3, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->startRecord()V

    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->stopRecord()V

    goto :goto_0

    .line 205
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "path"

    iget-object v4, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->path:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v2}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->finish()V

    goto :goto_0

    .line 213
    :pswitch_4
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 214
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v4, :cond_2

    .line 215
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 216
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 217
    iput-object v5, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    .line 218
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_1
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 228
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 230
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 231
    iput-object v5, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    .line 232
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    .line 234
    :try_start_1
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    :goto_2
    iget-object v3, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0

    .line 235
    :catch_1
    move-exception v1

    .line 236
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 193
    :pswitch_data_0
    .packed-switch 0x7f0e00e1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected setStatusBar()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 56
    invoke-virtual {p0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 57
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 59
    return-void
.end method
