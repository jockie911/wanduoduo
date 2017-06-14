.class public Lio/rong/imkit/notification/MessageSounder;
.super Ljava/lang/Object;
.source "MessageSounder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/notification/MessageSounder$NewMessageReminderRunnable;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field static mRoundMgr:Lio/rong/imkit/notification/MessageSounder;


# instance fields
.field mHandler:Landroid/os/Handler;

.field mLastReminderRunnable:Lio/rong/imkit/notification/MessageSounder$NewMessageReminderRunnable;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/notification/MessageSounder;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lio/rong/imkit/notification/MessageSounder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/notification/MessageSounder;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lio/rong/imkit/notification/MessageSounder;->playSound(Landroid/net/Uri;)V

    return-void
.end method

.method public static getInstance()Lio/rong/imkit/notification/MessageSounder;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lio/rong/imkit/notification/MessageSounder;->mRoundMgr:Lio/rong/imkit/notification/MessageSounder;

    return-object v0
.end method

.method private getMobileRingerMode()I
    .locals 3

    .prologue
    .line 81
    sget-object v1, Lio/rong/imkit/notification/MessageSounder;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 82
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    return v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    sput-object p0, Lio/rong/imkit/notification/MessageSounder;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lio/rong/imkit/notification/MessageSounder;

    invoke-direct {v0}, Lio/rong/imkit/notification/MessageSounder;-><init>()V

    sput-object v0, Lio/rong/imkit/notification/MessageSounder;->mRoundMgr:Lio/rong/imkit/notification/MessageSounder;

    .line 28
    return-void
.end method

.method private playSound(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 89
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 91
    .local v1, mMediaPlayer:Landroid/media/MediaPlayer;
    new-instance v2, Lio/rong/imkit/notification/MessageSounder$1;

    invoke-direct {v2, p0}, Lio/rong/imkit/notification/MessageSounder$1;-><init>(Lio/rong/imkit/notification/MessageSounder;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 99
    new-instance v2, Lio/rong/imkit/notification/MessageSounder$2;

    invoke-direct {v2, p0}, Lio/rong/imkit/notification/MessageSounder$2;-><init>(Lio/rong/imkit/notification/MessageSounder;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 110
    sget-object v2, Lio/rong/imkit/notification/MessageSounder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 111
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 121
    .end local v1           #mMediaPlayer:Landroid/media/MediaPlayer;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public messageReminder()V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lio/rong/imkit/notification/MessageSounder;->mLastReminderRunnable:Lio/rong/imkit/notification/MessageSounder$NewMessageReminderRunnable;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lio/rong/imkit/notification/MessageSounder$NewMessageReminderRunnable;

    invoke-direct {v0, p0}, Lio/rong/imkit/notification/MessageSounder$NewMessageReminderRunnable;-><init>(Lio/rong/imkit/notification/MessageSounder;)V

    iput-object v0, p0, Lio/rong/imkit/notification/MessageSounder;->mLastReminderRunnable:Lio/rong/imkit/notification/MessageSounder$NewMessageReminderRunnable;

    .line 41
    iget-object v0, p0, Lio/rong/imkit/notification/MessageSounder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imkit/notification/MessageSounder;->mLastReminderRunnable:Lio/rong/imkit/notification/MessageSounder$NewMessageReminderRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/notification/MessageSounder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imkit/notification/MessageSounder;->mLastReminderRunnable:Lio/rong/imkit/notification/MessageSounder$NewMessageReminderRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    iget-object v0, p0, Lio/rong/imkit/notification/MessageSounder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lio/rong/imkit/notification/MessageSounder;->mLastReminderRunnable:Lio/rong/imkit/notification/MessageSounder$NewMessageReminderRunnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
