.class Lio/rong/imlib/RongIMClient$98$11;
.super Ljava/lang/Object;
.source "RongIMClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient$98;->onReceived(Lio/rong/imlib/model/Message;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imlib/RongIMClient$98;

.field final synthetic val$csChangeModeResponseMessage:Lio/rong/message/CSChangeModeResponseMessage;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$98;Lio/rong/message/CSChangeModeResponseMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5731
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$98$11;->this$1:Lio/rong/imlib/RongIMClient$98;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$98$11;->val$csChangeModeResponseMessage:Lio/rong/message/CSChangeModeResponseMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5734
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$98$11;->val$csChangeModeResponseMessage:Lio/rong/message/CSChangeModeResponseMessage;

    invoke-virtual {v1}, Lio/rong/message/CSChangeModeResponseMessage;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    .line 5735
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$98$11;->this$1:Lio/rong/imlib/RongIMClient$98;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5736
    iget-object v1, p0, Lio/rong/imlib/RongIMClient$98$11;->this$1:Lio/rong/imlib/RongIMClient$98;

    iget-object v1, v1, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v1}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lio/rong/imlib/ICustomServiceListener;->onError(ILjava/lang/String;)V

    .line 5738
    :cond_0
    return-void
.end method
