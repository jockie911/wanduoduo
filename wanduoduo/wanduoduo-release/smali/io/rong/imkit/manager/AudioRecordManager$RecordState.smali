.class Lio/rong/imkit/manager/AudioRecordManager$RecordState;
.super Lio/rong/imkit/manager/IAudioState;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/manager/AudioRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/manager/AudioRecordManager;


# direct methods
.method constructor <init>(Lio/rong/imkit/manager/AudioRecordManager;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    invoke-direct {p0}, Lio/rong/imkit/manager/IAudioState;-><init>()V

    return-void
.end method


# virtual methods
.method handleMessage(Lio/rong/imkit/manager/AudioStateMessage;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0x1f4

    .line 134
    const-string v3, "AudioRecordManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handleMessage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lio/rong/imkit/manager/AudioStateMessage;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget v3, p1, Lio/rong/imkit/manager/AudioStateMessage;->what:I

    packed-switch v3, :pswitch_data_0

    .line 192
    :goto_0
    :pswitch_0
    return-void

    .line 137
    :pswitch_1
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->audioDBChanged()V
    invoke-static {v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$800(Lio/rong/imkit/manager/AudioRecordManager;)V

    .line 138
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    const-wide/16 v6, 0x96

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->setCancelView()V
    invoke-static {v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$900(Lio/rong/imkit/manager/AudioRecordManager;)V

    .line 142
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v4, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v4, v4, Lio/rong/imkit/manager/AudioRecordManager;->cancelState:Lio/rong/imkit/manager/IAudioState;

    #setter for: Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;
    invoke-static {v3, v4}, Lio/rong/imkit/manager/AudioRecordManager;->access$702(Lio/rong/imkit/manager/AudioRecordManager;Lio/rong/imkit/manager/IAudioState;)Lio/rong/imkit/manager/IAudioState;

    goto :goto_0

    .line 145
    :pswitch_3
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->checkAudioTimeLength()Z
    invoke-static {v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$1000(Lio/rong/imkit/manager/AudioRecordManager;)Z

    move-result v0

    .line 146
    .local v0, checked:Z
    if-eqz v0, :cond_0

    .line 147
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mStateIV:Landroid/widget/ImageView;
    invoke-static {v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$1100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/widget/ImageView;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_volume_wraning:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mStateTV:Landroid/widget/TextView;
    invoke-static {v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$1200(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/widget/TextView;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$string;->rc_voice_short:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 150
    :cond_0
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/manager/AudioRecordManager$RecordState$1;

    invoke-direct {v4, p0, v0}, Lio/rong/imkit/manager/AudioRecordManager$RecordState$1;-><init>(Lio/rong/imkit/manager/AudioRecordManager$RecordState;Z)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v4, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v4, v4, Lio/rong/imkit/manager/AudioRecordManager;->idleState:Lio/rong/imkit/manager/IAudioState;

    #setter for: Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;
    invoke-static {v3, v4}, Lio/rong/imkit/manager/AudioRecordManager;->access$702(Lio/rong/imkit/manager/AudioRecordManager;Lio/rong/imkit/manager/IAudioState;)Lio/rong/imkit/manager/IAudioState;

    goto :goto_0

    .line 163
    .end local v0           #checked:Z
    :pswitch_4
    iget-object v3, p1, Lio/rong/imkit/manager/AudioStateMessage;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 164
    .local v1, counter:I
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->setTimeoutView(I)V
    invoke-static {v3, v1}, Lio/rong/imkit/manager/AudioRecordManager;->access$1600(Lio/rong/imkit/manager/AudioRecordManager;I)V

    .line 165
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v4, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v4, v4, Lio/rong/imkit/manager/AudioRecordManager;->timerState:Lio/rong/imkit/manager/IAudioState;

    #setter for: Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;
    invoke-static {v3, v4}, Lio/rong/imkit/manager/AudioRecordManager;->access$702(Lio/rong/imkit/manager/AudioRecordManager;Lio/rong/imkit/manager/IAudioState;)Lio/rong/imkit/manager/IAudioState;

    .line 167
    if-lez v1, :cond_1

    .line 168
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 169
    .local v2, message:Landroid/os/Message;
    const/16 v3, 0x8

    iput v3, v2, Landroid/os/Message;->what:I

    .line 170
    add-int/lit8 v3, v1, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 173
    .end local v2           #message:Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/manager/AudioRecordManager$RecordState$2;

    invoke-direct {v4, p0}, Lio/rong/imkit/manager/AudioRecordManager$RecordState$2;-><init>(Lio/rong/imkit/manager/AudioRecordManager$RecordState;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v4, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v4, v4, Lio/rong/imkit/manager/AudioRecordManager;->idleState:Lio/rong/imkit/manager/IAudioState;

    #setter for: Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;
    invoke-static {v3, v4}, Lio/rong/imkit/manager/AudioRecordManager;->access$702(Lio/rong/imkit/manager/AudioRecordManager;Lio/rong/imkit/manager/IAudioState;)Lio/rong/imkit/manager/IAudioState;

    goto/16 :goto_0

    .line 185
    .end local v1           #counter:I
    :pswitch_5
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->stopRec()V
    invoke-static {v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$1300(Lio/rong/imkit/manager/AudioRecordManager;)V

    .line 186
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->destroyView()V
    invoke-static {v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$1500(Lio/rong/imkit/manager/AudioRecordManager;)V

    .line 187
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->deleteAudioFile()V
    invoke-static {v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$1700(Lio/rong/imkit/manager/AudioRecordManager;)V

    .line 188
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v4, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v4, v4, Lio/rong/imkit/manager/AudioRecordManager;->idleState:Lio/rong/imkit/manager/IAudioState;

    #setter for: Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;
    invoke-static {v3, v4}, Lio/rong/imkit/manager/AudioRecordManager;->access$702(Lio/rong/imkit/manager/AudioRecordManager;Lio/rong/imkit/manager/IAudioState;)Lio/rong/imkit/manager/IAudioState;

    .line 189
    iget-object v3, p0, Lio/rong/imkit/manager/AudioRecordManager$RecordState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v3, v3, Lio/rong/imkit/manager/AudioRecordManager;->idleState:Lio/rong/imkit/manager/IAudioState;

    invoke-virtual {v3}, Lio/rong/imkit/manager/IAudioState;->enter()V

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
