.class Lio/rong/imlib/RongIMClient$40;
.super Lio/rong/imlib/RongIMClient$SyncCallback;
.source "RongIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imlib/RongIMClient;->getTextMessageDraft(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$SyncCallback",
        "<",
        "Ljava/lang/String;",
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
    .line 2353
    iput-object p1, p0, Lio/rong/imlib/RongIMClient$40;->this$0:Lio/rong/imlib/RongIMClient;

    iput-object p2, p0, Lio/rong/imlib/RongIMClient$40;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iput-object p3, p0, Lio/rong/imlib/RongIMClient$40;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 2363
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$40;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2364
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2353
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imlib/RongIMClient$40;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "txt"

    .prologue
    .line 2356
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$40;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iput-object p1, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    .line 2357
    iget-object v0, p0, Lio/rong/imlib/RongIMClient$40;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2358
    return-void
.end method
