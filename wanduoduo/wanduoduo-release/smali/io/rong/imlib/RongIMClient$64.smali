.class Lio/rong/imlib/RongIMClient$64;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$UploadMediaCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$UploadMediaCallback;Lio/rong/imlib/model/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3720
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$64;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$64;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$64;->val$message:Lio/rong/imlib/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3723
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$64;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3724
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$64;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    if-eqz v1, :cond_0

    .line 3725
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$64;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    sget-object v2, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3762
    :cond_0
    :goto_0
    return-void

    .line 3729
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$64;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$64;->val$message:Lio/rong/imlib/model/Message;

    new-instance v3, Lio/rong/imlib/RongIMClient$64$1;

    invoke-direct {v3, p0}, Lio/rong/imlib/RongIMClient$64$1;-><init>(Lio/rong/imlib/RongIMClient$64;)V

    invoke-interface {v1, v2, v3}, Lio/rong/imlib/IHandler;->uploadMedia(Lio/rong/imlib/model/Message;Lio/rong/imlib/IUploadCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3757
    :catch_0
    move-exception v0

    .line 3758
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3759
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$64;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    if-eqz v1, :cond_0

    .line 3760
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$64;->val$callback:Lio/rong/imlib/RongIMClient$UploadMediaCallback;

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$64;->val$message:Lio/rong/imlib/model/Message;

    sget-object v3, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v1, v2, v3}, Lio/rong/imlib/RongIMClient$UploadMediaCallback;->onFail(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method
