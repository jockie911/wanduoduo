.class Lio/rong/imlib/RongIMClient$74;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->getDeltaTime()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$deltaTime:[J


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;[JLjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4310
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$74;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$74;->val$deltaTime:[J

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$74;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4315
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$74;->val$deltaTime:[J

    const/4 v2, 0x0

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$74;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v3

    invoke-interface {v3}, Lio/rong/imlib/IHandler;->getDeltaTime()J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 4316
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$74;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4320
    :goto_0
    return-void

    .line 4317
    :catch_0
    move-exception v0

    .line 4318
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
