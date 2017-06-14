.class Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;
.super Ljava/lang/Object;
.source "AuthenticationRecordVideoActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->initSurfaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "surfaceHolder"
    .parameter "i"
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #calls: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->doChange(Landroid/view/SurfaceHolder;)V
    invoke-static {v0, p1}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$300(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;Landroid/view/SurfaceHolder;)V

    .line 97
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "surfaceHolder"

    .prologue
    .line 76
    iget-object v2, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #getter for: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$000(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #calls: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->FindFrontCamera()I
    invoke-static {v2}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$100(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)I

    move-result v0

    .line 78
    .local v0, CammeraIndex:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 79
    const-string v2, "\u60a8\u7684\u624b\u673a\u4e0d\u652f\u6301\u524d\u7f6e\u6444\u50cf\u5934"

    invoke-static {v2}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #calls: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->FindBackCamera()I
    invoke-static {v2}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$200(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)I

    move-result v0

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    #setter for: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;
    invoke-static {v2, v3}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$002(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #getter for: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$000(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 85
    iget-object v2, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #getter for: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$000(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)Landroid/hardware/Camera;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0           #CammeraIndex:I
    :cond_1
    :goto_0
    return-void

    .line 86
    .restart local v0       #CammeraIndex:I
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    iget-object v2, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #getter for: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$000(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #getter for: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$000(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #getter for: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->camera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$000(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    iput-object v1, v0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 105
    const/4 p1, 0x0

    .line 106
    if-eqz p1, :cond_1

    .line 107
    const/4 p1, 0x0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #getter for: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$400(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #setter for: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$402(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #getter for: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$400(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #getter for: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$400(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 114
    iget-object v0, p0, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;

    #setter for: Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->mediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0, v1}, Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;->access$402(Lcom/wanduoduo/ui/authentication/AuthenticationRecordVideoActivity;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    .line 116
    :cond_3
    return-void
.end method
