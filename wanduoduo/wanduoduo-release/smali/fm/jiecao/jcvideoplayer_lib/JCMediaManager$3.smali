.class Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$3;
.super Ljava/lang/Object;
.source "JCMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

.field final synthetic val$percent:I


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$3;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$3;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$3;->val$percent:I

    invoke-interface {v0, v1}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->onBufferingUpdate(I)V

    .line 166
    :cond_0
    return-void
.end method
