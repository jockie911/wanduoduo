.class Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$6;
.super Ljava/lang/Object;
.source "JCMediaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;II)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$6;->this$0:Lfm/jiecao/jcvideoplayer_lib/JCMediaManager;

    iput p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$6;->val$what:I

    iput p3, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$6;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 200
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    move-result-object v0

    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$6;->val$what:I

    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCMediaManager$6;->val$extra:I

    invoke-interface {v0, v1, v2}, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;->onInfo(II)V

    .line 203
    :cond_0
    return-void
.end method
