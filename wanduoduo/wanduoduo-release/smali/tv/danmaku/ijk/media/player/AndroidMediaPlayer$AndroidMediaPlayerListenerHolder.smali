.class Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidMediaPlayerListenerHolder"
.end annotation


# instance fields
.field public final mWeakMediaPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)V
    .locals 1
    .parameter
    .parameter "mp"

    .prologue
    .line 355
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    .line 357
    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 393
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 394
    .local v0, self:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1, p2}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnBufferingUpdate(I)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 402
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 403
    .local v0, self:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnCompletion()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 368
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 369
    .local v0, self:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1, p2, p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnError(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 361
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 362
    .local v0, self:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1, p2, p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnInfo(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 411
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 412
    .local v0, self:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnPrepared()V

    goto :goto_0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 384
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 385
    .local v0, self:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnSeekComplete()V

    goto :goto_0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 375
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    .line 376
    .local v0, self:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {v1, p2, p3, v2, v2}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    goto :goto_0
.end method
