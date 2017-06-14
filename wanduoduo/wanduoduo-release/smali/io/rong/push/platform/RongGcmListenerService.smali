.class public Lio/rong/push/platform/RongGcmListenerService;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "RongGcmListenerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RongGcmListenerService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "from"
    .parameter "data"

    .prologue
    .line 28
    const-string v4, "RongGcmListenerService"

    const-string v5, "onMessageReceived"

    invoke-static {v4, v5}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    if-nez p2, :cond_0

    .line 44
    :goto_0
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "message"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, message:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "io.rong.push.intent.MESSAGE_ARRIVED"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0}, Lio/rong/push/platform/RongGcmListenerService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    :try_start_0
    invoke-static {v3}, Lio/rong/push/core/PushUtils;->decode(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v2}, Lio/rong/push/platform/RongGcmListenerService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Lorg/json/JSONException;
    goto :goto_0
.end method
