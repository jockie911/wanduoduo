.class Lio/rong/imkit/fragment/ConversationAddMemberFragment$2;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "ConversationAddMemberFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationAddMemberFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Discussion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationAddMemberFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 114
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    invoke-virtual {v0}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method

.method public onSuccess(Lio/rong/imlib/model/Discussion;)V
    .locals 3
    .parameter "discussion"

    .prologue
    .line 104
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getMemberIdList()Ljava/util/List;

    move-result-object v2

    #setter for: Lio/rong/imkit/fragment/ConversationAddMemberFragment;->mIdList:Ljava/util/List;
    invoke-static {v1, v2}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->access$202(Lio/rong/imkit/fragment/ConversationAddMemberFragment;Ljava/util/List;)Ljava/util/List;

    .line 105
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationAddMemberFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;
    invoke-static {v1}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->access$000(Lio/rong/imkit/fragment/ConversationAddMemberFragment;)Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getCreatorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;->setCreatorId(Ljava/lang/String;)V

    .line 106
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 107
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 108
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationAddMemberFragment;->mIdList:Ljava/util/List;
    invoke-static {v1}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->access$200(Lio/rong/imkit/fragment/ConversationAddMemberFragment;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$2;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    check-cast p1, Lio/rong/imlib/model/Discussion;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/ConversationAddMemberFragment$2;->onSuccess(Lio/rong/imlib/model/Discussion;)V

    return-void
.end method
