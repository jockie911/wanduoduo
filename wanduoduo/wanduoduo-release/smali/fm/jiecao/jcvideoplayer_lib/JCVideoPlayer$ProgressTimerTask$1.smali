.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask$1;
.super Ljava/lang/Object;
.source "JCVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 686
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask$1;->this$1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask$1;->this$1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$ProgressTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setTextAndProgress(I)V

    .line 690
    return-void
.end method
