.class Lio/rong/imkit/fragment/ConversationListFragment$18;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationListFragment;->refreshUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationListFragment;

.field final synthetic val$targetId:Ljava/lang/String;

.field final synthetic val$type:Lio/rong/imlib/model/Conversation$ConversationType;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationListFragment;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1452
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationListFragment$18;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    iput-object p2, p0, Lio/rong/imkit/fragment/ConversationListFragment$18;->val$type:Lio/rong/imlib/model/Conversation$ConversationType;

    iput-object p3, p0, Lio/rong/imkit/fragment/ConversationListFragment$18;->val$targetId:Ljava/lang/String;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 1464
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Throw exception when get unread message count from ipc remote side!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1465
    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;)V
    .locals 4
    .parameter "count"

    .prologue
    .line 1455
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$18;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v1}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment$18;->val$type:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$18;->val$targetId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 1456
    .local v0, curPos:I
    if-ltz v0, :cond_0

    .line 1457
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$18;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v1}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 1458
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationListFragment$18;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v1}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationListFragment$18;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lio/rong/imkit/fragment/ConversationListFragment;->access$300(Lio/rong/imkit/fragment/ConversationListFragment;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$18;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$300(Lio/rong/imkit/fragment/ConversationListFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$18;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mList:Landroid/widget/ListView;
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$300(Lio/rong/imkit/fragment/ConversationListFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 1460
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1452
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$18;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
