.class public Lio/rong/imkit/fragment/MessageListFragment;
.super Lio/rong/imkit/fragment/UriFragment;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/fragment/MessageListFragment$Builder;,
        Lio/rong/imkit/fragment/MessageListFragment$ScrollRunnable;
    }
.end annotation


# static fields
.field static final DELETE_MESSAGE:I = 0xb

.field private static final LISTVIEW_SHOW_COUNT:I = 0x5

.field static final NOTIFY_LIST:I = 0x9

.field static final REFRESH_ITEM:I = 0x4

.field static final REFRESH_ITEM_READ_RECEIPT:I = 0x7

.field static final REFRESH_LIST_WHILE_RECEIVE_MESSAGE:I = 0x3

.field static final RENDER_HISTORY:I = 0x6

.field static final RENDER_LIST:I = 0x2

.field static final REQ_HISTORY:I = 0x5

.field static final REQ_LIST:I = 0x1

.field static final REQ_REMOTE_HISTORY:I = 0x8

.field static final REQ_UNREAD:I = 0xc

.field static final RESET_LIST_STACK:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MessageListFragment"


# instance fields
.field isLoading:Z

.field private isOnClickBtn:Z

.field isShowNewMessageState:Z

.field isShowUnreadMessageState:Z

.field private isShowWithoutConnected:Z

.field mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

.field mConversation:Lio/rong/imlib/model/Conversation;

.field mGestureDetector:Landroid/view/GestureDetector;

.field mHasMoreLocalMessages:Z

.field mHasMoreRemoteMessages:Z

.field private mHasReceivedMessage:Z

.field mHeaderView:Landroid/view/View;

.field mLastRemoteMessageTime:J

.field mLastVisiblePosition:I

.field mList:Landroid/widget/ListView;

.field mMessageleft:I

.field mNewMessageBtn:Landroid/widget/ImageButton;

.field mNewMessageCount:I

.field mNewMessageTextView:Landroid/widget/TextView;

.field mUnreadBtn:Landroid/widget/Button;

.field mUnreadCount:I

.field private mUnreadMentionMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/rong/imlib/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field needEvaluateForRobot:Z

.field onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field robotMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lio/rong/imkit/fragment/UriFragment;-><init>()V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mMessageleft:I

    .line 88
    iput-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->needEvaluateForRobot:Z

    .line 90
    iput-boolean v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->robotMode:Z

    .line 108
    iput-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowWithoutConnected:Z

    .line 286
    iput-boolean v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreLocalMessages:Z

    .line 287
    iput-boolean v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreRemoteMessages:Z

    .line 288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mLastRemoteMessageTime:J

    .line 289
    iput-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->isLoading:Z

    .line 1234
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/fragment/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->isOnClickBtn:Z

    return v0
.end method

