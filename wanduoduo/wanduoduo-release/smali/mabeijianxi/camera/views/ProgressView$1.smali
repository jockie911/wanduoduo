.class Lmabeijianxi/camera/views/ProgressView$1;
.super Landroid/os/Handler;
.source "ProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmabeijianxi/camera/views/ProgressView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmabeijianxi/camera/views/ProgressView;


# direct methods
.method constructor <init>(Lmabeijianxi/camera/views/ProgressView;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 93
    iput-object p1, p0, Lmabeijianxi/camera/views/ProgressView$1;->this$0:Lmabeijianxi/camera/views/ProgressView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 110
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView$1;->this$0:Lmabeijianxi/camera/views/ProgressView;

    invoke-virtual {v0}, Lmabeijianxi/camera/views/ProgressView;->invalidate()V

    .line 99
    iget-object v2, p0, Lmabeijianxi/camera/views/ProgressView$1;->this$0:Lmabeijianxi/camera/views/ProgressView;

    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView$1;->this$0:Lmabeijianxi/camera/views/ProgressView;

    #getter for: Lmabeijianxi/camera/views/ProgressView;->mActiveState:Z
    invoke-static {v0}, Lmabeijianxi/camera/views/ProgressView;->access$000(Lmabeijianxi/camera/views/ProgressView;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    #setter for: Lmabeijianxi/camera/views/ProgressView;->mActiveState:Z
    invoke-static {v2, v0}, Lmabeijianxi/camera/views/ProgressView;->access$002(Lmabeijianxi/camera/views/ProgressView;Z)Z

    .line 100
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView$1;->this$0:Lmabeijianxi/camera/views/ProgressView;

    #getter for: Lmabeijianxi/camera/views/ProgressView;->mStop:Z
    invoke-static {v0}, Lmabeijianxi/camera/views/ProgressView;->access$100(Lmabeijianxi/camera/views/ProgressView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Lmabeijianxi/camera/views/ProgressView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 99
    goto :goto_1

    .line 104
    :pswitch_1
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView$1;->this$0:Lmabeijianxi/camera/views/ProgressView;

    invoke-virtual {v0}, Lmabeijianxi/camera/views/ProgressView;->invalidate()V

    .line 105
    iget-object v0, p0, Lmabeijianxi/camera/views/ProgressView$1;->this$0:Lmabeijianxi/camera/views/ProgressView;

    #getter for: Lmabeijianxi/camera/views/ProgressView;->mProgressChanged:Z
    invoke-static {v0}, Lmabeijianxi/camera/views/ProgressView;->access$200(Lmabeijianxi/camera/views/ProgressView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Lmabeijianxi/camera/views/ProgressView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
