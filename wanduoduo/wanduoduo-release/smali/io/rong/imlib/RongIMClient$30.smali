.class Lio/rong/imlib/RongIMClient$30;
.super Lio/rong/imlib/RongIMClient$SyncCallback;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->clearMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$SyncCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imlib/RongIMClient;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;


# direct methods
.method constructor <init>(Lio/rong/imlib/RongIMClient;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1935
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$30;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$30;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$30;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 1951
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$30;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1952
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "bool"

    .prologue
    .line 1939
    if-eqz p1, :cond_0

    .line 1940
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$30;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iput-object p1, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 1945
    :goto_0
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$30;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1946
    return-void

    .line 1942
    :cond_0
    const-string v0, "RongIMClient"

    const-string v1, "clearMessage clearMessages is failure!"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1935
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imlib/RongIMClient$30;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
