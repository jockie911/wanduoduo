.class Lio/rong/imkit/RongIM$21;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "RongIM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/RongIM;->removeMemberFromDiscussion(Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/RongIM;

.field final synthetic val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

.field final synthetic val$discussionId:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/rong/imkit/RongIM;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$OperationCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2284
    iput-object p1, p0, Lio/rong/imkit/RongIM$21;->this$0:Lio/rong/imkit/RongIM;

    iput-object p2, p0, Lio/rong/imkit/RongIM$21;->val$discussionId:Ljava/lang/String;

    iput-object p3, p0, Lio/rong/imkit/RongIM$21;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imkit/RongIM$21;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 2295
    iget-object v0, p0, Lio/rong/imkit/RongIM$21;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Lio/rong/imkit/RongIM$21;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-virtual {v0, p1}, Lio/rong/imlib/RongIMClient$OperationCallback;->onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V

    .line 2297
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 2287
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/model/Event$RemoveMemberFromDiscussionEvent;

    iget-object v2, p0, Lio/rong/imkit/RongIM$21;->val$discussionId:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imkit/RongIM$21;->val$userId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lio/rong/imkit/model/Event$RemoveMemberFromDiscussionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2289
    iget-object v0, p0, Lio/rong/imkit/RongIM$21;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    if-eqz v0, :cond_0

    .line 2290
    iget-object v0, p0, Lio/rong/imkit/RongIM$21;->val$callback:Lio/rong/imlib/RongIMClient$OperationCallback;

    invoke-virtual {v0}, Lio/rong/imlib/RongIMClient$OperationCallback;->onSuccess()V

    .line 2291
    :cond_0
    return-void
.end method