.class final Lio/rong/imkit/RongIM$2;
.super Ljava/util/TimerTask;
.source "RongIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIM;->connect(Ljava/lang/String;Lio/rong/imlib/RongIMClient$ConnectCallback;)Lio/rong/imkit/RongIM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lio/rong/imkit/RongIM;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->access$400()Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lio/rong/imkit/RongIM;->access$100()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.rong.intent.action.UI_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lio/rong/imkit/RongIM;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-static {}, Lio/rong/imkit/RongIM;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    invoke-virtual {p0}, Lio/rong/imkit/RongIM$2;->cancel()Z

    .line 296
    invoke-static {}, Lio/rong/imkit/RongIM;->access$400()Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 297
    const/4 v1, 0x0

    invoke-static {v1}, Lio/rong/imkit/RongIM;->access$402(Ljava/util/Timer;)Ljava/util/Timer;

    .line 299
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
