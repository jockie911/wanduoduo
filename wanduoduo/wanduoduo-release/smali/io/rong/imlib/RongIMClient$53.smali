.class Lio/rong/imlib/RongIMClient$53;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$content:Lio/rong/imlib/model/MessageContent;

.field final synthetic val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

.field final synthetic val$senderUserId:Ljava/lang/String;

.field final synthetic val$targetId:Ljava/lang/String;

.field final synthetic val$type:Lio/rong/imlib/model/Conversation$ConversationType;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback;Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2974
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$53;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$53;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$53;->val$targetId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$53;->val$type:Lio/rong/imlib/model/Conversation$ConversationType;

    iput-object p5, p0, Lio/rong/imlib/RongIMClient$53;->val$content:Lio/rong/imlib/model/MessageContent;

    iput-object p6, p0, Lio/rong/imlib/RongIMClient$53;->val$senderUserId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2977
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$53;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2978
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$53;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 2979
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$53;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v4, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 3001
    :cond_0
    :goto_0
    return-void

    .line 2982
    :cond_1
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$53;->val$targetId:Ljava/lang/String;

    iget-object v4, p0, Lio/rong/imlib/RongIMClient$53;->val$type:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v5, p0, Lio/rong/imlib/RongIMClient$53;->val$content:Lio/rong/imlib/model/MessageContent;

    invoke-static {v3, v4, v5}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v1

    .line 2984
    .local v1, message:Lio/rong/imlib/model/Message;
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$53;->val$senderUserId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2985
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$53;->val$senderUserId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    .line 2990
    :goto_1
    :try_start_0
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$53;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mLibHandler:Lio/rong/imlib/IHandler;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$400(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/IHandler;

    move-result-object v3

    invoke-interface {v3, v1}, Lio/rong/imlib/IHandler;->insertMessage(Lio/rong/imlib/model/Message;)Lio/rong/imlib/model/Message;

    move-result-object v2

    .line 2991
    .local v2, result:Lio/rong/imlib/model/Message;
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$53;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 2992
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$53;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    invoke-virtual {v3, v2}, Lio/rong/imlib/RongIMClient$ResultCallback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2994
    .end local v2           #result:Lio/rong/imlib/model/Message;
    :catch_0
    move-exception v0

    .line 2995
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2997
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$53;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    if-eqz v3, :cond_0

    .line 2998
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$53;->val$resultCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    sget-object v4, Lio/rong/imlib/RongIMClient$ErrorCode;->IPC_DISCONNECT:Lio/rong/imlib/RongIMClient$ErrorCode;

    invoke-virtual {v3, v4}, Lio/rong/imlib/RongIMClient$ResultCallback;->onFail(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0

    .line 2987
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v3, p0, Lio/rong/imlib/RongIMClient$53;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->mCurrentUserId:Ljava/lang/String;
    invoke-static {v3}, Lio/rong/imlib/RongIMClient;->access$1800(Lio/rong/imlib/RongIMClient;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/rong/imlib/model/Message;->setSenderUserId(Ljava/lang/String;)V

    goto :goto_1
.end method
