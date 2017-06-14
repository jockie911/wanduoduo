.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;
.super Ljava/util/TimerTask;
.source "JCVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;


# direct methods
.method public constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 679
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 682
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    iget v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    iget v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->currentState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 683
    :cond_0
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    invoke-virtual {v2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getCurrentPositionWhenPlaying()I

    move-result v1

    .line 684
    .local v1, position:I
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    invoke-virtual {v2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    move-result v0

    .line 685
    .local v0, duration:I
    const-string v2, "JieCaoVideoPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressUpdate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

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

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    iget-object v2, v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->mHandler:Landroid/os/Handler;

    new-instance v3, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask$1;

    invoke-direct {v3, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask$1;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 693
    .end local v0           #duration:I
    .end local v1           #position:I
    :cond_1
    return-void
.end method
