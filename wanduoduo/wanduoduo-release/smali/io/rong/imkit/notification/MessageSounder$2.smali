.class Lio/rong/imkit/notification/MessageSounder$2;
.super Ljava/lang/Object;
.source "MessageSounder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/notification/MessageSounder;->playSound(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/notification/MessageSounder;


# direct methods
.method constructor <init>(Lio/rong/imkit/notification/MessageSounder;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lio/rong/imkit/notification/MessageSounder$2;->this$0:Lio/rong/imkit/notification/MessageSounder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 103
    const-string v0, "RongIMService"

    const-string v1, "playNewMessageSound---onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 105
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 106
    const/4 p1, 0x0

    .line 107
    return-void
.end method
