.class Lio/rong/push/core/PushConnectivityManager$1;
.super Ljava/lang/Object;
.source "PushConnectivityManager.java"

# interfaces
.implements Lio/rong/push/core/PushClient$ClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/push/core/PushConnectivityManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/push/core/PushConnectivityManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/rong/push/core/PushConnectivityManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lio/rong/push/core/PushConnectivityManager$1;->this$0:Lio/rong/push/core/PushConnectivityManager;

    iput-object p2, p0, Lio/rong/push/core/PushConnectivityManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisConnected()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "PushConnectivityManager"

    const-string v1, "onDisConnected"

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager$1;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-virtual {v0}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    return-void
.end method

.method public onMessageArrived(Lio/rong/push/core/PushProtocalStack$PublishMessage;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/push/core/PushProtocalStack$PublishMessage;->getDataAsString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 100
    :cond_0
    const-string v4, "PushConnectivityManager"

    const-string v5, "sendNotification, msg = null"

    invoke-static {v4, v5}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v4, "PushConnectivityManager"

    invoke-virtual {p1}, Lio/rong/push/core/PushProtocalStack$PublishMessage;->getDataAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/push/common/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :try_start_0
    invoke-virtual {p1}, Lio/rong/push/core/PushProtocalStack$PublishMessage;->getDataAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/rong/push/core/PushUtils;->decode(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    const-string v4, "packageName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "packageName"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 113
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    const-string v4, "PushConnectivityManager"

    const-string v5, "messageArrived.packageName is null!!!!"

    invoke-static {v4, v5}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v3           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 108
    .local v1, e:Lorg/json/JSONException;
    goto :goto_0

    .line 118
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_2
    const-string v4, "TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new push message. packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "io.rong.push.intent.MESSAGE_ARRIVED"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_3

    .line 124
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    :cond_3
    iget-object v4, p0, Lio/rong/push/core/PushConnectivityManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPingFailure()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "PushConnectivityManager"

    const-string v1, "onPingFailure"

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager$1;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-virtual {v0}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    return-void
.end method

.method public onPingSuccess()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "PushConnectivityManager"

    const-string v1, "onPingSuccess"

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lio/rong/push/core/PushConnectivityManager$1;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-virtual {v0}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    return-void
.end method
