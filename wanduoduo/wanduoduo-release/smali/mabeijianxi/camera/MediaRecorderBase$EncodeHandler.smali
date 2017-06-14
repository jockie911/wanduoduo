.class public Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;
.super Landroid/os/Handler;
.source "MediaRecorderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmabeijianxi/camera/MediaRecorderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncodeHandler"
.end annotation


# instance fields
.field private mMediaRecorderBase:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmabeijianxi/camera/MediaRecorderBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmabeijianxi/camera/MediaRecorderBase;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 875
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 876
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->mMediaRecorderBase:Ljava/lang/ref/WeakReference;

    .line 877
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    .line 881
    iget-object v3, p0, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->mMediaRecorderBase:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmabeijianxi/camera/MediaRecorderBase;

    .line 882
    .local v1, mrb:Lmabeijianxi/camera/MediaRecorderBase;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lmabeijianxi/camera/MediaRecorderBase;->mOnEncodeListener:Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;

    if-nez v3, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget-object v0, v1, Lmabeijianxi/camera/MediaRecorderBase;->mOnEncodeListener:Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;

    .line 885
    .local v0, listener:Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 887
    :pswitch_0
    invoke-interface {v0}, Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;->onEncodeStart()V

    .line 888
    invoke-virtual {p0, v6}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 892
    :pswitch_1
    const-string v3, ""

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/yixia/videoeditor/adapter/UtilityAdapter;->FilterParserAction(Ljava/lang/String;I)I

    move-result v2

    .line 893
    .local v2, progress:I
    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    .line 894
    invoke-interface {v0, v2}, Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;->onEncodeProgress(I)V

    .line 895
    invoke-virtual {v1}, Lmabeijianxi/camera/MediaRecorderBase;->concatVideoParts()V

    goto :goto_0

    .line 896
    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 897
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 899
    :cond_3
    invoke-interface {v0, v2}, Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;->onEncodeProgress(I)V

    .line 900
    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v6, v4, v5}, Lmabeijianxi/camera/MediaRecorderBase$EncodeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 904
    .end local v2           #progress:I
    :pswitch_2
    invoke-interface {v0}, Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;->onEncodeComplete()V

    goto :goto_0

    .line 907
    :pswitch_3
    invoke-interface {v0}, Lmabeijianxi/camera/MediaRecorderBase$OnEncodeListener;->onEncodeError()V

    goto :goto_0

    .line 885
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
