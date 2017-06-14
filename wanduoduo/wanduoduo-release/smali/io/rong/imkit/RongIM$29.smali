.class Lio/rong/imkit/RongIM$29;
.super Lio/rong/imlib/RongIMClient$SendMessageCallback;
.source "RongIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIM;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIM;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

.field final synthetic val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIM;Lio/rong/imlib/RongIMClient$ResultCallback$Result;Lio/rong/imlib/RongIMClient$SendMessageCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2658
    iput-object p1, p0, Lio/rong/imkit/RongIM$29;->this$0:Lio/rong/imkit/RongIM;

    iput-object p2, p0, Lio/rong/imkit/RongIM$29;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iput-object p3, p0, Lio/rong/imkit/RongIM$29;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$SendMessageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .parameter "messageId"
    .parameter "errorCode"

    .prologue
    .line 2676
    iget-object v0, p0, Lio/rong/imkit/RongIM$29;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2685
    :cond_0
    :goto_0
    return-void

    .line 2678
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/RongIM$29;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Message;

    sget-object v1, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 2679
    iget-object v1, p0, Lio/rong/imkit/RongIM$29;->this$0:Lio/rong/imkit/RongIM;

    iget-object v0, p0, Lio/rong/imkit/RongIM$29;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v0, v0, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v0, Lio/rong/imlib/model/Message;

    #calls: Lio/rong/imkit/RongIM;->filterSentMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    invoke-static {v1, v0, p2}, Lio/rong/imkit/RongIM;->access$600(Lio/rong/imkit/RongIM;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2683
    iget-object v0, p0, Lio/rong/imkit/RongIM$29;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    if-eqz v0, :cond_0

    .line 2684
    iget-object v0, p0, Lio/rong/imkit/RongIM$29;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    invoke-virtual {v0, p1, p2}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onError(Ljava/lang/Integer;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 5
    .parameter "messageId"

    .prologue
    .line 2661
    iget-object v2, p0, Lio/rong/imkit/RongIM$29;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 2672
    :cond_0
    :goto_0
    return-void

    .line 2663
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/RongIM$29;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v2, Lio/rong/imlib/model/Message;

    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 2664
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient;->getSendTimeByMessageId(I)J

    move-result-wide v0

    .line 2665
    .local v0, tt:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 2666
    iget-object v2, p0, Lio/rong/imkit/RongIM$29;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v2, Lio/rong/imlib/model/Message;

    invoke-virtual {v2, v0, v1}, Lio/rong/imlib/model/Message;->setSentTime(J)V

    .line 2668
    :cond_2
    iget-object v3, p0, Lio/rong/imkit/RongIM$29;->this$0:Lio/rong/imkit/RongIM;

    iget-object v2, p0, Lio/rong/imkit/RongIM$29;->val$result:Lio/rong/imlib/RongIMClient$ResultCallback$Result;

    iget-object v2, v2, Lio/rong/imlib/RongIMClient$ResultCallback$Result;->t:Ljava/lang/Object;

    check-cast v2, Lio/rong/imlib/model/Message;

    const/4 v4, 0x0

    #calls: Lio/rong/imkit/RongIM;->filterSentMessage(Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V
    invoke-static {v3, v2, v4}, Lio/rong/imkit/RongIM;->access$600(Lio/rong/imkit/RongIM;Lio/rong/imlib/model/Message;Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2670
    iget-object v2, p0, Lio/rong/imkit/RongIM$29;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    if-eqz v2, :cond_0

    .line 2671
    iget-object v2, p0, Lio/rong/imkit/RongIM$29;->val$callback:Lio/rong/imlib/RongIMClient$SendMessageCallback;

    invoke-virtual {v2, p1}, Lio/rong/imlib/RongIMClient$SendMessageCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2658
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/RongIM$29;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
