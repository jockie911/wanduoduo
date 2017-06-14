.class Lio/rong/imlib/location/RealTimeLocation$IncomingState;
.super Lio/rong/imlib/stateMachine/State;
.source "RealTimeLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/location/RealTimeLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/location/RealTimeLocation;


# direct methods
.method private constructor <init>(Lio/rong/imlib/location/RealTimeLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {p0}, Lio/rong/imlib/stateMachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lio/rong/imlib/location/RealTimeLocation$IncomingState;-><init>(Lio/rong/imlib/location/RealTimeLocation;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->stopTimer()V
    invoke-static {v0}, Lio/rong/imlib/location/RealTimeLocation;->access$3600(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 386
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v1, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;->RC_REAL_TIME_LOCATION_STATUS_INCOMING:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    #setter for: Lio/rong/imlib/location/RealTimeLocation;->mCurrentState:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$802(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    .line 387
    iget-object v0, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mCurrentState:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v1

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onStatusChanged(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)V
    invoke-static {v0, v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1000(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;)V

    .line 388
    invoke-static {}, Lio/rong/imlib/location/RealTimeLocation;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incoming enter : current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mCurrentState:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$800(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    .line 393
    const/4 v0, 0x0

    .line 396
    .local v0, content:Lio/rong/imlib/model/MessageContent;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 453
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 398
    :pswitch_1
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->sendJoinMessage()V
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$3700(Lio/rong/imlib/location/RealTimeLocation;)V

    .line 399
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mClient:Lio/rong/imlib/NativeClient;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$1200(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/NativeClient;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/NativeClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    #setter for: Lio/rong/imlib/location/RealTimeLocation;->mSelfId:Ljava/lang/String;
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$902(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)Ljava/lang/String;

    .line 400
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mParticipants:Ljava/util/ArrayList;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mSelfId:Ljava/lang/String;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$900(Lio/rong/imlib/location/RealTimeLocation;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mConnectedState:Lio/rong/imlib/stateMachine/State;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2700(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/stateMachine/State;

    move-result-object v2

    #calls: Lio/rong/imlib/location/RealTimeLocation;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$3800(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/stateMachine/IState;)V

    goto :goto_0

    .line 404
    :pswitch_2
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 405
    .local v9, userId:Ljava/lang/String;
    new-instance v10, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {v10, v1, v9}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;-><init>(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 406
    .local v10, watcher:Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    invoke-virtual {v10}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->start()V

    .line 407
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mParticipants:Ljava/util/ArrayList;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onParticipantsJoin(Ljava/lang/String;)V
    invoke-static {v1, v9}, Lio/rong/imlib/location/RealTimeLocation;->access$2600(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    .end local v9           #userId:Ljava/lang/String;
    .end local v10           #watcher:Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 414
    .local v6, id:Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->stop()V

    .line 416
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mParticipants:Ljava/util/ArrayList;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 418
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onParticipantQuit(Ljava/lang/String;)V
    invoke-static {v1, v6}, Lio/rong/imlib/location/RealTimeLocation;->access$3900(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 420
    :cond_1
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mParticipants:Ljava/util/ArrayList;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 421
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mTerminalState:Lio/rong/imlib/stateMachine/State;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$3000(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/stateMachine/State;

    move-result-object v2

    #calls: Lio/rong/imlib/location/RealTimeLocation;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4000(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/stateMachine/IState;)V

    goto/16 :goto_0

    .line 425
    .end local v6           #id:Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_GPS_DISABLED:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onError(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2300(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 426
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mTerminalState:Lio/rong/imlib/stateMachine/State;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$3000(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/stateMachine/State;

    move-result-object v2

    #calls: Lio/rong/imlib/location/RealTimeLocation;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4100(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/stateMachine/IState;)V

    goto/16 :goto_0

    .line 429
    :pswitch_5
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    sget-object v2, Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;->RC_REAL_TIME_LOCATION_NETWORK_UNAVAILABLE:Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onError(Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$2300(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/location/RealTimeLocationConstant$RealTimeLocationErrorCode;)V

    .line 430
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    iget-object v2, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mTerminalState:Lio/rong/imlib/stateMachine/State;
    invoke-static {v2}, Lio/rong/imlib/location/RealTimeLocation;->access$3000(Lio/rong/imlib/location/RealTimeLocation;)Lio/rong/imlib/stateMachine/State;

    move-result-object v2

    #calls: Lio/rong/imlib/location/RealTimeLocation;->transitionTo(Lio/rong/imlib/stateMachine/IState;)V
    invoke-static {v1, v2}, Lio/rong/imlib/location/RealTimeLocation;->access$4200(Lio/rong/imlib/location/RealTimeLocation;Lio/rong/imlib/stateMachine/IState;)V

    goto/16 :goto_0

    .line 433
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lio/rong/imlib/model/Message;

    move-object v8, v1

    check-cast v8, Lio/rong/imlib/model/Message;

    .line 434
    .local v8, message:Lio/rong/imlib/model/Message;
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    .line 437
    .restart local v6       #id:Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 438
    new-instance v10, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-direct {v10, v1, v6}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;-><init>(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 439
    .restart local v10       #watcher:Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    invoke-virtual {v10}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->start()V

    .line 440
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mParticipants:Ljava/util/ArrayList;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1300(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onParticipantsJoin(Ljava/lang/String;)V
    invoke-static {v1, v6}, Lio/rong/imlib/location/RealTimeLocation;->access$2600(Lio/rong/imlib/location/RealTimeLocation;Ljava/lang/String;)V

    .line 446
    .end local v10           #watcher:Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;
    :goto_1
    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    move-object v7, v0

    .line 447
    check-cast v7, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;

    .line 448
    .local v7, coor:Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    invoke-virtual {v7}, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v7}, Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;->getLongitude()D

    move-result-wide v4

    #calls: Lio/rong/imlib/location/RealTimeLocation;->onReceiveLocation(DDLjava/lang/String;)V
    invoke-static/range {v1 .. v6}, Lio/rong/imlib/location/RealTimeLocation;->access$4300(Lio/rong/imlib/location/RealTimeLocation;DDLjava/lang/String;)V

    goto/16 :goto_0

    .line 444
    .end local v7           #coor:Lio/rong/imlib/location/message/RealTimeLocationStatusMessage;
    :cond_2
    iget-object v1, p0, Lio/rong/imlib/location/RealTimeLocation$IncomingState;->this$0:Lio/rong/imlib/location/RealTimeLocation;

    #getter for: Lio/rong/imlib/location/RealTimeLocation;->mWatcher:Ljava/util/HashMap;
    invoke-static {v1}, Lio/rong/imlib/location/RealTimeLocation;->access$1700(Lio/rong/imlib/location/RealTimeLocation;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;

    invoke-virtual {v1}, Lio/rong/imlib/location/RealTimeLocation$ParticipantWatcher;->update()V

    goto :goto_1

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
