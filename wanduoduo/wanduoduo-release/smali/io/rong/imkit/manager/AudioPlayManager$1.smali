.class Lio/rong/imkit/manager/AudioPlayManager$1;
.super Ljava/lang/Object;
.source "AudioPlayManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/manager/AudioPlayManager;->startPlay(Landroid/content/Context;Landroid/net/Uri;Lio/rong/imkit/manager/IAudioPlayListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/manager/AudioPlayManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/rong/imkit/manager/AudioPlayManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lio/rong/imkit/manager/AudioPlayManager$1;->this$0:Lio/rong/imkit/manager/AudioPlayManager;

    iput-object p2, p0, Lio/rong/imkit/manager/AudioPlayManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4
    .parameter "focusChange"

    .prologue
    .line 113
    const-string v1, "AudioPlayManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnAudioFocusChangeListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lio/rong/imkit/manager/AudioPlayManager$1;->val$context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 115
    .local v0, am:Landroid/media/AudioManager;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 116
    iget-object v1, p0, Lio/rong/imkit/manager/AudioPlayManager$1;->this$0:Lio/rong/imkit/manager/AudioPlayManager;

    #getter for: Lio/rong/imkit/manager/AudioPlayManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lio/rong/imkit/manager/AudioPlayManager;->access$000(Lio/rong/imkit/manager/AudioPlayManager;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 117
    iget-object v1, p0, Lio/rong/imkit/manager/AudioPlayManager$1;->this$0:Lio/rong/imkit/manager/AudioPlayManager;

    const/4 v2, 0x0

    #setter for: Lio/rong/imkit/manager/AudioPlayManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1, v2}, Lio/rong/imkit/manager/AudioPlayManager;->access$002(Lio/rong/imkit/manager/AudioPlayManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 118
    iget-object v1, p0, Lio/rong/imkit/manager/AudioPlayManager$1;->this$0:Lio/rong/imkit/manager/AudioPlayManager;

    #calls: Lio/rong/imkit/manager/AudioPlayManager;->resetMediaPlayer()V
    invoke-static {v1}, Lio/rong/imkit/manager/AudioPlayManager;->access$100(Lio/rong/imkit/manager/AudioPlayManager;)V

    .line 120
    :cond_0
    return-void
.end method
