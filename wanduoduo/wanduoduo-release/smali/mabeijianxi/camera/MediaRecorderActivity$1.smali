.class Lmabeijianxi/camera/MediaRecorderActivity$1;
.super Ljava/lang/Object;
.source "MediaRecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 257
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderActivity$1;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 261
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity$1;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mMediaRecorder:Lmabeijianxi/camera/MediaRecorderBase;
    invoke-static {v1}, Lmabeijianxi/camera/MediaRecorderActivity;->access$000(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/MediaRecorderBase;

    move-result-object v1

    if-nez v1, :cond_1

    .line 262
    const/4 v0, 0x0

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 269
    :pswitch_0
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity$1;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;
    invoke-static {v1}, Lmabeijianxi/camera/MediaRecorderActivity;->access$100(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/model/MediaObject;

    move-result-object v1

    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaObject;->getDuration()I

    move-result v1

    invoke-static {}, Lmabeijianxi/camera/MediaRecorderActivity;->access$200()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 274
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity$1;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #calls: Lmabeijianxi/camera/MediaRecorderActivity;->cancelDelete()Z
    invoke-static {v1}, Lmabeijianxi/camera/MediaRecorderActivity;->access$300(Lmabeijianxi/camera/MediaRecorderActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity$1;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #calls: Lmabeijianxi/camera/MediaRecorderActivity;->startRecord()V
    invoke-static {v1}, Lmabeijianxi/camera/MediaRecorderActivity;->access$400(Lmabeijianxi/camera/MediaRecorderActivity;)V

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity$1;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mPressedStatus:Z
    invoke-static {v1}, Lmabeijianxi/camera/MediaRecorderActivity;->access$500(Lmabeijianxi/camera/MediaRecorderActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity$1;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #calls: Lmabeijianxi/camera/MediaRecorderActivity;->stopRecord()V
    invoke-static {v1}, Lmabeijianxi/camera/MediaRecorderActivity;->access$600(Lmabeijianxi/camera/MediaRecorderActivity;)V

    .line 287
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity$1;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mMediaObject:Lmabeijianxi/camera/model/MediaObject;
    invoke-static {v1}, Lmabeijianxi/camera/MediaRecorderActivity;->access$100(Lmabeijianxi/camera/MediaRecorderActivity;)Lmabeijianxi/camera/model/MediaObject;

    move-result-object v1

    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaObject;->getDuration()I

    move-result v1

    invoke-static {}, Lmabeijianxi/camera/MediaRecorderActivity;->access$200()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 288
    iget-object v1, p0, Lmabeijianxi/camera/MediaRecorderActivity$1;->this$0:Lmabeijianxi/camera/MediaRecorderActivity;

    #getter for: Lmabeijianxi/camera/MediaRecorderActivity;->mTitleNext:Landroid/widget/ImageView;
    invoke-static {v1}, Lmabeijianxi/camera/MediaRecorderActivity;->access$700(Lmabeijianxi/camera/MediaRecorderActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
