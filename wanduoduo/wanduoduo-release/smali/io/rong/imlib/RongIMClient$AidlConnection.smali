.class Lio/rong/imlib/RongIMClient$AidlConnection;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/RongIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AidlConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v7, 0x0

    .line 314
    const-string v4, "RongIMClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServiceConnected mConnectionStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    invoke-static {v6}, Lio/rong/imlib/RongIMClient;->access$800(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #setter for: Lio/rong/imlib/RongIMClient;->mReconnectCount:I
    invoke-static {v4, v7}, Lio/rong/imlib/RongIMClient;->access$102(Lio/rong/imlib/RongIMClient;I)I

    .line 316
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #setter for: Lio/rong/imlib/RongIMClient;->mHasConnect:Z
    invoke-static {v4, v7}, Lio/rong/imlib/RongIMClient;->access$902(Lio/rong/imlib/RongIMClient;Z)Z

    .line 317
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    invoke-static {p2}, Lio/rong/imlib/IHandler$Stub;->asInterface(Landroid/os/IBinder;)Lio/rong/imlib/IHandler;

    move-result-object v5

    #setter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v4, v5}, Lio/rong/imlib/RongIMClient;->access$402(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/IHandler;)Lio/rong/imlib/IHandler;

    .line 320
    :try_start_0
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 321
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v4

    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1000()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1100()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lio/rong/imlib/IHandler;->setServerInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;
    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$500(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$StatusListener;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/rong/imlib/IHandler;->setConnectionStatusListener(Lio/rong/imlib/IConnectionStatusListener;)V

    .line 324
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/imlib/ModuleManager;->init(Landroid/content/Context;Lio/rong/imlib/IHandler;)V

    .line 325
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #calls: Lio/rong/imlib/RongIMClient;->initMessageReceiver()V
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$1200(Lio/rong/imlib/RongIMClient;)V

    .line 327
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mRegCache:Ljava/util/List;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$1300(Lio/rong/imlib/RongIMClient;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :try_start_1
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mRegCache:Ljava/util/List;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$1300(Lio/rong/imlib/RongIMClient;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 329
    .local v3, item:Ljava/lang/String;
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v4

    invoke-interface {v4, v3}, Lio/rong/imlib/IHandler;->registerMessageType(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #item:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 336
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 337
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string v4, "action_reconnect"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mConnectChangeReceiver:Lio/rong/imlib/ConnectChangeReceiver;
    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$1400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ConnectChangeReceiver;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 342
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mConnectRunnable:Lio/rong/imlib/RongIMClient$ConnectRunnable;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$1500(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ConnectRunnable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 343
    invoke-static {}, Lio/rong/imlib/RongIMClient;->access$1600()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mConnectRunnable:Lio/rong/imlib/RongIMClient$ConnectRunnable;
    invoke-static {v5}, Lio/rong/imlib/RongIMClient;->access$1500(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ConnectRunnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    :cond_1
    :goto_2
    return-void

    .line 331
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 344
    .end local v1           #i$:Ljava/util/Iterator;
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    :cond_3
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mToken:Ljava/lang/String;
    invoke-static {v4}, Lio/rong/imlib/RongIMClient;->access$700(Lio/rong/imlib/RongIMClient;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 345
    iget-object v4, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lio/rong/imlib/RongIMClient;->reconnect(Lio/rong/imlib/RongIMClient$ConnectCallback;)V

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 351
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    const/4 v2, 0x0

    #setter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1, v2}, Lio/rong/imlib/RongIMClient;->access$402(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/IHandler;)Lio/rong/imlib/IHandler;

    .line 352
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    const/4 v2, 0x0

    #setter for: Lio/rong/imlib/RongIMClient;->mHasConnect:Z
    invoke-static {v1, v2}, Lio/rong/imlib/RongIMClient;->access$902(Lio/rong/imlib/RongIMClient;Z)Z

    .line 354
    const-string v1, "RongIMClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceDisconnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mConnectionStatus:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$800(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> DISCONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mStatusListener:Lio/rong/imlib/RongIMClient$StatusListener;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$500(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/RongIMClient$StatusListener;

    move-result-object v1

    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$StatusListener;->onStatusChange(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 357
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mConnectChangeReceiver:Lio/rong/imlib/ConnectChangeReceiver;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$1400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ConnectChangeReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mConnectChangeReceiver:Lio/rong/imlib/ConnectChangeReceiver;
    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->access$1400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ConnectChangeReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lio/rong/imlib/RongIMClient;->access$200(Lio/rong/imlib/RongIMClient;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/common/SystemUtils;->isAppRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    const-string v1, "RongIMClient"

    const-string v2, "onServiceDisconnected Main process is running."

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$AidlConnection;->this$0:Lio/rong/imlib/RongIMClient;

    #calls: Lio/rong/imlib/RongIMClient;->initBindService()V
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$1700(Lio/rong/imlib/RongIMClient;)V

    .line 368
    :cond_1
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
