.class Lio/rong/imkit/fragment/MessageListFragment$5;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/MessageListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$5;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 346
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 348
    :cond_0
    invoke-static {}, Lio/rong/eventbus/EventBus;->getDefault()Lio/rong/eventbus/EventBus;

    move-result-object v2

    invoke-static {v4}, Lio/rong/imkit/model/Event$InputViewEvent;->obtain(Z)Lio/rong/imkit/model/Event$InputViewEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$5;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$5;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-boolean v2, v2, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreRemoteMessages:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$5;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$5;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$5;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_1

    .line 354
    :try_start_0
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$5;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-virtual {v2}, Lio/rong/imkit/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$bool;->rc_enable_get_remote_history_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 355
    .local v1, enableRemote:Z
    if-eqz v1, :cond_1

    .line 356
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$5;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lio/rong/imkit/fragment/MessageListFragment;->isLoading:Z

    .line 357
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$5;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-virtual {v2}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v1           #enableRemote:Z
    :cond_1
    :goto_0
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$5;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/MessageListFragment;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 366
    return v4

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment$5;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iput-boolean v4, v2, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreRemoteMessages:Z

    .line 361
    const-string v2, "MessageListFragment"

    const-string v3, "get_remote_history_message disabled."

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
