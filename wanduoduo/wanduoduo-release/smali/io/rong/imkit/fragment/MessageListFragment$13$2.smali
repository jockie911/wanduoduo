.class Lio/rong/imkit/fragment/MessageListFragment$13$2;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment$13;->onSuccess(Lio/rong/imlib/model/Conversation;)V
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
        "Lio/rong/imlib/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/MessageListFragment$13;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment$13;)V
    .locals 0
    .parameter

    .prologue
    .line 1050
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$13$2;->this$1:Lio/rong/imkit/fragment/MessageListFragment$13;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1059
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1050
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/MessageListFragment$13$2;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1053
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Message;>;"
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$13$2;->this$1:Lio/rong/imkit/fragment/MessageListFragment$13;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment$13;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    #setter for: Lio/rong/imkit/fragment/MessageListFragment;->mUnreadMentionMessages:Ljava/util/List;
    invoke-static {v0, p1}, Lio/rong/imkit/fragment/MessageListFragment;->access$202(Lio/rong/imkit/fragment/MessageListFragment;Ljava/util/List;)Ljava/util/List;

    .line 1054
    return-void
.end method
