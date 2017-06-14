.class Lmabeijianxi/camera/views/SurfaceVideoView$3;
.super Ljava/lang/Object;
.source "SurfaceVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 413
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView$3;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 417
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$3;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #setter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoWidth:I
    invoke-static {v0, p2}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$302(Lmabeijianxi/camera/views/SurfaceVideoView;I)I

    .line 418
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$3;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #setter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mVideoHeight:I
    invoke-static {v0, p3}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$402(Lmabeijianxi/camera/views/SurfaceVideoView;I)I

    .line 419
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$3;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #getter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$800(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$3;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #getter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$800(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 421
    :cond_0
    return-void
.end method
