.class Lmabeijianxi/camera/views/SurfaceVideoView$2;
.super Ljava/lang/Object;
.source "SurfaceVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmabeijianxi/camera/views/SurfaceVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmabeijianxi/camera/views/SurfaceVideoView;


# direct methods
.method constructor <init>(Lmabeijianxi/camera/views/SurfaceVideoView;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 383
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView$2;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 387
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$2;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #getter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I
    invoke-static {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$000(Lmabeijianxi/camera/views/SurfaceVideoView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$2;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    const/4 v1, 0x2

    #setter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I
    invoke-static {v0, v1}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$002(Lmabeijianxi/camera/views/SurfaceVideoView;I)I

    .line 390
    :try_start_0
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$2;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    #setter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mDuration:I
    invoke-static {v0, v1}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$202(Lmabeijianxi/camera/views/SurfaceVideoView;I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 395
    :goto_0
    :try_start_1
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$2;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    #setter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoWidth:I
    invoke-static {v0, v1}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$302(Lmabeijianxi/camera/views/SurfaceVideoView;I)I

    .line 396
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$2;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    #setter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHeight:I
    invoke-static {v0, v1}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$402(Lmabeijianxi/camera/views/SurfaceVideoView;I)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 400
    :goto_1
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$2;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #getter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mTargetState:I
    invoke-static {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$500(Lmabeijianxi/camera/views/SurfaceVideoView;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 410
    :cond_0
    :goto_2
    return-void

    .line 402
    :pswitch_0
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$2;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #getter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$600(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$2;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #getter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$600(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lmabeijianxi/camera/views/SurfaceVideoView$2;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #getter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$700(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_2

    .line 406
    :pswitch_1
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$2;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    invoke-virtual {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->start()V

    goto :goto_2

    .line 397
    :catch_0
    move-exception v0

    goto :goto_1

    .line 391
    :catch_1
    move-exception v0

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
