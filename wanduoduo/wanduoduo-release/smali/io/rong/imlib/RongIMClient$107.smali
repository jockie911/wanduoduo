.class Lio/rong/imlib/RongIMClient$107;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->sendMediaMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

.field final synthetic val$message:Lio/rong/imlib/model/Message;

.field final synthetic val$pushContent:Ljava/lang/String;

.field final synthetic val$pushData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7761
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$107;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$107;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$107;->val$message:Lio/rong/imlib/model/Message;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$107;->val$pushContent:Ljava/lang/String;

    iput-object p5, p0, Lio/rong/imlib/RongIMClient$107;->val$pushData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 7764
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$107;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7765
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$107;->val$callback:Lio/rong/imlib/IRongCallback$ISendMediaMessageCallback;

    if-eqz v1, :cond_0

    .line 7766
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$107;->this$0:Lio/rong/imlib/RongIMClient;

    new-instance v2, Lio/rong/imlib/RongIMClient$107$1;

    invoke-direct {v2, p0}, Lio/rong/imlib/RongIMClient$107$1;-><init>(Lio/rong/imlib/RongIMClient$107;)V

    #calls: Lio/rong/imlib/RongIMClient;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v2}, Lio/rong/imlib/RongIMClient;->access$2100(Lio/rong/imlib/RongIMClient;Ljava/lang/Runnable;)V

    .line 7829
    :cond_0
    :goto_0
    return-void

    .line 7776
    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$107;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imlib/RongIMClient$107;->val$message:Lio/rong/imlib/model/Message;

    iget-object v3, p0, Lio/rong/imlib/RongIMClient$107;->val$pushContent:Ljava/lang/String;

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$107;->val$pushData:Ljava/lang/String;

    new-instance v5, Lio/rong/imlib/RongIMClient$107$2;

    invoke-direct {v5, p0}, Lio/rong/imlib/RongIMClient$107$2;-><init>(Lio/rong/imlib/RongIMClient$107;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lio/rong/imlib/IHandler;->sendMediaMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/ISendMediaMessageCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7825
    :catch_0
    move-exception v0

    .line 7826
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
