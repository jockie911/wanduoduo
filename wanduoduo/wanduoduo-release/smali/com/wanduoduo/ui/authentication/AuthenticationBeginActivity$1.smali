.class Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity$1;
.super Ljava/lang/Object;
.source "AuthenticationBeginActivity.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/BridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 4
    .parameter "data"
    .parameter "function"

    .prologue
    const/16 v2, 0x1e0

    const/4 v3, 0x1

    .line 23
    new-instance v1, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    invoke-direct {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;-><init>()V

    .line 24
    invoke-virtual {v1, v3}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->doH264Compress(Z)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v2}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->smallVideoWidth(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    .line 26
    invoke-virtual {v1, v2}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->smallVideoHeight(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    const/16 v2, 0x2710

    .line 27
    invoke-virtual {v1, v2}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->recordTimeMax(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    const/16 v2, 0x14

    .line 28
    invoke-virtual {v1, v2}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->maxFrameRate(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    const/16 v2, 0x8

    .line 29
    invoke-virtual {v1, v2}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->minFrameRate(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v3}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->captureThumbnailsTime(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    const/16 v2, 0xbb8

    .line 31
    invoke-virtual {v1, v2}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->recordTimeMin(I)Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lmabeijianxi/camera/model/MediaRecorderConfig$Buidler;->build()Lmabeijianxi/camera/model/MediaRecorderConfig;

    move-result-object v0

    .line 33
    .local v0, config:Lmabeijianxi/camera/model/MediaRecorderConfig;
    iget-object v1, p0, Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity$1;->this$0:Lcom/wanduoduo/ui/authentication/AuthenticationBeginActivity;

    const-class v2, Lcom/wanduoduo/ui/authentication/AuthenticationPlayVideoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmabeijianxi/camera/MediaRecorderActivity;->goSmallVideoRecorder(Landroid/app/Activity;Ljava/lang/String;Lmabeijianxi/camera/model/MediaRecorderConfig;)V

    .line 34
    return-void
.end method
