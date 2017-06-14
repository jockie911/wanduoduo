.class Lio/rong/imlib/RongIMClient$66;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->downloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3850
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$66;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$66;->val$callback:Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$66;->val$message:Lio/rong/imlib/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3854
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$66;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3855
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$66;->val$callback:Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;

    if-eqz v1, :cond_0

    .line 3856
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$66;->val$callback:Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$66;->val$message:Lio/rong/imlib/model/Message;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-interface {v1, v2, v3}, Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;->onError(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3920
    :cond_0
    :goto_0
    return-void

    .line 3860
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$66;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$66;->val$message:Lio/rong/imlib/model/Message;

    new-instance v3, Lio/rong/imlib/RongIMClient$66$1;

    invoke-direct {v3, p0}, Lio/rong/imlib/RongIMClient$66$1;-><init>(Lio/rong/imlib/RongIMClient$66;)V

    invoke-interface {v1, v2, v3}, Lio/rong/imlib/IHandler;->downloadMediaMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/IDownloadMediaMessageCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3910
    :catch_0
    move-exception v0

    .line 3911
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3912
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$66;->val$callback:Lio/rong/imlib/IRongCallback$IDownloadMediaMessageCallback;

    if-eqz v1, :cond_0

    .line 3913
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$66;->this$0:Lio/rong/imlib/RongIMClient;

    new-instance v2, Lio/rong/imlib/RongIMClient$66$2;

    invoke-direct {v2, p0}, Lio/rong/imlib/RongIMClient$66$2;-><init>(Lio/rong/imlib/RongIMClient$66;)V

    #calls: Lio/rong/imlib/RongIMClient;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v2}, Lio/rong/imlib/RongIMClient;->access$2100(Lio/rong/imlib/RongIMClient;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
