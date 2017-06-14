.class public Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "VoiceMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/VoiceMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    messageContent = Lio/rong/message/VoiceMessage;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceMessageItemProvider"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;Landroid/content/Context;Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;Lio/rong/imkit/model/UIMessage;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->setLayout(Landroid/content/Context;Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;Lio/rong/imkit/model/UIMessage;Z)V

    return-void
.end method

.method private muteAudioFocus(Landroid/content/Context;Z)Z
    .locals 8
    .parameter "context"
    .parameter "bMute"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 271
    if-nez p1, :cond_0

    .line 272
    const-string v3, "VoiceMessageItemProvider"

    const-string v5, "muteAudioFocus context is null."

    invoke-static {v3, v5}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    return v4

    .line 275
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    .line 277
    const-string v3, "VoiceMessageItemProvider"

    const-string v5, "muteAudioFocus Android 2.1 and below can not stop music"

    invoke-static {v3, v5}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :cond_1
    const/4 v1, 0x0

    .line 281
    .local v1, bool:Z
    const-string v5, "audio"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 282
    .local v0, am:Landroid/media/AudioManager;
    if-eqz p2, :cond_3

    .line 283
    const/4 v5, 0x3

    const/4 v6, 0x2

    invoke-virtual {v0, v7, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 284
    .local v2, result:I
    if-ne v2, v3, :cond_2

    move v1, v3

    .line 289
    :goto_1
    const-string v3, "VoiceMessageItemProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "muteAudioFocus pauseMusic bMute="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    .line 290
    goto :goto_0

    :cond_2
    move v1, v4

    .line 284
    goto :goto_1

    .line 286
    .end local v2           #result:I
    :cond_3
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v2

    .line 287
    .restart local v2       #result:I
    if-ne v2, v3, :cond_4

    move v1, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2
.end method

.method private setLayout(Landroid/content/Context;Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;Lio/rong/imkit/model/UIMessage;Z)V
    .locals 10
    .parameter "context"
    .parameter "holder"
    .parameter "message"
    .parameter "playing"

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 219
    invoke-virtual {p3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v1

    check-cast v1, Lio/rong/message/VoiceMessage;

    .line 220
    .local v1, content:Lio/rong/message/VoiceMessage;
    const/16 v3, 0x39

    .line 221
    .local v3, minLength:I
    invoke-static {}, Lio/rong/imkit/manager/AudioRecordManager;->getInstance()Lio/rong/imkit/manager/AudioRecordManager;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/manager/AudioRecordManager;->getMaxVoiceDuration()I

    move-result v2

    .line 222
    .local v2, duration:I
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v1}, Lio/rong/message/VoiceMessage;->getDuration()I

    move-result v5

    const/16 v6, 0xb4

    div-int/2addr v6, v2

    mul-int/2addr v5, v6

    add-int/2addr v5, v3

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 224
    invoke-virtual {p3}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v4, v5, :cond_2

    .line 225
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->left:Landroid/widget/TextView;

    const-string v5, "%s\""

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lio/rong/message/VoiceMessage;->getDuration()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->left:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->right:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->unread:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 230
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_bubble_right:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lio/rong/imkit/R$drawable;->rc_an_voice_sent:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 232
    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p4, :cond_1

    .line 233
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v5, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_ic_voice_sent:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 242
    .end local v0           #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->right:Landroid/widget/TextView;

    const-string v5, "%s\""

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lio/rong/message/VoiceMessage;->getDuration()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->right:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->left:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    invoke-virtual {p3}, Lio/rong/imkit/model/UIMessage;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    if-nez v4, :cond_4

    .line 246
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->unread:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    :goto_1
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    sget v5, Lio/rong/imkit/R$drawable;->rc_ic_bubble_left:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lio/rong/imkit/R$drawable;->rc_an_voice_receive:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 251
    .restart local v0       #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p4, :cond_5

    .line 252
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    if-eqz v0, :cond_3

    .line 254
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 260
    :cond_3
    :goto_2
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 248
    .end local v0           #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :cond_4
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->unread:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 256
    .restart local v0       #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :cond_5
    iget-object v4, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v5, p2, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$drawable;->rc_ic_voice_receive:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    if-eqz v0, :cond_3

    .line 258
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    check-cast p3, Lio/rong/message/VoiceMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/VoiceMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/VoiceMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 11
    .parameter "v"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;

    .line 69
    .local v4, holder:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;
    iget-boolean v0, p4, Lio/rong/imkit/model/UIMessage;->continuePalyAudio:Z

    if-eqz v0, :cond_2

    .line 70
    invoke-static {}, Lio/rong/imkit/manager/AudioPlayManager;->getInstance()Lio/rong/imkit/manager/AudioPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/manager/AudioPlayManager;->getPlayingUri()Landroid/net/Uri;

    move-result-object v7

    .line 71
    .local v7, playingUri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    invoke-virtual {p3}, Lio/rong/message/VoiceMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v6

    .line 73
    .local v6, listened:Z
    invoke-static {}, Lio/rong/imkit/manager/AudioPlayManager;->getInstance()Lio/rong/imkit/manager/AudioPlayManager;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p3}, Lio/rong/message/VoiceMessage;->getUri()Landroid/net/Uri;

    move-result-object v10

    new-instance v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$1;-><init>(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;Lio/rong/imkit/model/UIMessage;Landroid/view/View;Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;Lio/rong/message/VoiceMessage;Z)V

    invoke-virtual {v8, v9, v10, v0}, Lio/rong/imkit/manager/AudioPlayManager;->startPlay(Landroid/content/Context;Landroid/net/Uri;Lio/rong/imkit/manager/IAudioPlayListener;)V

    .line 113
    .end local v6           #listened:Z
    .end local v7           #playingUri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v4, p4, v1}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->setLayout(Landroid/content/Context;Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;Lio/rong/imkit/model/UIMessage;Z)V

    goto :goto_0
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, Lio/rong/message/VoiceMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->getContentSummary(Lio/rong/message/VoiceMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/VoiceMessage;)Landroid/text/Spannable;
    .locals 3
    .parameter "data"

    .prologue
    .line 266
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_message_content_voice:I

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "group"

    .prologue
    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_voice_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, view:Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;)V

    .line 58
    .local v0, holder:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->left:Landroid/widget/TextView;

    .line 59
    sget v2, Lio/rong/imkit/R$id;->rc_right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->right:Landroid/widget/TextView;

    .line 60
    sget v2, Lio/rong/imkit/R$id;->rc_img:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->img:Landroid/widget/ImageView;

    .line 61
    sget v2, Lio/rong/imkit/R$id;->rc_voice_unread:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->unread:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    return-object v1
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    check-cast p3, Lio/rong/message/VoiceMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/VoiceMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/VoiceMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 11
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 117
    const-string v0, "VoiceMessageItemProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;

    .line 119
    .local v4, holder:Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;
    iget-object v0, v4, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;->unread:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-static {}, Lio/rong/imkit/manager/AudioPlayManager;->getInstance()Lio/rong/imkit/manager/AudioPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/manager/AudioPlayManager;->getPlayingUri()Landroid/net/Uri;

    move-result-object v7

    .line 121
    .local v7, playingUri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    invoke-virtual {p3}, Lio/rong/message/VoiceMessage;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lio/rong/imkit/manager/AudioPlayManager;->getInstance()Lio/rong/imkit/manager/AudioPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/manager/AudioPlayManager;->stopPlay()V

    .line 159
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v6

    .line 125
    .local v6, listened:Z
    invoke-static {}, Lio/rong/imkit/manager/AudioPlayManager;->getInstance()Lio/rong/imkit/manager/AudioPlayManager;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p3}, Lio/rong/message/VoiceMessage;->getUri()Landroid/net/Uri;

    move-result-object v10

    new-instance v0, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$2;-><init>(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;Lio/rong/imkit/model/UIMessage;Landroid/view/View;Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$ViewHolder;Lio/rong/message/VoiceMessage;Z)V

    invoke-virtual {v8, v9, v10, v0}, Lio/rong/imkit/manager/AudioPlayManager;->startPlay(Landroid/content/Context;Landroid/net/Uri;Lio/rong/imkit/manager/IAudioPlayListener;)V

    goto :goto_0
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    check-cast p3, Lio/rong/message/VoiceMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/VoiceMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/VoiceMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 22
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 163
    const/4 v12, 0x0

    .line 164
    .local v12, name:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 166
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 167
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 183
    :cond_1
    :goto_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/RongIM;->getDeltaTime()J

    move-result-wide v4

    .line 184
    .local v4, deltaTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v14, v18, v4

    .line 185
    .local v14, normalTime:J
    const/4 v7, 0x0

    .line 186
    .local v7, enableMessageRecall:Z
    const/4 v11, -0x1

    .line 187
    .local v11, messageRecallInterval:I
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v17

    sget-object v18, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual/range {v17 .. v18}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v17

    sget-object v18, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual/range {v17 .. v18}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const/4 v8, 0x1

    .line 190
    .local v8, hasSent:Z
    :goto_1
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lio/rong/imkit/R$bool;->rc_enable_message_recall:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 191
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lio/rong/imkit/R$integer;->rc_message_recall_interval:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 196
    :goto_2
    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v18

    sub-long v18, v14, v18

    mul-int/lit16 v0, v11, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-gtz v17, :cond_6

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 197
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_dialog_item_message_recall:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v10, v17

    .line 202
    .local v10, items:[Ljava/lang/String;
    :goto_3
    invoke-static {v12, v10}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v17

    new-instance v18, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/provider/VoiceMessageItemProvider$3;-><init>(Lio/rong/imkit/widget/provider/VoiceMessageItemProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v17 .. v18}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 216
    return-void

    .line 169
    .end local v4           #deltaTime:J
    .end local v7           #enableMessageRecall:Z
    .end local v8           #hasSent:Z
    .end local v10           #items:[Ljava/lang/String;
    .end local v11           #messageRecallInterval:I
    .end local v14           #normalTime:J
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lio/rong/imlib/model/Conversation$PublicServiceType;->setValue(I)Lio/rong/imlib/model/Conversation$PublicServiceType;

    move-result-object v13

    .line 170
    .local v13, publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v17

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v9

    .line 171
    .local v9, info:Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v9, :cond_1

    .line 172
    invoke-virtual {v9}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 175
    .end local v9           #info:Lio/rong/imlib/model/PublicServiceProfile;
    .end local v13           #publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 176
    .local v16, userInfo:Lio/rong/imlib/model/UserInfo;
    if-nez v16, :cond_4

    .line 177
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v17

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 178
    :cond_4
    if-eqz v16, :cond_1

    .line 179
    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 187
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    .restart local v4       #deltaTime:J
    .restart local v7       #enableMessageRecall:Z
    .restart local v11       #messageRecallInterval:I
    .restart local v14       #normalTime:J
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 192
    .restart local v8       #hasSent:Z
    :catch_0
    move-exception v6

    .line 193
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    const-string v17, "VoiceMessageItemProvider"

    const-string v18, "rc_message_recall_interval not configure in rc_config.xml"

    invoke-static/range {v17 .. v18}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v6}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 199
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v10, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v10, v17

    .restart local v10       #items:[Ljava/lang/String;
    goto/16 :goto_3
.end method
