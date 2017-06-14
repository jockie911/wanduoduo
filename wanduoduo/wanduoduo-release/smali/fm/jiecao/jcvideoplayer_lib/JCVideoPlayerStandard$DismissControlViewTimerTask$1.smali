.class Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask$1;
.super Ljava/lang/Object;
.source "JCVideoPlayerStandard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 625
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask$1;->this$1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 628
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask$1;->this$1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask$1;->this$1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->topContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask$1;->this$1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask$1;->this$1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 632
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask$1;->this$1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 634
    :cond_0
    return-void
.end method
