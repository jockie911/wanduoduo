.class Lio/rong/imlib/NativeClient$30;
.super Ljava/lang/Object;
.source "NativeClient.java"

# interfaces
.implements Lio/rong/imlib/NativeObject$PublishAckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/NativeClient;->joinChatRoom(Ljava/lang/String;ILio/rong/imlib/NativeClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/NativeClient;

.field final synthetic val$callback:Lio/rong/imlib/NativeClient$OperationCallback;


# direct methods
.method constructor <init>(Lio/rong/imlib/NativeClient;Lio/rong/imlib/NativeClient$OperationCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2321
    iput-object p1, p0, Lio/rong/imlib/NativeClient$30;->this$0:Lio/rong/imlib/NativeClient;

    iput-object p2, p0, Lio/rong/imlib/NativeClient$30;->val$callback:Lio/rong/imlib/NativeClient$OperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(ILjava/lang/String;J)V
    .locals 1
    .parameter "code"
    .parameter "msgUId"
    .parameter "timestamp"

    .prologue
    .line 2324
    if-nez p1, :cond_1

    .line 2325
    iget-object v0, p0, Lio/rong/imlib/NativeClient$30;->this$0:Lio/rong/imlib/NativeClient;

    #calls: Lio/rong/imlib/NativeClient;->startCRHeartBeatIfNeed()V
    invoke-static {v0}, Lio/rong/imlib/NativeClient;->access$1000(Lio/rong/imlib/NativeClient;)V

    .line 2326
    iget-object v0, p0, Lio/rong/imlib/NativeClient$30;->val$callback:Lio/rong/imlib/NativeClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 2327
    iget-object v0, p0, Lio/rong/imlib/NativeClient$30;->val$callback:Lio/rong/imlib/NativeClient$OperationCallback;

    invoke-interface {v0}, Lio/rong/imlib/NativeClient$OperationCallback;->onSuccess()V

    .line 2332
    :cond_0
    :goto_0
    return-void

    .line 2329
    :cond_1
    iget-object v0, p0, Lio/rong/imlib/NativeClient$30;->val$callback:Lio/rong/imlib/NativeClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 2330
    iget-object v0, p0, Lio/rong/imlib/NativeClient$30;->val$callback:Lio/rong/imlib/NativeClient$OperationCallback;

    invoke-interface {v0, p1}, Lio/rong/imlib/NativeClient$OperationCallback;->onError(I)V

    goto :goto_0
.end method
