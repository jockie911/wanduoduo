.class Lio/rong/imlib/RongIMClient$98$17;
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

.field final synthetic val$csPullEvaluateMessage:Lio/rong/message/CSPullEvaluateMessage;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$98;Lio/rong/message/CSPullEvaluateMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5817
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$98$17;->this$1:Lio/rong/imlib/RongIMClient$98;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$98$17;->val$csPullEvaluateMessage:Lio/rong/message/CSPullEvaluateMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5820
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$98$17;->this$1:Lio/rong/imlib/RongIMClient$98;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5821
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$98$17;->this$1:Lio/rong/imlib/RongIMClient$98;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imlib/RongIMClient$98$17;->val$csPullEvaluateMessage:Lio/rong/message/CSPullEvaluateMessage;

    invoke-virtual {v1}, Lio/rong/message/CSPullEvaluateMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imlib/ICustomServiceListener;->onPullEvaluation(Ljava/lang/String;)V

    .line 5822
    :cond_0
    return-void
.end method
