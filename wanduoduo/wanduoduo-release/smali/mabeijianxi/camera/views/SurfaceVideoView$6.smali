.class Lmabeijianxi/camera/views/SurfaceVideoView$6;
.super Ljava/lang/Object;
.source "SurfaceVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 444
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView$6;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "framework_err"
    .parameter "impl_err"

    .prologue
    .line 447
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$6;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    const/4 v1, -0x1

    #setter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I
    invoke-static {v0, v1}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$002(Lmabeijianxi/camera/views/SurfaceVideoView;I)I

    .line 450
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$6;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #getter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$1100(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$6;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #getter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$1100(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 453
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
