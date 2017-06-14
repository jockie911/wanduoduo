.class Lio/rong/imkit/manager/AudioRecordManager$IdleState;
.super Lio/rong/imkit/manager/IAudioState;
.source "AudioRecordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/manager/AudioRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/manager/AudioRecordManager;


# direct methods
.method public constructor <init>(Lio/rong/imkit/manager/AudioRecordManager;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    invoke-direct {p0}, Lio/rong/imkit/manager/IAudioState;-><init>()V

    .line 100
    const-string v0, "AudioRecordManager"

    const-string v1, "IdleState"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method


# virtual methods
.method enter()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lio/rong/imkit/manager/IAudioState;->enter()V

    .line 106
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lio/rong/imkit/manager/AudioRecordManager;->access$100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lio/rong/imkit/manager/AudioRecordManager;->access$100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lio/rong/imkit/manager/AudioRecordManager;->access$100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lio/rong/imkit/manager/AudioRecordManager;->access$100(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    :cond_0
    return-void
.end method

.method handleMessage(Lio/rong/imkit/manager/AudioStateMessage;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 115
    const-string v0, "AudioRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IdleState handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lio/rong/imkit/manager/AudioStateMessage;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget v0, p1, Lio/rong/imkit/manager/AudioStateMessage;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #getter for: Lio/rong/imkit/manager/AudioRecordManager;->mRootView:Landroid/view/View;
    invoke-static {v1}, Lio/rong/imkit/manager/AudioRecordManager;->access$200(Lio/rong/imkit/manager/AudioRecordManager;)Landroid/view/View;

    move-result-object v1

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->initView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lio/rong/imkit/manager/AudioRecordManager;->access$300(Lio/rong/imkit/manager/AudioRecordManager;Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->setRecordingView()V
    invoke-static {v0}, Lio/rong/imkit/manager/AudioRecordManager;->access$400(Lio/rong/imkit/manager/AudioRecordManager;)V

    .line 120
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    #calls: Lio/rong/imkit/manager/AudioRecordManager;->startRec()V
    invoke-static {v0}, Lio/rong/imkit/manager/AudioRecordManager;->access$500(Lio/rong/imkit/manager/AudioRecordManager;)V

    .line 121
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    #setter for: Lio/rong/imkit/manager/AudioRecordManager;->smStartRecTime:J
    invoke-static {v0, v2, v3}, Lio/rong/imkit/manager/AudioRecordManager;->access$602(Lio/rong/imkit/manager/AudioRecordManager;J)J

    .line 122
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v1, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    iget-object v1, v1, Lio/rong/imkit/manager/AudioRecordManager;->recordState:Lio/rong/imkit/manager/IAudioState;

    #setter for: Lio/rong/imkit/manager/AudioRecordManager;->mCurAudioState:Lio/rong/imkit/manager/IAudioState;
    invoke-static {v0, v1}, Lio/rong/imkit/manager/AudioRecordManager;->access$702(Lio/rong/imkit/manager/AudioRecordManager;Lio/rong/imkit/manager/IAudioState;)Lio/rong/imkit/manager/IAudioState;

    .line 123
    iget-object v0, p0, Lio/rong/imkit/manager/AudioRecordManager$IdleState;->this$0:Lio/rong/imkit/manager/AudioRecordManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/rong/imkit/manager/AudioRecordManager;->sendEmptyMessage(I)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
