.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;
.super Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.source "JCVideoPlayerSimple.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method private updateStartImage()V
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->startButton:Landroid/widget/ImageView;

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->currentState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->startButton:Landroid/widget/ImageView;

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_error_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->startButton:Landroid/widget/ImageView;

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_layout_base:I

    return v0
.end method

.method public goToOtherListener()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->fullscreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->currentState:I

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Play video first"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 85
    if-eqz p3, :cond_0

    .line 86
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->currentState:I

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Play video first"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0
.end method

.method public setUiWitStateAndScreen(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    .line 46
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->updateStartImage()V

    .line 62
    return-void

    .line 48
    :pswitch_1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 51
    :pswitch_2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->startButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 54
    :pswitch_3
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)Z
    .locals 3
    .parameter "url"
    .parameter "screen"
    .parameter "objects"

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-super {p0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->currentScreen:I

    if-ne v1, v0, :cond_0

    .line 33
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->fullscreenButton:Landroid/widget/ImageView;

    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_shrink:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    :goto_0
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->fullscreenButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :goto_1
    return v0

    .line 35
    :cond_0
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->fullscreenButton:Landroid/widget/ImageView;

    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_enlarge:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
