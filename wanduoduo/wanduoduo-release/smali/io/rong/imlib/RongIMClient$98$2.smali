.class Lio/rong/imlib/RongIMClient$98$2;
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

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$strFail:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient$98;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5574
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$98$2;->this$1:Lio/rong/imlib/RongIMClient$98;

    iput p2, p0, Lio/rong/imlib/RongIMClient$98$2;->val$code:I

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$98$2;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imlib/RongIMClient$98$2;->val$strFail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5577
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$98$2;->this$1:Lio/rong/imlib/RongIMClient$98;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5578
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$98$2;->this$1:Lio/rong/imlib/RongIMClient$98;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    #getter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v0}, Lio/rong/imlib/RongIMClient;->access$3100(Lio/rong/imlib/RongIMClient;)Lio/rong/imlib/ICustomServiceListener;

    move-result-object v1

    iget v2, p0, Lio/rong/imlib/RongIMClient$98$2;->val$code:I

    iget-object v0, p0, Lio/rong/imlib/RongIMClient$98$2;->val$msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/rong/imlib/RongIMClient$98$2;->val$strFail:Ljava/lang/String;

    :goto_0
    invoke-interface {v1, v2, v0}, Lio/rong/imlib/ICustomServiceListener;->onError(ILjava/lang/String;)V

    .line 5579
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$98$2;->this$1:Lio/rong/imlib/RongIMClient$98;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$98;->this$0:Lio/rong/imlib/RongIMClient;

    const/4 v1, 0x0

    #setter for: Lio/rong/imlib/RongIMClient;->customServiceListener:Lio/rong/imlib/ICustomServiceListener;
    invoke-static {v0, v1}, Lio/rong/imlib/RongIMClient;->access$3102(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/ICustomServiceListener;)Lio/rong/imlib/ICustomServiceListener;

    .line 5581
    :cond_0
    return-void

    .line 5578
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$98$2;->val$msg:Ljava/lang/String;

    goto :goto_0
.end method
