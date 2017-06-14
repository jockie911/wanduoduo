.class Lio/rong/imkit/manager/AudioRecordManager$TimerState;
.super Lio/rong/imkit/manager/IAudioState;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/manager/AudioRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimerState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/manager/AudioRecordManager;


# direct methods
.method constructor <init>(Lio/rong/imkit/manager/AudioRecordManager;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    invoke-direct {p0}, Lio/rong/imkit/manager/IAudioState;-><init>()V

    return-void
.end method


# virtual methods
.method handleMessage(Lio/rong/imkit/manager/AudioStateMessage;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0x1f4

    .line 246
    const-string v2, "AudioRecordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handleMessage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lio/rong/imkit/manager/AudioStateMessage;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v2, p1, Lio/rong/imkit/manager/AudioStateMessage;->what:I

    packed-switch v2, :pswitch_data_0

    .line 292
    :goto_0
    :pswitch_0
    return-void

    .line 249
    :pswitch_1
    iget-object v2, p1, Lio/rong/imkit/manager/AudioStateMessage;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 250
    .local v0, counter:I
    if-lez v0, :cond_0

    .line 251
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 252
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 253
    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lio/rong/imkit/manager/AudioRecordManager;->access$100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 255
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->setTimeoutView(I)V
    invoke-static {v2, v0}, Lio/rong/imkit/manager/AudioRecordManager;->access$1600(Lio/rong/imkit/manager/AudioRecordManager;I)V

    goto :goto_0

    .line 257
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lio/rong/imkit/manager/AudioRecordManager;->access$100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/manager/AudioRecordManager$TimerState$1;

    invoke-direct {v3, p0}, Lio/rong/imkit/manager/AudioRecordManager$TimerState$1;-><init>(Lio/rong/imkit/manager/AudioRecordManager$TimerState;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 265
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v3, v3, Lio/rong/imkit/manager/AudioRecordManager;->idleState:Lio/rong/imkit/manager/IAudioState;

    #setter for: Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;
    invoke-static {v2, v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$702(Lio/rong/imkit/manager/AudioRecordManager;Lio/rong/imkit/manager/IAudioState;)Lio/rong/imkit/manager/IAudioState;

    goto :goto_0

    .line 269
    .end local v0           #counter:I
    :pswitch_2
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lio/rong/imkit/manager/AudioRecordManager;->access$100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/manager/AudioRecordManager$TimerState$2;

    invoke-direct {v3, p0}, Lio/rong/imkit/manager/AudioRecordManager$TimerState$2;-><init>(Lio/rong/imkit/manager/AudioRecordManager$TimerState;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v3, v3, Lio/rong/imkit/manager/AudioRecordManager;->idleState:Lio/rong/imkit/manager/IAudioState;

    #setter for: Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;
    invoke-static {v2, v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$702(Lio/rong/imkit/manager/AudioRecordManager;Lio/rong/imkit/manager/IAudioState;)Lio/rong/imkit/manager/IAudioState;

    .line 278
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v2, v2, Lio/rong/imkit/manager/AudioRecordManager;->idleState:Lio/rong/imkit/manager/IAudioState;

    invoke-virtual {v2}, Lio/rong/imkit/manager/IAudioState;->enter()V

    goto :goto_0

    .line 281
    :pswitch_3
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->stopRec()V
    invoke-static {v2}, Lio/rong/imkit/manager/AudioRecordManager;->access$1300(Lio/rong/imkit/manager/AudioRecordManager;)V

    .line 282
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->destroyView()V
    invoke-static {v2}, Lio/rong/imkit/manager/AudioRecordManager;->access$1500(Lio/rong/imkit/manager/AudioRecordManager;)V

    .line 283
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->deleteAudioFile()V
    invoke-static {v2}, Lio/rong/imkit/manager/AudioRecordManager;->access$1700(Lio/rong/imkit/manager/AudioRecordManager;)V

    .line 284
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v3, v3, Lio/rong/imkit/manager/AudioRecordManager;->idleState:Lio/rong/imkit/manager/IAudioState;

    #setter for: Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;
    invoke-static {v2, v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$702(Lio/rong/imkit/manager/AudioRecordManager;Lio/rong/imkit/manager/IAudioState;)Lio/rong/imkit/manager/IAudioState;

    .line 285
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v2, v2, Lio/rong/imkit/manager/AudioRecordManager;->idleState:Lio/rong/imkit/manager/IAudioState;

    invoke-virtual {v2}, Lio/rong/imkit/manager/IAudioState;->enter()V

    goto/16 :goto_0

    .line 288
    :pswitch_4
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->setCancelView()V
    invoke-static {v2}, Lio/rong/imkit/manager/AudioRecordManager;->access$900(Lio/rong/imkit/manager/AudioRecordManager;)V

    .line 289
    iget-object v2, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$TimerState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v3, v3, Lio/rong/imkit/manager/AudioRecordManager;->cancelState:Lio/rong/imkit/manager/IAudioState;

    #setter for: Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;
    invoke-static {v2, v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$702(Lio/rong/imkit/manager/AudioRecordManager;Lio/rong/imkit/manager/IAudioState;)Lio/rong/imkit/manager/IAudioState;

    goto/16 :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