.method static synthetic access$002(Lio/rong/imkit/fragment/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lio/rong/imkit/fragment/MessageListFragment;->isOnClickBtn:Z

    return p1
.end method

.method static synthetic access$102(Lio/rong/imkit/fragment/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHasReceivedMessage:Z

    return p1
.end method

.method static synthetic access$202(Lio/rong/imkit/fragment/MessageListFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadMentionMessages:Ljava/util/List;

    return-object p1
.end method

.method private filterMessage(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/UIMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lio/rong/imkit/model/UIMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, srcList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    const/4 v0, 0x0

    .line 391
    .local v0, destList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #destList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .restart local v0       #destList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 394
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIMessage;

    .line 395
    .local v3, msg:Lio/rong/imkit/model/UIMessage;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 398
    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v5

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v4

    if-eq v5, v4, :cond_0

    .line 399
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 393
    .end local v3           #msg:Lio/rong/imkit/model/UIMessage;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    move-object v0, p1

    .line 406
    :cond_3
    return-object v0
.end method

.method private getConversation()V
    .locals 4

    .prologue
    .line 965
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/MessageListFragment$13;

    invoke-direct {v3, p0}, Lio/rong/imkit/fragment/MessageListFragment$13;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/RongIM;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1075
    return-void
.end method

.method private refreshListWhileReceiveMessage(Lio/rong/imkit/model/UIMessage;)V
    .locals 6
    .parameter "model"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 725
    invoke-virtual {p1, v4}, Lio/rong/imkit/model/UIMessage;->setIsHistoryMessage(Z)V

    .line 726
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-boolean v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->needEvaluateForRobot:Z

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->setEvaluateForRobot(Z)V

    .line 727
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-boolean v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->robotMode:Z

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->setRobotMode(Z)V

    .line 728
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2, p1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->add(Ljava/lang/Object;)V

    .line 731
    iget-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowNewMessageState:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    sget-object v2, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v3

    if-eq v2, v3, :cond_1

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/SystemUtils;->isAppRunningOnTop(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 735
    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_1

    .line 740
    iget v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    .line 741
    iget v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    if-lez v2, :cond_0

    .line 742
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 743
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 745
    :cond_0
    iget v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    const/16 v3, 0x63

    if-le v2, v3, :cond_4

    .line 746
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    const-string v3, "99+"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    :cond_1
    :goto_0
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 754
    .local v1, last:I
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 755
    .local v0, count:I
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_5

    .line 756
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 761
    :cond_2
    :goto_1
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 762
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_3

    .line 763
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 764
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 766
    :cond_3
    return-void

    .line 748
    .end local v0           #count:I
    .end local v1           #last:I
    :cond_4
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 757
    .restart local v0       #count:I
    .restart local v1       #last:I
    :cond_5
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 758
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    goto :goto_1
.end method

.method private resetListViewStack()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 680
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 681
    .local v1, count:I
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 682
    .local v2, firstView:Landroid/view/View;
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 684
    .local v3, lastView:Landroid/view/View;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 685
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v6

    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v8

    add-int v5, v6, v8

    .line 686
    .local v5, listViewPadding:I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    move v6, v7

    :goto_0
    sub-int v0, v8, v6

    .line 687
    .local v0, childViewsHeight:I
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getBottom()I

    move-result v6

    sub-int v4, v6, v5

    .line 689
    .local v4, listViewHeight:I
    if-ge v0, v4, :cond_2

    .line 690
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 691
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 696
    .end local v0           #childViewsHeight:I
    .end local v4           #listViewHeight:I
    .end local v5           #listViewPadding:I
    :cond_0
    :goto_1
    return-void

    .line 686
    .restart local v5       #listViewPadding:I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_0

    .line 693
    .restart local v0       #childViewsHeight:I
    .restart local v4       #listViewHeight:I
    :cond_2
    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setTranscriptMode(I)V

    goto :goto_1
.end method


# virtual methods
.method public getAdapter()Lio/rong/imkit/widget/adapter/MessageListAdapter;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 21
    .parameter "msg"

    .prologue
    .line 411
    const-string v2, "MessageListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessageListFragment msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 675
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    return v2

    .line 414
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 415
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    .line 416
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->clear()V

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lio/rong/imkit/fragment/MessageListFragment;->filterMessage(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->addCollection(Ljava/util/Collection;)V

    .line 419
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_3

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 426
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 431
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadMentionMessages:Ljava/util/List;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadMentionMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadMentionMessages:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imlib/model/Message;

    invoke-static {v2}, Lio/rong/imkit/model/UIMessage;->obtain(Lio/rong/imlib/model/Message;)Lio/rong/imkit/model/UIMessage;

    move-result-object v20

    .line 433
    .local v20, uiMessage:Lio/rong/imkit/model/UIMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findPosition(Ljava/lang/Object;)I

    move-result v18

    .line 434
    .local v18, position:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 438
    .end local v18           #position:I
    .end local v20           #uiMessage:Lio/rong/imkit/model/UIMessage;
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 439
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x4396

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v10, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 440
    .local v10, animation:Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 441
    .local v11, animation1:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 442
    const-wide/16 v2, 0x7d0

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 443
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 444
    .local v19, set:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 445
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 448
    new-instance v2, Lio/rong/imkit/fragment/MessageListFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lio/rong/imkit/fragment/MessageListFragment$7;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 423
    .end local v10           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v11           #animation1:Landroid/view/animation/AlphaAnimation;
    .end local v19           #set:Landroid/view/animation/AnimationSet;
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    goto/16 :goto_1

    .line 480
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 481
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    .line 483
    .restart local v15       #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lio/rong/imkit/model/UIMessage;

    .line 484
    .local v14, item:Lio/rong/imkit/model/UIMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->add(Ljava/lang/Object;I)V

    goto :goto_2

    .line 487
    .end local v14           #item:Lio/rong/imkit/model/UIMessage;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v13

    .line 491
    .local v13, index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 493
    if-nez v13, :cond_0

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 499
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #index:I
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/UIMessage;>;"
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->clear()V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 501
    invoke-static {}, Lio/rong/imkit/model/EmojiMessageAdapter;->getInstance()Lio/rong/imkit/model/EmojiMessageAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1e

    new-instance v6, Lio/rong/imkit/fragment/MessageListFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lio/rong/imkit/fragment/MessageListFragment$8;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/rong/imkit/model/EmojiMessageAdapter;->getLatestMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;ILio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_0

    .line 522
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lio/rong/imkit/fragment/MessageListFragment;->resetListViewStack()V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 526
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 528
    .restart local v18       #position:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    move/from16 v0, v18

    if-gt v0, v2, :cond_0

    .line 529
    const-string v2, "MessageListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REFRESH_ITEM Index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v18, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 536
    .end local v18           #position:I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 538
    .local v17, pos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    move/from16 v0, v17

    if-gt v0, v2, :cond_0

    .line 539
    const-string v2, "MessageListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REFRESH_ITEM Index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v17, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3, v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 544
    .end local v17           #pos:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/rong/imkit/model/UIMessage;

    .line 545
    .local v16, message:Lio/rong/imkit/model/UIMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 546
    invoke-static {}, Lio/rong/imkit/model/EmojiMessageAdapter;->getInstance()Lio/rong/imkit/model/EmojiMessageAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v5

    const/16 v6, 0x1e

    new-instance v7, Lio/rong/imkit/fragment/MessageListFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lio/rong/imkit/fragment/MessageListFragment$9;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual/range {v2 .. v7}, Lio/rong/imkit/model/EmojiMessageAdapter;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_0

    .line 566
    .end local v16           #message:Lio/rong/imkit/model/UIMessage;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 567
    invoke-static {}, Lio/rong/imkit/model/EmojiMessageAdapter;->getInstance()Lio/rong/imkit/model/EmojiMessageAdapter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lio/rong/imkit/fragment/MessageListFragment;->mLastRemoteMessageTime:J

    const/16 v8, 0xa

    new-instance v9, Lio/rong/imkit/fragment/MessageListFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lio/rong/imkit/fragment/MessageListFragment$10;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual/range {v3 .. v9}, Lio/rong/imkit/model/EmojiMessageAdapter;->getRemoteHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;JILio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_0

    .line 611
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lio/rong/imkit/model/UIMessage;

    .line 613
    .restart local v16       #message:Lio/rong/imkit/model/UIMessage;
    invoke-static {}, Lio/rong/imkit/model/EmojiMessageAdapter;->getInstance()Lio/rong/imkit/model/EmojiMessageAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadCount:I

    add-int/lit8 v6, v6, -0x1d

    new-instance v7, Lio/rong/imkit/fragment/MessageListFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lio/rong/imkit/fragment/MessageListFragment$11;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual/range {v2 .. v7}, Lio/rong/imkit/model/EmojiMessageAdapter;->getHistoryMessages(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;IILio/rong/imlib/RongIMClient$ResultCallback;)V

    goto/16 :goto_0

    .line 642
    .end local v16           #message:Lio/rong/imkit/model/UIMessage;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    if-eqz v2, :cond_0

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 646
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 647
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/MessageListFragment$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lio/rong/imkit/fragment/MessageListFragment$12;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_4
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method protected initFragment(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 158
    const-string v4, "MessageListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initFragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, typeStr:Ljava/lang/String;
    invoke-static {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->valueOf(Ljava/lang/String;)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    .line 162
    .local v2, type:Lio/rong/imlib/model/Conversation$ConversationType;
    const-string v4, "targetId"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, targetId:Ljava/lang/String;
    const-string v4, "title"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-static {v2, v0, v1}, Lio/rong/imlib/model/Conversation;->obtain(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v4

    iput-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    .line 170
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    if-eqz v4, :cond_2

    .line 171
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lio/rong/imkit/fragment/MessageListFragment$2;

    invoke-direct {v5, p0}, Lio/rong/imkit/fragment/MessageListFragment$2;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_2
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageBtn:Landroid/widget/ImageButton;

    new-instance v5, Lio/rong/imkit/fragment/MessageListFragment$3;

    invoke-direct {v5, p0}, Lio/rong/imkit/fragment/MessageListFragment$3;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongIM;->getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v4, v5}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 199
    const-string v4, "MessageListFragment"

    const-string v5, "initFragment Not connected yet."

    invoke-static {v4, v5}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v4, 0x1

    iput-boolean v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowWithoutConnected:Z

    goto :goto_0

    .line 203
    :cond_3
    invoke-direct {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getConversation()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 114
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/UriFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 117
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getUnreadMessageState()Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowUnreadMessageState:Z

    .line 118
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getNewMessageState()Z

    move-result v0

    iput-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowNewMessageState:Z

    .line 120
    invoke-static {}, Lio/rong/imkit/model/EmojiMessageAdapter;->getInstance()Lio/rong/imkit/model/EmojiMessageAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-static {v0}, Lio/rong/imkit/model/EmojiMessageAdapter;->init(Landroid/content/Context;)V

    .line 123
    :cond_0
    new-instance v0, Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    .line 124
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lio/rong/imkit/fragment/MessageListFragment$1;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/MessageListFragment$1;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mGestureDetector:Landroid/view/GestureDetector;

    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 208
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_messagelist:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, view:Landroid/view/View;
    sget v1, Lio/rong/imkit/R$id;->rc_unread_message_count:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    .line 210
    sget v1, Lio/rong/imkit/R$id;->rc_new_message_count:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageBtn:Landroid/widget/ImageButton;

    .line 211
    sget v1, Lio/rong/imkit/R$id;->rc_new_message_number:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    .line 212
    sget v1, Lio/rong/imkit/R$id;->rc_list:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    .line 213
    sget v1, Lio/rong/imkit/R$layout;->rc_item_progress:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    .line 214
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 215
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 216
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 218
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    new-instance v2, Lio/rong/imkit/fragment/MessageListFragment$4;

    invoke-direct {v2, p0}, Lio/rong/imkit/fragment/MessageListFragment$4;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->setOnItemHandlerListener(Lio/rong/imkit/widget/adapter/MessageListAdapter$OnItemHandlerListener;)V

    .line 282
    return-object v0
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    .line 1259
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lio/rong/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 1260
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_0

    .line 1261
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lio/rong/imkit/RongIM;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1265
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    if-eqz v2, :cond_4

    .line 1266
    const/4 v1, 0x0

    .line 1268
    .local v1, readRec:Z
    :try_start_0
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1273
    :goto_0
    if-eqz v1, :cond_3

    .line 1274
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->isReadReceiptConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v2, v3, :cond_3

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->isReadReceiptConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1276
    :cond_2
    iget-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHasReceivedMessage:Z

    if-eqz v2, :cond_3

    .line 1277
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lio/rong/imlib/RongIMClient;->sendReadReceiptMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;J)V

    .line 1281
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHasReceivedMessage:Z

    .line 1283
    .end local v1           #readRec:Z
    :cond_4
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onDestroy()V

    .line 1284
    return-void

    .line 1269
    .restart local v1       #readRec:Z
    :catch_0
    move-exception v0

    .line 1270
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "MessageListFragment"

    const-string v3, "rc_read_receipt not configure in rc_config.xml"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConnectEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 1078
    const-string v0, "MessageListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventMainThread Event.ConnectEvent: isListRetrieved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowWithoutConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iget-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowWithoutConnected:Z

    if-eqz v0, :cond_1

    .line 1080
    invoke-direct {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getConversation()V

    .line 1081
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v0}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v0, v1, :cond_0

    .line 1082
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/rong/imkit/RongIM;->clearMessagesUnreadStatus(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 1087
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowWithoutConnected:Z

    .line 1088
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$GroupUserInfoEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 817
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$GroupUserInfoEvent;->getUserInfo()Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v4

    .line 818
    .local v4, userInfo:Lio/rong/imkit/model/GroupUserInfo;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 833
    :cond_0
    return-void

    .line 821
    :cond_1
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 822
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v0, v5, v6

    .line 823
    .local v0, first:I
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v2, v5, v6

    .line 824
    .local v2, last:I
    add-int/lit8 v1, v0, -0x1

    .line 826
    .local v1, index:I
    :cond_2
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 827
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/model/Message;

    .line 828
    .local v3, message:Lio/rong/imlib/model/Message;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 829
    :cond_3
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v1, v7

    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5, v1, v6, v7}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessageDeleteEvent;)V
    .locals 7
    .parameter "deleteEvent"

    .prologue
    .line 1132
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageDeleteEvent;->getMessageIds()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1133
    const/4 v0, 0x0

    .line 1134
    .local v0, hasChanged:Z
    const/4 v4, 0x0

    .line 1136
    .local v4, position:I
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageDeleteEvent;->getMessageIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v2, v5

    .line 1137
    .local v2, item:J
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5, v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findPosition(J)I

    move-result v4

    .line 1138
    if-ltz v4, :cond_0

    .line 1139
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5, v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->remove(I)V

    .line 1140
    const/4 v0, 0x1

    goto :goto_0

    .line 1144
    .end local v2           #item:J
    :cond_1
    if-eqz v0, :cond_2

    .line 1148
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 1149
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1155
    .end local v0           #hasChanged:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #position:I
    :cond_2
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessageRecallEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 1179
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageRecallEvent;->isRecallSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1180
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageRecallEvent;->getRecallNotificationMessage()Lio/rong/message/RecallNotificationMessage;

    move-result-object v1

    .line 1181
    .local v1, recallNotificationMessage:Lio/rong/message/RecallNotificationMessage;
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageRecallEvent;->getMessageId()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findPosition(J)I

    move-result v0

    .line 1182
    .local v0, position:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1183
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2, v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v2, v1}, Lio/rong/imkit/model/UIMessage;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 1184
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1189
    .end local v0           #position:I
    .end local v1           #recallNotificationMessage:Lio/rong/message/RecallNotificationMessage;
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_recall_failed:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessagesClearEvent;)V
    .locals 2
    .parameter "clearEvent"

    .prologue
    .line 1164
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getTargetId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->removeAll()V

    .line 1166
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/fragment/MessageListFragment$14;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/MessageListFragment$14;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1174
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 1176
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 836
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v0

    .line 837
    .local v0, msg:Lio/rong/imlib/model/Message;
    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/MessageListFragment;->onEventMainThread(Lio/rong/imlib/model/Message;)V

    .line 838
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$OnReceiveMessageEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 841
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getLeft()I

    move-result v0

    iput v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mMessageleft:I

    .line 842
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/MessageListFragment;->onEventMainThread(Lio/rong/imlib/model/Message;)V

    .line 843
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 894
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 895
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v0, v4, v5

    .line 896
    .local v0, first:I
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 898
    .local v2, last:I
    add-int/lit8 v1, v0, -0x1

    .line 900
    .local v1, index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_1

    if-ltz v1, :cond_1

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 901
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIMessage;

    .line 902
    .local v3, uiMessage:Lio/rong/imkit/model/UIMessage;
    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 903
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageProgressEvent;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/UIMessage;->setProgress(I)V

    .line 904
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v1, v5, v6}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 913
    .end local v0           #first:I
    .end local v1           #index:I
    .end local v2           #last:I
    .end local v3           #uiMessage:Lio/rong/imkit/model/UIMessage;
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$PlayAudioEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 863
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 864
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v0, v4, v5

    .line 865
    .local v0, first:I
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 866
    .local v2, last:I
    move v1, v0

    .line 868
    .local v1, index:I
    :goto_0
    if-gt v1, v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 869
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIMessage;

    .line 870
    .local v3, uiMessage:Lio/rong/imkit/model/UIMessage;
    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    iget-object v5, p1, Lio/rong/imkit/model/Event$PlayAudioEvent;->content:Lio/rong/imlib/model/MessageContent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 871
    const/4 v4, 0x0

    iput-boolean v4, v3, Lio/rong/imkit/model/UIMessage;->continuePalyAudio:Z

    .line 876
    .end local v3           #uiMessage:Lio/rong/imkit/model/UIMessage;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 877
    iget-boolean v4, p1, Lio/rong/imkit/model/Event$PlayAudioEvent;->continuously:Z

    if-eqz v4, :cond_1

    .line 878
    :goto_1
    if-gt v1, v2, :cond_1

    if-ltz v1, :cond_1

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 879
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIMessage;

    .line 880
    .restart local v3       #uiMessage:Lio/rong/imkit/model/UIMessage;
    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    instance-of v4, v4, Lio/rong/message/VoiceMessage;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v4, v5}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    if-nez v4, :cond_3

    .line 882
    const/4 v4, 0x1

    iput-boolean v4, v3, Lio/rong/imkit/model/UIMessage;->continuePalyAudio:Z

    .line 883
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    sub-int v6, v1, v0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v1, v5, v6}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 890
    .end local v0           #first:I
    .end local v1           #index:I
    .end local v2           #last:I
    .end local v3           #uiMessage:Lio/rong/imkit/model/UIMessage;
    :cond_1
    return-void

    .line 874
    .restart local v0       #first:I
    .restart local v1       #index:I
    .restart local v2       #last:I
    .restart local v3       #uiMessage:Lio/rong/imkit/model/UIMessage;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 875
    goto :goto_0

    .line 886
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 887
    goto :goto_1
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->isFollow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1159
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 1161
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ReadReceiptEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 699
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ReadReceiptEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ReadReceiptEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 703
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ReadReceiptEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v4, v5}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 704
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v4, v5}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 722
    :cond_0
    return-void

    .line 707
    :cond_1
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ReadReceiptEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/ReadReceiptMessage;

    .line 708
    .local v0, content:Lio/rong/message/ReadReceiptMessage;
    invoke-virtual {v0}, Lio/rong/message/ReadReceiptMessage;->getLastMessageSendTime()J

    move-result-wide v2

    .line 709
    .local v2, ntfTime:J
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 710
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    if-eq v4, v5, :cond_0

    .line 712
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Message$SentStatus;->SENT:Lio/rong/imlib/model/Message$SentStatus;

    if-ne v4, v5, :cond_2

    .line 713
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v4

    sget-object v5, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v4, v5}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    .line 715
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/model/UIMessage;

    sget-object v5, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIMessage;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 716
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 709
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    .line 1192
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;->isRecallSuccess()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1193
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;->getRecallNotificationMessage()Lio/rong/message/RecallNotificationMessage;

    move-result-object v5

    .line 1195
    .local v5, recallNotificationMessage:Lio/rong/message/RecallNotificationMessage;
    invoke-static {}, Lio/rong/imkit/manager/AudioPlayManager;->getInstance()Lio/rong/imkit/manager/AudioPlayManager;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/manager/AudioPlayManager;->getPlayingUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1196
    invoke-static {}, Lio/rong/imkit/manager/AudioPlayManager;->getInstance()Lio/rong/imkit/manager/AudioPlayManager;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/manager/AudioPlayManager;->getPlayingUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1197
    .local v7, uri:Ljava/lang/String;
    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1198
    .local v1, i:I
    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1199
    .local v2, j:I
    const/4 v6, 0x0

    .line 1200
    .local v6, sub:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1202
    .local v3, matchId:I
    add-int/lit8 v8, v1, 0x1

    :try_start_0
    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1203
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1204
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;->getMessageId()I

    move-result v8

    if-ne v3, v8, :cond_0

    .line 1205
    invoke-static {}, Lio/rong/imkit/manager/AudioPlayManager;->getInstance()Lio/rong/imkit/manager/AudioPlayManager;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/manager/AudioPlayManager;->stopPlay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #matchId:I
    .end local v6           #sub:Ljava/lang/String;
    .end local v7           #uri:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;->getMessageId()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findPosition(J)I

    move-result v4

    .line 1213
    .local v4, position:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 1214
    iget-object v8, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v8, v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v8, v5}, Lio/rong/imkit/model/UIMessage;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 1215
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1218
    .end local v4           #position:I
    .end local v5           #recallNotificationMessage:Lio/rong/message/RecallNotificationMessage;
    :cond_1
    return-void

    .line 1207
    .restart local v1       #i:I
    .restart local v2       #j:I
    .restart local v3       #matchId:I
    .restart local v5       #recallNotificationMessage:Lio/rong/message/RecallNotificationMessage;
    .restart local v6       #sub:Ljava/lang/String;
    .restart local v7       #uri:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1208
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/widget/InputView$Event;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 916
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    if-nez v0, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    sget-object v0, Lio/rong/imkit/widget/InputView$Event;->ACTION:Lio/rong/imkit/widget/InputView$Event;

    if-ne p1, v0, :cond_0

    .line 920
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 769
    invoke-static {p1}, Lio/rong/imkit/model/UIMessage;->obtain(Lio/rong/imlib/model/Message;)Lio/rong/imkit/model/UIMessage;

    move-result-object v1

    .line 770
    .local v1, message:Lio/rong/imkit/model/UIMessage;
    const/4 v3, 0x0

    .line 772
    .local v3, readRec:Z
    :try_start_0
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 777
    :goto_0
    const-string v5, "MessageListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEventMainThread message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 780
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->findPosition(J)I

    move-result v2

    .line 781
    .local v2, position:I
    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v5

    if-lez v5, :cond_0

    .line 782
    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v4

    .line 783
    .local v4, status:Lio/rong/imlib/model/Message$ReceivedStatus;
    invoke-virtual {v4}, Lio/rong/imlib/model/Message$ReceivedStatus;->setRead()V

    .line 784
    invoke-virtual {v1, v4}, Lio/rong/imkit/model/UIMessage;->setReceivedStatus(Lio/rong/imlib/model/Message$ReceivedStatus;)V

    .line 785
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Lio/rong/imlib/RongIMClient;->setMessageReceivedStatus(ILio/rong/imlib/model/Message$ReceivedStatus;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 787
    .end local v4           #status:Lio/rong/imlib/model/Message$ReceivedStatus;
    :cond_0
    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    .line 788
    iget v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mMessageleft:I

    if-gtz v5, :cond_1

    .line 789
    if-eqz v3, :cond_1

    .line 791
    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v5, v6}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imkit/RongContext;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lio/rong/common/SystemUtils;->isAppRunningOnTop(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getUId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 794
    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v5, v6, :cond_1

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->isReadReceiptConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 796
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v5

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lio/rong/imlib/RongIMClient;->sendReadReceiptMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;J)V

    .line 801
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHasReceivedMessage:Z

    .line 802
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lio/rong/imlib/model/Conversation;->setSentTime(J)V

    .line 803
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imlib/model/Conversation;->setSenderUserId(Ljava/lang/String;)V

    .line 804
    invoke-direct {p0, v1}, Lio/rong/imkit/fragment/MessageListFragment;->refreshListWhileReceiveMessage(Lio/rong/imkit/model/UIMessage;)V

    .line 814
    .end local v2           #position:I
    :cond_2
    :goto_1
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "MessageListFragment"

    const-string v6, "rc_read_receipt not configure in rc_config.xml"

    invoke-static {v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 806
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v2       #position:I
    :cond_3
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/model/UIMessage;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 807
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getExtra()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/model/UIMessage;->setExtra(Ljava/lang/String;)V

    .line 808
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lio/rong/imkit/model/UIMessage;->setSentTime(J)V

    .line 809
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getUId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/model/UIMessage;->setUId(Ljava/lang/String;)V

    .line 810
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5, v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v1}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/model/UIMessage;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 811
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public onEventMainThread(Lio/rong/imlib/model/MessageContent;)V
    .locals 7
    .parameter "messageContent"

    .prologue
    .line 847
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 848
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v0, v3, v4

    .line 849
    .local v0, first:I
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v2, v3, v4

    .line 851
    .local v2, last:I
    add-int/lit8 v1, v0, -0x1

    .line 853
    .local v1, index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_1

    if-ltz v1, :cond_1

    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 854
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 855
    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v4, v5}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 860
    .end local v0           #first:I
    .end local v1           #index:I
    .end local v2           #last:I
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 8
    .parameter "publicServiceProfile"

    .prologue
    .line 947
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    if-eqz v4, :cond_2

    .line 948
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v0, v4, v5

    .line 949
    .local v0, first:I
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 951
    .local v2, last:I
    add-int/lit8 v1, v0, -0x1

    .line 953
    .local v1, index:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_2

    if-ltz v1, :cond_2

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 955
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/model/Message;

    .line 957
    .local v3, message:Lio/rong/imlib/model/Message;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 958
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v1, v5, v6}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 962
    .end local v0           #first:I
    .end local v1           #index:I
    .end local v2           #last:I
    .end local v3           #message:Lio/rong/imlib/model/Message;
    :cond_2
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/UserInfo;)V
    .locals 8
    .parameter "userInfo"

    .prologue
    .line 926
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 927
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v0, v4, v5

    .line 928
    .local v0, first:I
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 930
    .local v2, last:I
    add-int/lit8 v1, v0, -0x1

    .line 932
    .local v1, index:I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_2

    if-ltz v1, :cond_2

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 934
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIMessage;

    .line 936
    .local v3, uiMessage:Lio/rong/imkit/model/UIMessage;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 937
    :cond_1
    invoke-virtual {v3, p1}, Lio/rong/imkit/model/UIMessage;->setUserInfo(Lio/rong/imlib/model/UserInfo;)V

    .line 938
    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v1, v5, v6}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 943
    .end local v0           #first:I
    .end local v1           #index:I
    .end local v2           #last:I
    .end local v3           #uiMessage:Lio/rong/imkit/model/UIMessage;
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1092
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onPause()V

    .line 1093
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    sget-object v1, Lio/rong/imkit/widget/InputView$Event;->DESTROY:Lio/rong/imkit/widget/InputView$Event;

    invoke-virtual {v0, v1}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1094
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/16 v4, 0x8

    .line 1098
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onResume()V

    .line 1099
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imkit/RongIM;->getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1100
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->isShowWithoutConnected:Z

    .line 1101
    const-string v2, "MessageListFragment"

    const-string v3, "onResume Not connected yet."

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_0
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1105
    const/4 v2, 0x0

    iput v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    .line 1106
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1107
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1112
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1113
    const/4 v1, 0x0

    .line 1115
    .local v1, readRec:Z
    :try_start_0
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1121
    :goto_0
    if-eqz v1, :cond_2

    .line 1122
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getSenderUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1123
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v2, v3, :cond_2

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->isReadReceiptConversationType(Lio/rong/imlib/model/Conversation$ConversationType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1125
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v3}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lio/rong/imlib/RongIMClient;->sendReadReceiptMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;J)V

    .line 1129
    .end local v1           #readRec:Z
    :cond_2
    return-void

    .line 1116
    .restart local v1       #readRec:Z
    :catch_0
    move-exception v0

    .line 1117
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "MessageListFragment"

    const-string v3, "rc_read_receipt not configure in rc_config.xml"

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/16 v2, 0x8

    .line 327
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 330
    :cond_0
    add-int v0, p2, p3

    iget v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    sub-int v1, p4, v1

    if-lt v0, v1, :cond_1

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageCount:I

    .line 332
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mNewMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 293
    packed-switch p2, :pswitch_data_0

    .line 320
    :cond_0
    :goto_0
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v2, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 323
    :cond_1
    return-void

    .line 295
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreLocalMessages:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->isLoading:Z

    if-nez v2, :cond_2

    .line 296
    iput-boolean v3, p0, Lio/rong/imkit/fragment/MessageListFragment;->isLoading:Z

    .line 297
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreLocalMessages:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreRemoteMessages:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->isLoading:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v2}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    if-eq v2, v3, :cond_0

    .line 306
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$bool;->rc_enable_get_remote_history_message:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 307
    .local v1, enableRemote:Z
    if-eqz v1, :cond_0

    .line 308
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->isLoading:Z

    .line 309
    iget-object v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/rong/imkit/fragment/MessageListFragment;->mLastRemoteMessageTime:J

    .line 310
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 312
    .end local v1           #enableRemote:Z
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    iput-boolean v4, p0, Lio/rong/imkit/fragment/MessageListFragment;->mHasMoreRemoteMessages:Z

    .line 314
    const-string v2, "MessageListFragment"

    const-string v3, "get_remote_history_message disabled."

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 339
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getActionBarHandler()Lio/rong/imkit/fragment/UriFragment$IActionBarHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getActionBarHandler()Lio/rong/imkit/fragment/UriFragment$IActionBarHandler;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mConversation:Lio/rong/imlib/model/Conversation;

    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation;->getConversationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/rong/imkit/fragment/UriFragment$IActionBarHandler;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    new-instance v1, Lio/rong/imkit/fragment/MessageListFragment$5;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/MessageListFragment$5;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 370
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 372
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    new-instance v1, Lio/rong/imkit/fragment/MessageListFragment$6;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/MessageListFragment$6;-><init>(Lio/rong/imkit/fragment/MessageListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 380
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/UriFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 381
    return-void
.end method

.method public setAdapter(Lio/rong/imkit/widget/adapter/MessageListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 1287
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->clear()V

    .line 1289
    :cond_0
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    .line 1290
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1291
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1292
    invoke-virtual {p0}, Lio/rong/imkit/fragment/MessageListFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/MessageListFragment;->initFragment(Landroid/net/Uri;)V

    .line 1294
    :cond_1
    return-void
.end method

.method public setNeedEvaluateForRobot(Z)V
    .locals 0
    .parameter "needEvaluate"

    .prologue
    .line 1301
    iput-boolean p1, p0, Lio/rong/imkit/fragment/MessageListFragment;->needEvaluateForRobot:Z

    .line 1302
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 153
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 154
    return-void
.end method

.method public setRobotMode(Z)V
    .locals 0
    .parameter "robotMode"

    .prologue
    .line 1304
    iput-boolean p1, p0, Lio/rong/imkit/fragment/MessageListFragment;->robotMode:Z

    .line 1305
    return-void
.end method
