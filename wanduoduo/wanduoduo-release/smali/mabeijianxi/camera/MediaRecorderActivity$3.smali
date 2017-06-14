.class Lmabeijianxi/camera/MediaRecorderActivity$3;
.super Landroid/os/Handler;
.source "MediaRecorderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmabeijianxi/camera/MediaRecorderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmabeijianxi/camera/MediaRecorderActivity;


# direct methods
.method constructor <init>(Lmabeijianxi/camera/MediaRecorderActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 540
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderActivity$3;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 543
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 545
    :pswitch_0
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity$3;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;
    invoke-static {v0}, Lmabeijianxi/camera/MediaRecorderActivity;->access$000(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/MediaRecorderBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity$3;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    invoke-virtual {v0}, Lmabeijianxi/camera/MediaRecorderActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity$3;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;
    invoke-static {v0}, Lmabeijianxi/camera/MediaRecorderActivity;->access$100(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/model/MediaObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity$3;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;
    invoke-static {v0}, Lmabeijianxi/camera/MediaRecorderActivity;->access$100(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/model/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lmabeijianxi/camera/model/MediaObject;->getMedaParts()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity$3;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;
    invoke-static {v0}, Lmabeijianxi/camera/MediaRecorderActivity;->access$100(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/model/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lmabeijianxi/camera/model/MediaObject;->getDuration()I

    move-result v0

    invoke-static {}, Lmabeijianxi/camera/MediaRecorderActivity;->access$200()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 547
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity$3;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #calls: Lmabeijianxi/camera/MediaRecorderActivity;->stopRecord()V
    invoke-static {v0}, Lmabeijianxi/camera/MediaRecorderActivity;->access$600(Lmabeijianxi/camera/MediaRecorderActivity;)V

    .line 548
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity$3;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mTitleNext:Landroid/widget/ImageView;
    invoke-static {v0}, Lmabeijianxi/camera/MediaRecorderActivity;->access$700(Lmabeijianxi/camera/MediaRecorderActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    .line 551
    :cond_1
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity$3;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;
    invoke-static {v0}, Lmabeijianxi/camera/MediaRecorderActivity;->access$800(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/views/ProgressView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity$3;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mProgressView:Lmabeijianxi/camera/views/ProgressView;
    invoke-static {v0}, Lmabeijianxi/camera/MediaRecorderActivity;->access$800(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/views/ProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lmabeijianxi/camera/views/ProgressView;->invalidate()V

    .line 556
    :cond_2
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderActivity$3;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mPressedStatus:Z
    invoke-static {v0}, Lmabeijianxi/camera/MediaRecorderActivity;->access$500(Lmabeijianxi/camera/MediaRecorderActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const/4 v0, 0x0

    const-wide/16 v2, 0x1e

    invoke-virtual {p0, v0, v2, v3}, Lmabeijianxi/camera/MediaRecorderActivity$3;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
