.class Lio/rong/push/core/PushConnectivityManager$ConnectedState$1;
.super Ljava/lang/Object;
.source "PushConnectivityManager.java"

# interfaces
.implements Lio/rong/push/core/PushClient$QueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/push/core/PushConnectivityManager$ConnectedState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/push/core/PushConnectivityManager$ConnectedState;


# direct methods
.method constructor <init>(Lio/rong/push/core/PushConnectivityManager$ConnectedState;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState$1;->this$1:Lio/rong/push/core/PushConnectivityManager$ConnectedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .prologue
    .line 456
    const-string v0, "PushConnectivityManager"

    const-string v1, "setToken.onFailure."

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter "pushType"

    .prologue
    .line 444
    const-string v1, "PushConnectivityManager"

    const-string v2, "setToken.onSuccess."

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState$1;->this$1:Lio/rong/push/core/PushConnectivityManager$ConnectedState;

    iget-object v1, v1, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lio/rong/push/core/PushConnectivityManager;->access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "RongPush"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 446
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pushTypeUsing"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 447
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState$1;->this$1:Lio/rong/push/core/PushConnectivityManager$ConnectedState;

    iget-object v1, v1, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-virtual {v1}, Lio/rong/push/core/PushConnectivityManager;->cancelHeartbeat()V

    .line 448
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState$1;->this$1:Lio/rong/push/core/PushConnectivityManager$ConnectedState;

    iget-object v1, v1, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-virtual {v1}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 451
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState$1;->this$1:Lio/rong/push/core/PushConnectivityManager$ConnectedState;

    iget-object v1, v1, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lio/rong/push/core/PushConnectivityManager;->access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState$1;->this$1:Lio/rong/push/core/PushConnectivityManager$ConnectedState;

    iget-object v3, v3, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lio/rong/push/PushService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 452
    return-void
.end method
