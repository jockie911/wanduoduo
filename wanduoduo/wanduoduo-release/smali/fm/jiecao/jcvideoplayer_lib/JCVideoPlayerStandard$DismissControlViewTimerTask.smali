.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;
.super Ljava/util/TimerTask;
.source "JCVideoPlayerStandard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DismissControlViewTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;


# direct methods
.method public constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 617
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 624
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask$1;

    invoke-direct {v1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask$1;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 638
    :cond_0
    return-void
.end method
