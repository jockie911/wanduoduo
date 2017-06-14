.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;
.super Ljava/lang/Object;
.source "JCVideoPlayerManager.java"


# static fields
.field private static LAST_LISTENER:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private static LISTENER:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lastListener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->LAST_LISTENER:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->LAST_LISTENER:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    goto :goto_0
.end method

.method public static listener()Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->LISTENER:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->LISTENER:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;

    goto :goto_0
.end method

.method public static setLastListener(Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;)V
    .locals 1
    .parameter "lastListener"

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->LAST_LISTENER:Ljava/lang/ref/WeakReference;

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->LAST_LISTENER:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static setListener(Lfm/jiecao/jcvideoplayer_lib/JCMediaPlayerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->LISTENER:Ljava/lang/ref/WeakReference;

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerManager;->LISTENER:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
