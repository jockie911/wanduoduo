.class Lio/rong/imkit/manager/AudioPlayManager$2;
.super Ljava/lang/Object;
.source "AudioPlayManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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


# direct methods
.method constructor <init>(Lio/rong/imkit/manager/AudioPlayManager;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lio/rong/imkit/manager/AudioPlayManager$2;->this$0:Lio/rong/imkit/manager/AudioPlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    const/4 v4, 0x0

    .line 137
    iget-object v1, p0, Lio/rong/imkit/manager/AudioPlayManager$2;->this$0:Lio/rong/imkit/manager/AudioPlayManager;

    iget-object v2, p0, Lio/rong/imkit/manager/AudioPlayManager$2;->this$0:Lio/rong/imkit/manager/AudioPlayManager;

    #getter for: Lio/rong/imkit/manager/AudioPlayManager;->_audioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lio/rong/imkit/manager/AudioPlayManager;->access$200(Lio/rong/imkit/manager/AudioPlayManager;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lio/rong/imkit/manager/AudioPlayManager;->muteAudioFocus(Landroid/media/AudioManager;Z)V
    invoke-static {v1, v2, v3}, Lio/rong/imkit/manager/AudioPlayManager;->access$300(Lio/rong/imkit/manager/AudioPlayManager;Landroid/media/AudioManager;Z)V

    .line 138
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 139
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 140
    iget-object v1, p0, Lio/rong/imkit/manager/AudioPlayManager$2;->this$0:Lio/rong/imkit/manager/AudioPlayManager;

    #setter for: Lio/rong/imkit/manager/AudioPlayManager;->_mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1, v4}, Lio/rong/imkit/manager/AudioPlayManager;->access$402(Lio/rong/imkit/manager/AudioPlayManager;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 141
    iget-object v1, p0, Lio/rong/imkit/manager/AudioPlayManager$2;->this$0:Lio/rong/imkit/manager/AudioPlayManager;

    #getter for: Lio/rong/imkit/manager/AudioPlayManager;->_playingUri:Landroid/net/Uri;
    invoke-static {v1}, Lio/rong/imkit/manager/AudioPlayManager;->access$500(Lio/rong/imkit/manager/AudioPlayManager;)Landroid/net/Uri;

    move-result-object v0

    .line 142
    .local v0, temp:Landroid/net/Uri;
    iget-object v1, p0, Lio/rong/imkit/manager/AudioPlayManager$2;->this$0:Lio/rong/imkit/manager/AudioPlayManager;

    #setter for: Lio/rong/imkit/manager/AudioPlayManager;->_playingUri:Landroid/net/Uri;
    invoke-static {v1, v4}, Lio/rong/imkit/manager/AudioPlayManager;->access$502(Lio/rong/imkit/manager/AudioPlayManager;Landroid/net/Uri;)Landroid/net/Uri;

    .line 143
    iget-object v1, p0, Lio/rong/imkit/manager/AudioPlayManager$2;->this$0:Lio/rong/imkit/manager/AudioPlayManager;

    #getter for: Lio/rong/imkit/manager/AudioPlayManager;->_playListener:Lio/rong/imkit/manager/IAudioPlayListener;
    invoke-static {v1}, Lio/rong/imkit/manager/AudioPlayManager;->access$600(Lio/rong/imkit/manager/AudioPlayManager;)Lio/rong/imkit/manager/IAudioPlayListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lio/rong/imkit/manager/AudioPlayManager$2;->this$0:Lio/rong/imkit/manager/AudioPlayManager;

    #getter for: Lio/rong/imkit/manager/AudioPlayManager;->_playListener:Lio/rong/imkit/manager/IAudioPlayListener;
    invoke-static {v1}, Lio/rong/imkit/manager/AudioPlayManager;->access$600(Lio/rong/imkit/manager/AudioPlayManager;)Lio/rong/imkit/manager/IAudioPlayListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/rong/imkit/manager/IAudioPlayListener;->onComplete(Landroid/net/Uri;)V

    .line 146
    :cond_0
    return-void
.end method
