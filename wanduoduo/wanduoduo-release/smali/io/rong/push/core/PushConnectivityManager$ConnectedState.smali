.class Lio/rong/push/core/PushConnectivityManager$ConnectedState;
.super Lio/rong/push/common/stateMachine/State;
.source "PushConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/core/PushConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/push/core/PushConnectivityManager;


# direct methods
.method private constructor <init>(Lio/rong/push/core/PushConnectivityManager;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-direct {p0}, Lio/rong/push/common/stateMachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/core/PushConnectivityManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lio/rong/push/core/PushConnectivityManager$ConnectedState;-><init>(Lio/rong/push/core/PushConnectivityManager;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 414
    const-string v0, "PushConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 419
    const-string v1, "PushConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": process msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/rong/push/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 461
    :goto_0
    :pswitch_0
    return v5

    .line 423
    :pswitch_1
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->pushClient:Lio/rong/push/core/PushClient;
    invoke-static {v1}, Lio/rong/push/core/PushConnectivityManager;->access$500(Lio/rong/push/core/PushConnectivityManager;)Lio/rong/push/core/PushClient;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/push/core/PushClient;->disconnect()V

    goto :goto_0

    .line 426
    :pswitch_2
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->pushClient:Lio/rong/push/core/PushClient;
    invoke-static {v1}, Lio/rong/push/core/PushConnectivityManager;->access$500(Lio/rong/push/core/PushConnectivityManager;)Lio/rong/push/core/PushClient;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/push/core/PushClient;->ping()V

    .line 427
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    iget-object v2, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    iget-object v2, v2, Lio/rong/push/core/PushConnectivityManager;->pingState:Lio/rong/push/core/PushConnectivityManager$PingState;

    #calls: Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/push/core/PushConnectivityManager;->access$2600(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V

    goto :goto_0

    .line 430
    :pswitch_3
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-virtual {v1}, Lio/rong/push/core/PushConnectivityManager;->stopPingTimer()V

    .line 431
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->pushClient:Lio/rong/push/core/PushClient;
    invoke-static {v1}, Lio/rong/push/core/PushConnectivityManager;->access$500(Lio/rong/push/core/PushConnectivityManager;)Lio/rong/push/core/PushClient;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/push/core/PushClient;->reset()V

    .line 432
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    iget-object v2, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->disconnectedState:Lio/rong/push/core/PushConnectivityManager$DisconnectedState;
    invoke-static {v2}, Lio/rong/push/core/PushConnectivityManager;->access$1500(Lio/rong/push/core/PushConnectivityManager;)Lio/rong/push/core/PushConnectivityManager$DisconnectedState;

    move-result-object v2

    #calls: Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/push/core/PushConnectivityManager;->access$2700(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V

    .line 433
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    invoke-virtual {v1}, Lio/rong/push/core/PushConnectivityManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 436
    :pswitch_4
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->pushClient:Lio/rong/push/core/PushClient;
    invoke-static {v1}, Lio/rong/push/core/PushConnectivityManager;->access$500(Lio/rong/push/core/PushConnectivityManager;)Lio/rong/push/core/PushClient;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/push/core/PushClient;->reset()V

    .line 437
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    iget-object v2, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->disconnectedState:Lio/rong/push/core/PushConnectivityManager$DisconnectedState;
    invoke-static {v2}, Lio/rong/push/core/PushConnectivityManager;->access$1500(Lio/rong/push/core/PushConnectivityManager;)Lio/rong/push/core/PushConnectivityManager$DisconnectedState;

    move-result-object v2

    #calls: Lio/rong/push/core/PushConnectivityManager;->transitionTo(Lio/rong/push/common/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/push/core/PushConnectivityManager;->access$2800(Lio/rong/push/core/PushConnectivityManager;Lio/rong/push/common/stateMachine/IState;)V

    goto :goto_0

    .line 440
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->appKey:Ljava/lang/String;
    invoke-static {v2}, Lio/rong/push/core/PushConnectivityManager;->access$800(Lio/rong/push/core/PushConnectivityManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, info:Ljava/lang/String;
    iget-object v1, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->pushClient:Lio/rong/push/core/PushClient;
    invoke-static {v1}, Lio/rong/push/core/PushConnectivityManager;->access$500(Lio/rong/push/core/PushConnectivityManager;)Lio/rong/push/core/PushClient;

    move-result-object v1

    sget-object v2, Lio/rong/push/core/PushClient$QueryMethod;->SET_TOKEN:Lio/rong/push/core/PushClient$QueryMethod;

    iget-object v3, p0, Lio/rong/push/core/PushConnectivityManager$ConnectedState;->this$0:Lio/rong/push/core/PushConnectivityManager;

    #getter for: Lio/rong/push/core/PushConnectivityManager;->deviceId:Ljava/lang/String;
    invoke-static {v3}, Lio/rong/push/core/PushConnectivityManager;->access$900(Lio/rong/push/core/PushConnectivityManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/rong/push/core/PushConnectivityManager$ConnectedState$1;

    invoke-direct {v4, p0}, Lio/rong/push/core/PushConnectivityManager$ConnectedState$1;-><init>(Lio/rong/push/core/PushConnectivityManager$ConnectedState;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lio/rong/push/core/PushClient;->query(Lio/rong/push/core/PushClient$QueryMethod;Ljava/lang/String;Ljava/lang/String;Lio/rong/push/core/PushClient$QueryCallback;)V

    goto/16 :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
