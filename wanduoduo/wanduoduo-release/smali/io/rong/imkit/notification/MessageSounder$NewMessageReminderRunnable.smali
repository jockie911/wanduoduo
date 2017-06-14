.class Lio/rong/imkit/notification/MessageSounder$NewMessageReminderRunnable;
.super Ljava/lang/Object;
.source "MessageSounder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/notification/MessageSounder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NewMessageReminderRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/notification/MessageSounder;


# direct methods
.method constructor <init>(Lio/rong/imkit/notification/MessageSounder;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lio/rong/imkit/notification/MessageSounder$NewMessageReminderRunnable;->this$0:Lio/rong/imkit/notification/MessageSounder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 53
    invoke-static {}, Lio/rong/imkit/notification/MessageSounder;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 55
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 59
    :pswitch_1
    invoke-static {}, Lio/rong/imkit/notification/MessageSounder;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 60
    .local v2, vibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 63
    .end local v2           #vibrator:Landroid/os/Vibrator;
    :pswitch_2
    const/4 v0, 0x0

    .line 68
    .local v0, alert:Landroid/net/Uri;
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v3, p0, Lio/rong/imkit/notification/MessageSounder$NewMessageReminderRunnable;->this$0:Lio/rong/imkit/notification/MessageSounder;

    #calls: Lio/rong/imkit/notification/MessageSounder;->playSound(Landroid/net/Uri;)V
    invoke-static {v3, v0}, Lio/rong/imkit/notification/MessageSounder;->access$100(Lio/rong/imkit/notification/MessageSounder;Landroid/net/Uri;)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
