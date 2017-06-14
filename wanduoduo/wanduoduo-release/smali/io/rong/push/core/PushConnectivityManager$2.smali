.class Lio/rong/push/core/PushConnectivityManager$2;
.super Ljava/lang/Object;
.source "PushConnectivityManager.java"

# interfaces
.implements Lio/rong/push/core/PushClient$ConnectStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/push/core/PushConnectivityManager;->internalConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/push/core/PushConnectivityManager;


# direct methods
.method constructor <init>(Lio/rong/push/core/PushConnectivityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 254
    const-string v3, "PushConnectivityManager"

    const-string v4, "onConnected."

    invoke-static {v3, v4}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-virtual {v3}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->enabledPushTypes:Ljava/lang/String;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$600(Lio/rong/push/core/PushConnectivityManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, packageName:Ljava/lang/String;
    invoke-static {}, Lio/rong/imlib/common/DeviceUtils;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, manufacturer:Ljava/lang/String;
    const-string v3, "%s-%s-%s-%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->enabledPushTypes:Ljava/lang/String;
    invoke-static {v6}, Lio/rong/push/core/PushConnectivityManager;->access$600(Lio/rong/push/core/PushConnectivityManager;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->appKey:Ljava/lang/String;
    invoke-static {v6}, Lio/rong/push/core/PushConnectivityManager;->access$800(Lio/rong/push/core/PushConnectivityManager;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v2, v4, v7

    const/4 v5, 0x3

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, information:Ljava/lang/String;
    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->pushClient:Lio/rong/push/core/PushClient;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$500(Lio/rong/push/core/PushConnectivityManager;)Lio/rong/push/core/PushClient;

    move-result-object v3

    sget-object v4, Lio/rong/push/core/PushClient$QueryMethod;->GET_PUSH_TYPE:Lio/rong/push/core/PushClient$QueryMethod;

    iget-object v5, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->deviceId:Ljava/lang/String;
    invoke-static {v5}, Lio/rong/push/core/PushConnectivityManager;->access$900(Lio/rong/push/core/PushConnectivityManager;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lio/rong/push/core/PushConnectivityManager$2$1;

    invoke-direct {v6, p0}, Lio/rong/push/core/PushConnectivityManager$2$1;-><init>(Lio/rong/push/core/PushConnectivityManager$2;)V

    invoke-virtual {v3, v4, v0, v5, v6}, Lio/rong/push/core/PushClient;->query(Lio/rong/push/core/PushClient$QueryMethod;Ljava/lang/String;Ljava/lang/String;Lio/rong/push/core/PushClient$QueryCallback;)V

    .line 299
    .end local v0           #information:Ljava/lang/String;
    .end local v1           #manufacturer:Ljava/lang/String;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onError(Ljava/io/IOException;)V
    .locals 6
    .parameter "e"

    .prologue
    .line 303
    const-string v1, "PushConnectivityManager"

    const-string v2, "connect onError"

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-virtual {v1}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 306
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mReconnectTimes:I
    invoke-static {v1}, Lio/rong/push/core/PushConnectivityManager;->access$1000(Lio/rong/push/core/PushConnectivityManager;)I

    move-result v1

    if-lez v1, :cond_0

    .line 307
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-static {v1}, Lio/rong/push/core/PushConnectivityManager;->access$1010(Lio/rong/push/core/PushConnectivityManager;)I

    .line 308
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lio/rong/push/core/PushConnectivityManager;->access$700(Lio/rong/push/core/PushConnectivityManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "RongPush"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 309
    .local v0, sp:Landroid/content/SharedPreferences$Editor;
    const-string v1, "navigation_ip_value"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    const-string v1, "navigation_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$2;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-virtual {v1}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 314
    .end local v0           #sp:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
