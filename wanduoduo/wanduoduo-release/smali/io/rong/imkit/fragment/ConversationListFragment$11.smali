.class Lio/rong/imkit/fragment/ConversationListFragment$11;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationListFragment;->onEventMainThread(Lio/rong/imkit/model/Event$MessageDeleteEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lio/rong/imlib/model/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1018
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationListFragment$11;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1036
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1018
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/ConversationListFragment$11;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1021
    .local p1, conversationList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$11;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #calls: Lio/rong/imkit/fragment/ConversationListFragment;->makeUIConversationFromList(Ljava/util/List;)Lio/rong/imkit/model/UIConversation;
    invoke-static {v3, p1}, Lio/rong/imkit/fragment/ConversationListFragment;->access$800(Lio/rong/imkit/fragment/ConversationListFragment;Ljava/util/List;)Lio/rong/imkit/model/UIConversation;

    move-result-object v2

    .line 1024
    .local v2, uiConversation:Lio/rong/imkit/model/UIConversation;
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$11;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v1

    .line 1025
    .local v1, oldPos:I
    if-ltz v1, :cond_2

    .line 1026
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$11;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->remove(I)V

    .line 1028
    :cond_2
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$11;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/imkit/utils/ConversationListUtils;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/BaseAdapter;)I

    move-result v0

    .line 1029
    .local v0, newIndex:I
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$11;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 1030
    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationListFragment$11;->this$0:Lio/rong/imkit/fragment/ConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/ConversationListAdapter;
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationListFragment;->access$100(Lio/rong/imkit/fragment/ConversationListFragment;)Lio/rong/imkit/widget/adapter/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
