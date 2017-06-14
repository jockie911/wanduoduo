.class Lio/rong/push/core/PushConnectivityManager$2$1;
.super Ljava/lang/Object;
.source "PushConnectivityManager.java"

# interfaces
.implements Lio/rong/push/core/PushClient$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/push/core/PushConnectivityManager$2;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/push/core/PushConnectivityManager$2;


# direct methods
.method constructor <init>(Lio/rong/push/core/PushConnectivityManager$2;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lio/rong/push/core/PushConnectivityManager$2$1;->this$1:Lio/rong/push/core/PushConnectivityManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .prologue
    .line 295
    const-string v0, "PushConnectivityManager"

    const-string v1, "Failure when query!"

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .parameter "pushType"

    .prologue
    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "MI"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "HW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "GCM"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    :cond_0
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$2$1;->this$1:Lio/rong/push/core/PushConnectivityManager$2;

    iget-object v3, v3, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "RongPush"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 267
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pushTypeUsed"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    const-string v3, "PushConnectivityManager"

    const-string v4, "send to registration."

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$2$1;->this$1:Lio/rong/push/core/PushConnectivityManager$2;

    iget-object v3, v3, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lio/rong/push/core/PushRegistrationService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "pushType"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$2$1;->this$1:Lio/rong/push/core/PushConnectivityManager$2;

    iget-object v3, v3, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 275
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_1
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$2$1;->this$1:Lio/rong/push/core/PushConnectivityManager$2;

    iget-object v3, v3, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->enabledPushTypes:Ljava/lang/String;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$600(Lio/rong/push/core/PushConnectivityManager;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    const-string v3, "HW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 276
    :cond_2
    const-string v3, "PushConnectivityManager"

    const-string v4, "setToken. Stop HW."

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$2$1;->this$1:Lio/rong/push/core/PushConnectivityManager$2;

    iget-object v3, v3, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/huawei/android/pushagent/PushBootReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v1, receiver:Landroid/content/ComponentName;
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$2$1;->this$1:Lio/rong/push/core/PushConnectivityManager$2;

    iget-object v3, v3, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    .end local v1           #receiver:Landroid/content/ComponentName;
    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    const-string v3, "RONG"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 286
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$2$1;->this$1:Lio/rong/push/core/PushConnectivityManager$2;

    iget-object v3, v3, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lio/rong/push/PushReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .restart local v1       #receiver:Landroid/content/ComponentName;
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$2$1;->this$1:Lio/rong/push/core/PushConnectivityManager$2;

    iget-object v3, v3, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    .end local v1           #receiver:Landroid/content/ComponentName;
    :cond_4
    :goto_1
    return-void

    .line 288
    :catch_0
    move-exception v3

    goto :goto_1

    .line 280
    :catch_1
    move-exception v3

    goto :goto_0
.end method
