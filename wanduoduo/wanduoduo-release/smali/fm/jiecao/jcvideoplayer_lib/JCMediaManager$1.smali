.class Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$1;
.super Ljava/lang/Object;
.source "JCMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 136
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$1;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->onPrepared()V

    .line 142
    :cond_0
    return-void
.end method