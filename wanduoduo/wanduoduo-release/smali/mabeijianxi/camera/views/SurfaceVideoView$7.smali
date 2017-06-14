.class Lmabeijianxi/camera/views/SurfaceVideoView$7;
.super Landroid/os/Handler;
.source "SurfaceVideoView.java"


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
    .line 471
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView$7;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 474
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 488
    return-void

    .line 476
    :pswitch_0
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$7;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    invoke-virtual {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->pause()V

    goto :goto_0

    .line 479
    :pswitch_1
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$7;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    invoke-virtual {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$7;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lmabeijianxi/camera/views/SurfaceVideoView;->seekTo(I)V

    .line 481
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$7;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #getter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$1200(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lmabeijianxi/camera/views/SurfaceVideoView$7;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
