.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;
.super Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.source "JCVideoPlayerStandard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;
    }
.end annotation


# static fields
.field protected static DISSMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;


# instance fields
.field public backButton:Landroid/widget/ImageView;

.field public bottomProgressBar:Landroid/widget/ProgressBar;

.field public coverImageView:Landroid/widget/ImageView;

.field public loadingProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogIcon:Landroid/widget/ImageView;

.field protected mDialogProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogSeekTime:Landroid/widget/TextView;

.field protected mDialogTotalTime:Landroid/widget/TextView;

.field protected mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

.field protected mDismissControlViewTimerTask:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;

.field protected mProgressDialog:Landroid/app/Dialog;

.field protected mVolumeDialog:Landroid/app/Dialog;

.field public thumbImageView:Landroid/widget/ImageView;

.field public tinyBackImageView:Landroid/widget/ImageView;

.field public titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method


# virtual methods
.method public cancelDismissControlViewTimer()V
    .locals 1

    .prologue
    .line 608
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->DISSMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 609
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->DISSMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 611
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDismissControlViewTimerTask:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDismissControlViewTimerTask:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;

    invoke-virtual {v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;->cancel()Z

    .line 615
    :cond_1
    return-void
.end method

.method public changeUiToCompleteClear()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x4

    .line 455
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 470
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move v2, v1

    move v4, v1

    move v5, v3

    move v6, v1

    move v7, v3

    .line 457
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 459
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v2, v1

    move v4, v1

    move v5, v3

    move v6, v1

    move v7, v3

    .line 462
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 464
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeUiToCompleteShow()V
    .locals 8

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    .line 437
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 452
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v4

    .line 439
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 441
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v4

    .line 444
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 446
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeUiToError()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x4

    .line 473
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 488
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v3

    move v7, v1

    .line 475
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 477
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v3

    move v7, v1

    .line 480
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 482
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeUiToNormal()V
    .locals 8

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 286
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 300
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v1

    move v7, v2

    .line 288
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 290
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v1

    move v7, v2

    .line 293
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 295
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeUiToPauseClear()V
    .locals 8

    .prologue
    const/4 v1, 0x4

    .line 387
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 400
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 389
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 393
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeUiToPauseShow()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x4

    .line 369
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 384
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    move v7, v4

    .line 371
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 373
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    move v7, v4

    .line 376
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 378
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeUiToPlayingBufferingClear()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x4

    .line 419
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 434
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, v4

    .line 421
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 423
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, v4

    .line 426
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 428
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeUiToPlayingBufferingShow()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x4

    .line 403
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move v2, v1

    move v4, v1

    move v5, v3

    move v6, v3

    move v7, v3

    .line 405
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v2, v1

    move v4, v1

    move v5, v3

    move v6, v3

    move v7, v3

    .line 409
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeUiToPlayingClear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x4

    .line 353
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 366
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    .line 355
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    .line 359
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeUiToPlayingShow()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x4

    .line 335
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    move v7, v4

    .line 337
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 339
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    move v7, v4

    .line 342
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 344
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->updateStartImage()V

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeUiToPrepareingClear()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x4

    .line 319
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    .line 321
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    .line 325
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeUiToPrepareingShow()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 303
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p0

    move v2, v1

    move v4, v1

    move v5, v3

    move v6, v1

    move v7, v3

    .line 305
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    :pswitch_1
    move-object v0, p0

    move v2, v1

    move v4, v1

    move v5, v3

    move v6, v1

    move v7, v3

    .line 309
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dismissProgressDialog()V
    .locals 1

    .prologue
    .line 556
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->dismissProgressDialog()V

    .line 557
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 560
    :cond_0
    return-void
.end method

.method public dismissVolumDialog()V
    .locals 1

    .prologue
    .line 594
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->dismissVolumDialog()V

    .line 595
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 598
    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_layout_standard:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->init(Landroid/content/Context;)V

    .line 59
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->bottom_progressbar:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    .line 60
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->title:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->titleTextView:Landroid/widget/TextView;

    .line 61
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->back:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    .line 62
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->thumb:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    .line 63
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->cover:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->coverImageView:Landroid/widget/ImageView;

    .line 64
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->loading:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 65
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->back_tiny:I

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 171
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onClick(Landroid/view/View;)V

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 173
    .local v0, i:I
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->thumb:I

    if-ne v0, v1, :cond_4

    .line 174
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$string;->no_url:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    if-nez v1, :cond_3

    .line 179
    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->url:Ljava/lang/String;

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfm/jiecao/jcvideoplayer_lib/JCUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v1, :cond_2

    .line 180
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->showWifiDialog()V

    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startPlayLocic()V

    goto :goto_0

    .line 184
    :cond_3
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 185
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->onClickUiToggle()V

    goto :goto_0

    .line 187
    :cond_4
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->surface_container:I

    if-ne v0, v1, :cond_5

    .line 188
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startDismissControlViewTimer()V

    goto :goto_0

    .line 189
    :cond_5
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->back:I

    if-ne v0, v1, :cond_6

    .line 190
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->backPress()Z

    goto :goto_0

    .line 191
    :cond_6
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->back_tiny:I

    if-ne v0, v1, :cond_0

    .line 192
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->backPress()Z

    goto :goto_0
.end method

.method public onClickUiToggle()V
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 238
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToPrepareingClear()V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToPrepareingShow()V

    goto :goto_0

    .line 243
    :cond_2
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 244
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 245
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToPlayingClear()V

    goto :goto_0

    .line 247
    :cond_3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToPlayingShow()V

    goto :goto_0

    .line 249
    :cond_4
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 250
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 251
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToPauseClear()V

    goto :goto_0

    .line 253
    :cond_5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToPauseShow()V

    goto :goto_0

    .line 255
    :cond_6
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 256
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 257
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToCompleteClear()V

    goto :goto_0

    .line 259
    :cond_7
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToCompleteShow()V

    goto :goto_0

    .line 261
    :cond_8
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 263
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToPlayingBufferingClear()V

    goto :goto_0

    .line 265
    :cond_9
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToPlayingBufferingShow()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 220
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 221
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 222
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 226
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 227
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startDismissControlViewTimer()V

    .line 228
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 137
    .local v1, id:I
    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$id;->surface_container:I

    if-ne v1, v3, :cond_3

    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 166
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 144
    :pswitch_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startDismissControlViewTimer()V

    .line 145
    iget-boolean v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mChangePosition:Z

    if-eqz v3, :cond_2

    .line 146
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getDuration()I

    move-result v0

    .line 147
    .local v0, duration:I
    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mSeekTimePosition:I

    mul-int/lit8 v3, v3, 0x64

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .end local v0           #duration:I
    :cond_1
    div-int v2, v3, v0

    .line 148
    .local v2, progress:I
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 150
    .end local v2           #progress:I
    :cond_2
    iget-boolean v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mChangePosition:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mChangeVolume:Z

    if-nez v3, :cond_0

    .line 151
    const/16 v3, 0x66

    invoke-virtual {p0, v3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->onEvent(I)V

    .line 152
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->onClickUiToggle()V

    goto :goto_0

    .line 156
    :cond_3
    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$id;->progress:I

    if-ne v1, v3, :cond_0

    .line 157
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 159
    :pswitch_2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->cancelDismissControlViewTimer()V

    goto :goto_0

    .line 162
    :pswitch_3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startDismissControlViewTimer()V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 157
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public resetProgressAndTime()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->resetProgressAndTime()V

    .line 280
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 281
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 282
    return-void
.end method

.method public setAllControlsVisible(IIIIIII)V
    .locals 1
    .parameter "topCon"
    .parameter "bottomCon"
    .parameter "startBtn"
    .parameter "loadingPro"
    .parameter "thumbImg"
    .parameter "coverImg"
    .parameter "bottomPro"

    .prologue
    .line 492
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->topContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 499
    return-void
.end method

.method public setProgressAndTime(IIII)V
    .locals 1
    .parameter "progress"
    .parameter "secProgress"
    .parameter "currentTime"
    .parameter "totalTime"

    .prologue
    .line 272
    invoke-super {p0, p1, p2, p3, p4}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setProgressAndTime(IIII)V

    .line 273
    if-eqz p1, :cond_0

    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 274
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 275
    :cond_1
    return-void
.end method

.method public setUiWitStateAndScreen(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUiWitStateAndScreen(I)V

    .line 104
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    :pswitch_0
    return-void

    .line 106
    :pswitch_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToNormal()V

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToPrepareingShow()V

    .line 110
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startDismissControlViewTimer()V

    goto :goto_0

    .line 113
    :pswitch_3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToPlayingShow()V

    .line 114
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startDismissControlViewTimer()V

    goto :goto_0

    .line 117
    :pswitch_4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToPauseShow()V

    .line 118
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->cancelDismissControlViewTimer()V

    goto :goto_0

    .line 121
    :pswitch_5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToError()V

    goto :goto_0

    .line 124
    :pswitch_6
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToCompleteShow()V

    .line 125
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 126
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 129
    :pswitch_7
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->changeUiToPlayingBufferingShow()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)Z
    .locals 9
    .parameter "url"
    .parameter "screen"
    .parameter "objects"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 75
    array-length v2, p3

    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->titleTextView:Landroid/widget/TextView;

    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    if-ne v2, v8, :cond_3

    .line 79
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->fullscreenButton:Landroid/widget/ImageView;

    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_shrink:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    move v0, v8

    .line 91
    goto :goto_0

    .line 82
    :cond_3
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    if-nez v2, :cond_4

    .line 83
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->fullscreenButton:Landroid/widget/ImageView;

    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_enlarge:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 86
    :cond_4
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentScreen:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 87
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 88
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_1
.end method

.method public showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .parameter "deltaX"
    .parameter "seekTime"
    .parameter "seekTimePosition"
    .parameter "totalTime"
    .parameter "totalTimeDuration"

    .prologue
    const/4 v6, -0x2

    .line 519
    invoke-super/range {p0 .. p5}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V

    .line 520
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    if-nez v3, :cond_0

    .line 521
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_progress_dialog:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 522
    .local v2, localView:Landroid/view/View;
    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$id;->content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 523
    .local v0, content:Landroid/view/View;
    const/high16 v3, 0x42b4

    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    .line 524
    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$id;->duration_progressbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDialogProgressBar:Landroid/widget/ProgressBar;

    .line 525
    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$id;->tv_current:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDialogSeekTime:Landroid/widget/TextView;

    .line 526
    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$id;->tv_duration:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDialogTotalTime:Landroid/widget/TextView;

    .line 527
    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$id;->duration_image_tip:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDialogIcon:Landroid/widget/ImageView;

    .line 528
    new-instance v3, Landroid/app/Dialog;

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lfm/jiecao/jcvideoplayer_lib/R$style;->jc_style_dialog_progress:I

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    .line 529
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 530
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 531
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 532
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 533
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setLayout(II)V

    .line 534
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 535
    .local v1, localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x15

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 536
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfm/jiecao/jcvideoplayer_lib/R$dimen;->jc_progress_dialog_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 537
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 539
    .end local v0           #content:Landroid/view/View;
    .end local v1           #localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #localView:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 540
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 543
    :cond_1
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDialogSeekTime:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDialogTotalTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDialogProgressBar:Landroid/widget/ProgressBar;

    if-gtz p5, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 546
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3

    .line 547
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDialogIcon:Landroid/widget/ImageView;

    sget v4, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_forward_icon:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 552
    :goto_1
    return-void

    .line 545
    :cond_2
    mul-int/lit8 v3, p3, 0x64

    div-int/2addr v3, p5

    goto :goto_0

    .line 549
    :cond_3
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDialogIcon:Landroid/widget/ImageView;

    sget v4, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_backward_icon:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public showVolumDialog(FI)V
    .locals 7
    .parameter "deltaY"
    .parameter "volumePercent"

    .prologue
    const/4 v6, -0x2

    .line 568
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->showVolumDialog(FI)V

    .line 569
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    if-nez v3, :cond_0

    .line 570
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_volume_dialog:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 571
    .local v2, localView:Landroid/view/View;
    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$id;->content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 572
    .local v0, content:Landroid/view/View;
    const/high16 v3, 0x42b4

    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    .line 573
    sget v3, Lfm/jiecao/jcvideoplayer_lib/R$id;->volume_progressbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    .line 574
    new-instance v3, Landroid/app/Dialog;

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lfm/jiecao/jcvideoplayer_lib/R$style;->jc_style_dialog_progress:I

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    .line 575
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 576
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 577
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 578
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 579
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setLayout(II)V

    .line 580
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 581
    .local v1, localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x31

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 583
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 585
    .end local v0           #content:Landroid/view/View;
    .end local v1           #localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #localView:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 586
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 589
    :cond_1
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 590
    return-void
.end method

.method public showWifiDialog()V
    .locals 3

    .prologue
    .line 198
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->showWifiDialog()V

    .line 199
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$string;->tips_not_wifi:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$string;->tips_not_wifi_confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$1;

    invoke-direct {v2, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$1;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$string;->tips_not_wifi_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$2;

    invoke-direct {v2, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$2;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 216
    return-void
.end method

.method public startDismissControlViewTimer()V
    .locals 4

    .prologue
    .line 601
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 602
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->DISSMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    .line 603
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;

    invoke-direct {v0, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDismissControlViewTimerTask:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;

    .line 604
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->DISSMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->mDismissControlViewTimerTask:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$DismissControlViewTimerTask;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 605
    return-void
.end method

.method public startPlayLocic()V
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->prepareVideo()V

    .line 232
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startDismissControlViewTimer()V

    .line 233
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->onEvent(I)V

    .line 234
    return-void
.end method

.method public updateStartImage()V
    .locals 2

    .prologue
    .line 502
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 503
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 509
    :goto_0
    return-void

    .line 504
    :cond_0
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->currentState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 505
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_error_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
