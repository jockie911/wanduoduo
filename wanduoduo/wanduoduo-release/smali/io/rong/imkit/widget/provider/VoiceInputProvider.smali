.class public Lio/rong/imkit/widget/provider/VoiceInputProvider;
.super Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;
.source "VoiceInputProvider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field lastTouchY:F

.field mOffsetLimit:F

.field upDirection:Z


# direct methods
.method public constructor <init>(Lio/rong/imkit/RongContext;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;-><init>(Lio/rong/imkit/RongContext;)V

    .line 51
    return-void
.end method


# virtual methods
.method public obtainSwitchDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$drawable;->rc_ic_voice:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onActive(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 101
    return-void
.end method

.method public onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V
    .locals 2
    .parameter "fragment"
    .parameter "inputView"

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onAttached(Lio/rong/imkit/fragment/MessageInputFragment;Lio/rong/imkit/widget/InputView;)V

    .line 31
    const/high16 v0, 0x428c

    invoke-virtual {p1}, Lio/rong/imkit/fragment/MessageInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mOffsetLimit:F

    .line 32
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lio/rong/imkit/widget/InputView;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "parent"
    .parameter "inputView"

    .prologue
    .line 60
    sget v2, Lio/rong/imkit/R$layout;->rc_wi_vo_provider:I

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, view:Landroid/view/View;
    const v2, 0x1020019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, inputBtn:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    return-object v1
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lio/rong/imkit/widget/provider/InputProvider$MainInputProvider;->onDetached()V

    .line 42
    return-void
.end method

.method public onInactive(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 106
    return-void
.end method

.method public onInputResume(Lio/rong/imkit/widget/InputView;Lio/rong/imlib/model/Conversation;)V
    .locals 0
    .parameter "inputView"
    .parameter "conversation"

    .prologue
    .line 46
    invoke-virtual {p0, p2}, Lio/rong/imkit/widget/provider/VoiceInputProvider;->setCurrentConversation(Lio/rong/imlib/model/Conversation;)V

    .line 47
    return-void
.end method

.method public onSwitch(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 69
    if-nez p2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v5

    .line 71
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, checkPermission:I
    if-eqz v0, :cond_2

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getRequestPermissionListener()Lio/rong/imkit/RongIM$RequestPermissionsListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getRequestPermissionListener()Lio/rong/imkit/RongIM$RequestPermissionsListener;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v2, v5

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Lio/rong/imkit/RongIM$RequestPermissionsListener;->onPermissionRequest([Ljava/lang/String;I)V

    goto :goto_0

    .line 80
    .end local v0           #checkPermission:I
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 81
    invoke-static {}, Lio/rong/imkit/manager/AudioPlayManager;->getInstance()Lio/rong/imkit/manager/AudioPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/manager/AudioPlayManager;->stopPlay()V

    .line 82
    invoke-static {}, Lio/rong/imkit/manager/AudioRecordManager;->getInstance()Lio/rong/imkit/manager/AudioRecordManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mCurrentConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lio/rong/imkit/manager/AudioRecordManager;->startRecord(Landroid/view/View;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->lastTouchY:F

    .line 84
    iput-boolean v5, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->upDirection:Z

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 86
    iget v1, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->lastTouchY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mOffsetLimit:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-boolean v1, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->upDirection:Z

    if-nez v1, :cond_4

    .line 87
    invoke-static {}, Lio/rong/imkit/manager/AudioRecordManager;->getInstance()Lio/rong/imkit/manager/AudioRecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/manager/AudioRecordManager;->willCancelRecord()V

    .line 88
    iput-boolean v3, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->upDirection:Z

    goto/16 :goto_0

    .line 89
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->lastTouchY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->mOffsetLimit:F

    neg-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->upDirection:Z

    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Lio/rong/imkit/manager/AudioRecordManager;->getInstance()Lio/rong/imkit/manager/AudioRecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/manager/AudioRecordManager;->continueRecord()V

    .line 91
    iput-boolean v5, p0, Lio/rong/imkit/widget/provider/VoiceInputProvider;->upDirection:Z

    goto/16 :goto_0

    .line 93
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v3, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 94
    :cond_6
    invoke-static {}, Lio/rong/imkit/manager/AudioRecordManager;->getInstance()Lio/rong/imkit/manager/AudioRecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/manager/AudioRecordManager;->stopRecord()V

    goto/16 :goto_0
.end method
