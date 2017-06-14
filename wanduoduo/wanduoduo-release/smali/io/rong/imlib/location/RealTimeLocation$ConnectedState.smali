.class Lio/rong/imlib/location/RealTimeLocation$ConnectedState;
.super Lio/rong/imlib/stateMachine/State;
.source "RealTimeLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/RealTimeLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/location/RealTimeLocation;


# direct methods
.method private constructor <init>(Lio/rong/imlib/location/RealTimeLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {p0}, Lio/rong/imlib/stateMachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;-><init>(Lio/rong/imlib/location/RealTimeLocation;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_CONNECTED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    #setter for: Lio/rong/imlib/location/RealTimeLocation;->mCurrentState:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$802(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 463
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mCurrentState:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v1

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onStatusChanged(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)V
    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1000(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)V

    .line 464
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->startTimer()V
    invoke-static {v0}, Lio/rong/imlib/location/RealTimeLocation;->access$2200(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 465
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocation;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected enter : current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mCurrentState:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    .line 470
    const/4 v6, 0x0

    .line 471
    .local v6, id:Ljava/lang/String;
    const/4 v8, 0x0

    .line 472
    .local v8, message:Lio/rong/imlib/model/Message;
    const/4 v0, 0x0

    .line 474
    .local v0, content:Lio/rong/imlib/model/MessageContent;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 543
    :cond_0
    :goto_0
    :pswitch_0
    return v10

    .line 476
    :pswitch_1
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_START_FAILURE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onError(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2300(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 477
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mTerminalState:Lio/rong/imlib/stateMachine/State;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$3000(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/stateMachine/State;

    move-result-object v2

    #calls: Lio/rong/imlib/location/RealTimeLocation;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4500(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/stateMachine/IState;)V

    goto :goto_0

    .line 480
    :pswitch_2
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_JOIN_FAILURE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onError(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2300(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 481
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mTerminalState:Lio/rong/imlib/stateMachine/State;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$3000(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/stateMachine/State;

    move-result-object v2

    #calls: Lio/rong/imlib/location/RealTimeLocation;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4600(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/stateMachine/IState;)V

    goto :goto_0

    .line 484
    :pswitch_3
    new-instance v9, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {v9, v1, v6}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;-><init>(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 485
    .local v9, watcher:Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    invoke-virtual {v9}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->start()V

    .line 487
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 488
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mParticipants:Ljava/util/ArrayList;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onParticipantsJoin(Ljava/lang/String;)V
    invoke-static {v1, v6}, Lio/rong/imlib/location/RealTimeLocation;->access$2600(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocation;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 495
    .end local v9           #watcher:Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 496
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mParticipants:Ljava/util/ArrayList;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 497
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->stop()V

    .line 498
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onParticipantQuit(Ljava/lang/String;)V
    invoke-static {v1, v6}, Lio/rong/imlib/location/RealTimeLocation;->access$3900(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mParticipants:Ljava/util/ArrayList;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 501
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mOutgoingState:Lio/rong/imlib/stateMachine/State;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$1500(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/stateMachine/State;

    move-result-object v2

    #calls: Lio/rong/imlib/location/RealTimeLocation;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4700(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/stateMachine/IState;)V

    goto/16 :goto_0

    .line 504
    :pswitch_5
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->sendQuitMessage()V
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$2900(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 505
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mParticipants:Ljava/util/ArrayList;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mSelfId:Ljava/lang/String;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$900(Lio/rong/imlib/location/RealTimeLocation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 506
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mParticipants:Ljava/util/ArrayList;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 507
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mTerminalState:Lio/rong/imlib/stateMachine/State;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$3000(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/stateMachine/State;

    move-result-object v2

    #calls: Lio/rong/imlib/location/RealTimeLocation;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4800(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/stateMachine/IState;)V

    goto/16 :goto_0

    .line 509
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mIncomingState:Lio/rong/imlib/stateMachine/State;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$1800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/stateMachine/State;

    move-result-object v2

    #calls: Lio/rong/imlib/location/RealTimeLocation;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4900(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/stateMachine/IState;)V

    goto/16 :goto_0

    .line 513
    :pswitch_6
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->sendLocationMessage()V
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$3200(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 514
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->updateSelfLocation()V
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1400(Lio/rong/imlib/location/RealTimeLocation;)V

    goto/16 :goto_0

    .line 517
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lio/rong/imlib/model/Message;

    move-object v8, v1

    check-cast v8, Lio/rong/imlib/model/Message;

    .line 518
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    .line 519
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 520
    new-instance v9, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {v9, v1, v6}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;-><init>(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 521
    .restart local v9       #watcher:Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    invoke-virtual {v9}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->start()V

    .line 522
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mParticipants:Ljava/util/ArrayList;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onParticipantsJoin(Ljava/lang/String;)V
    invoke-static {v1, v6}, Lio/rong/imlib/location/RealTimeLocation;->access$2600(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 528
    .end local v9           #watcher:Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    :goto_1
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    move-object v7, v0

    .line 529
    check-cast v7, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;

    .line 530
    .local v7, coor:Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v7}, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v7}, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->getLongitude()D

    move-result-wide v4

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onReceiveLocation(DDLjava/lang/String;)V
    invoke-static/range {v1 .. v6}, Lio/rong/imlib/location/RealTimeLocation;->access$4300(Lio/rong/imlib/location/RealTimeLocation;DDLjava/lang/String;)V

    goto/16 :goto_0

    .line 526
    .end local v7           #coor:Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;
    :cond_2
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->update()V

    goto :goto_1

    .line 533
    :pswitch_8
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_GPS_DISABLED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onError(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2300(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 534
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mTerminalState:Lio/rong/imlib/stateMachine/State;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$3000(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/stateMachine/State;

    move-result-object v2

    #calls: Lio/rong/imlib/location/RealTimeLocation;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$5000(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/stateMachine/IState;)V

    goto/16 :goto_0

    .line 537
    :pswitch_9
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NETWORK_UNAVAILABLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onError(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2300(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 538
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$ConnectedState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mTerminalState:Lio/rong/imlib/stateMachine/State;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$3000(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/stateMachine/State;

    move-result-object v2

    #calls: Lio/rong/imlib/location/RealTimeLocation;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$5100(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/stateMachine/IState;)V

    goto/16 :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
