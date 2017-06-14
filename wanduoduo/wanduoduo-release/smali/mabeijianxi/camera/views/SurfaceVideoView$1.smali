.class Lmabeijianxi/camera/views/SurfaceVideoView$1;
.super Ljava/lang/Object;
.source "SurfaceVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 373
    iput-object p1, p0, Lmabeijianxi/camera/views/SurfaceVideoView$1;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 376
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$1;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    const/4 v1, 0x5

    #setter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mCurrentState:I
    invoke-static {v0, v1}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$002(Lmabeijianxi/camera/views/SurfaceVideoView;I)I

    .line 378
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$1;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #getter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$100(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lmabeijianxi/camera/views/SurfaceVideoView$1;->this$0:Lmabeijianxi/camera/views/SurfaceVideoView;

    #getter for: Lmabeijianxi/camera/views/SurfaceVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lmabeijianxi/camera/views/SurfaceVideoView;->access$100(Lmabeijianxi/camera/views/SurfaceVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 380
    :cond_0
    return-void
.end method
