.class Lio/rong/imkit/fragment/SubConversationListFragment$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "SubConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/fragment/SubConversationListFragment;
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
.field final synthetic this$0:Lio/rong/imkit/fragment/SubConversationListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/SubConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 88
    const-string v0, "SubConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubConversationListFragment initFragment onError callback, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/SubConversationListFragment$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 9
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
    .local p1, conversations:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation;>;"
    const/4 v8, 0x0

    .line 60
    const-string v5, "SubConversationListFragment"

    const-string v6, "SubConversationListFragment initFragment onSuccess callback"

    invoke-static {v5, v6}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v4, uiConversationList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIConversation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imlib/model/Conversation;

    .line 66
    .local v0, conversation:Lio/rong/imlib/model/Conversation;
    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
    invoke-static {v5}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 67
    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
    invoke-static {v5}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v5

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, pos:I
    if-gez v2, :cond_2

    .line 69
    invoke-static {v0, v8}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v3

    .line 70
    .local v3, uiConversation:Lio/rong/imkit/model/UIConversation;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    .end local v2           #pos:I
    .end local v3           #uiConversation:Lio/rong/imkit/model/UIConversation;
    :cond_3
    invoke-static {v0, v8}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v3

    .line 74
    .restart local v3       #uiConversation:Lio/rong/imkit/model/UIConversation;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    .end local v0           #conversation:Lio/rong/imlib/model/Conversation;
    .end local v3           #uiConversation:Lio/rong/imkit/model/UIConversation;
    :cond_4
    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
    invoke-static {v5}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->addCollection(Ljava/util/Collection;)V

    .line 80
    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;
    invoke-static {v5}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$100(Lio/rong/imkit/fragment/SubConversationListFragment;)Landroid/widget/ListView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;
    invoke-static {v5}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$100(Lio/rong/imkit/fragment/SubConversationListFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 81
    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment$1;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    #getter for: Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
    invoke-static {v5}, Lio/rong/imkit/fragment/SubConversationListFragment;->access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
