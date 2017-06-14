.class Lmabeijianxi/camera/MediaRecorderBase$1;
.super Landroid/os/CountDownTimer;
.source "MediaRecorderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmabeijianxi/camera/MediaRecorderBase;->testPreviewFrameCallCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmabeijianxi/camera/MediaRecorderBase;


# direct methods
.method constructor <init>(Lmabeijianxi/camera/MediaRecorderBase;JJ)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 730
    iput-object p1, p0, Lmabeijianxi/camera/MediaRecorderBase$1;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 741
    return-void
.end method

.method public onTick(J)V
    .locals 4
    .parameter "millisUntilFinished"

    .prologue
    .line 734
    const-string v0, "[Vitamio Recorder]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testFrameRate..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmabeijianxi/camera/MediaRecorderBase$1;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    iget-wide v2, v2, Lmabeijianxi/camera/MediaRecorderBase;->mPreviewFrameCallCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase$1;->this$0:Lmabeijianxi/camera/MediaRecorderBase;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lmabeijianxi/camera/MediaRecorderBase;->mPreviewFrameCallCount:J

    .line 736
    return-void
.end method
