.class Lio/rong/imkit/fragment/ConversationAddMemberFragment$1;
.super Ljava/lang/Object;
.source "ConversationAddMemberFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationAddMemberFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationAddMemberFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v3, v5, :cond_1

    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationAddMemberFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;
    invoke-static {v5}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->access$000(Lio/rong/imkit/fragment/ConversationAddMemberFragment;)Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;->isDeleteState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    new-instance v0, Lio/rong/imlib/model/UserInfo;

    const-string v5, "RongAddBtn"

    invoke-direct {v0, v5, v7, v7}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    .local v0, addBtn:Lio/rong/imlib/model/UserInfo;
    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationAddMemberFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;
    invoke-static {v5}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->access$000(Lio/rong/imkit/fragment/ConversationAddMemberFragment;)Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;->add(Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, curUserId:Ljava/lang/String;
    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationAddMemberFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;
    invoke-static {v5}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->access$000(Lio/rong/imkit/fragment/ConversationAddMemberFragment;)Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;->getCreatorId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationAddMemberFragment;->mConversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-static {v5}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->access$100(Lio/rong/imkit/fragment/ConversationAddMemberFragment;)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v5, v6}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationAddMemberFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;
    invoke-static {v5}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->access$000(Lio/rong/imkit/fragment/ConversationAddMemberFragment;)Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;->getCreatorId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    new-instance v2, Lio/rong/imlib/model/UserInfo;

    const-string v5, "RongDelBtn"

    invoke-direct {v2, v5, v7, v7}, Lio/rong/imlib/model/UserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .local v2, deleteBtn:Lio/rong/imlib/model/UserInfo;
    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationAddMemberFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;
    invoke-static {v5}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->access$000(Lio/rong/imkit/fragment/ConversationAddMemberFragment;)Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;->add(Ljava/lang/Object;)V

    .line 90
    .end local v2           #deleteBtn:Lio/rong/imlib/model/UserInfo;
    :cond_0
    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationAddMemberFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;
    invoke-static {v5}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->access$000(Lio/rong/imkit/fragment/ConversationAddMemberFragment;)Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;->setDeleteState(Z)V

    .line 91
    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$1;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationAddMemberFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;
    invoke-static {v4}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->access$000(Lio/rong/imkit/fragment/ConversationAddMemberFragment;)Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/ConversationAddMemberAdapter;->notifyDataSetChanged()V

    .line 94
    .end local v0           #addBtn:Lio/rong/imlib/model/UserInfo;
    .end local v1           #curUserId:Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method
