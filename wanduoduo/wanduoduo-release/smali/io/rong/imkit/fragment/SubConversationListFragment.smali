.class public Lio/rong/imkit/fragment/SubConversationListFragment;
.super Lio/rong/imkit/fragment/UriFragment;
.source "SubConversationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SubConversationListFragment"


# instance fields
.field private currentType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

.field mCallback:Lio/rong/imlib/RongIMClient$ResultCallback;
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
.end field

.field private mList:Landroid/widget/ListView;

.field private mNotificationBar:Landroid/widget/LinearLayout;

.field private mNotificationBarImage:Landroid/widget/ImageView;

.field private mNotificationBarText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lio/rong/imkit/fragment/UriFragment;-><init>()V

    .line 57
    new-instance v0, Lio/rong/imkit/fragment/SubConversationListFragment$1;

    invoke-direct {v0, p0}, Lio/rong/imkit/fragment/SubConversationListFragment$1;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment;)V

    iput-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/fragment/SubConversationListFragment;)Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lio/rong/imkit/fragment/SubConversationListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lio/rong/imkit/fragment/SubConversationListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mNotificationBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lio/rong/imkit/fragment/SubConversationListFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mNotificationBarText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lio/rong/imkit/fragment/SubConversationListFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mNotificationBarImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private buildMultiDialog(Lio/rong/imkit/model/UIConversation;)V
    .locals 4
    .parameter "uiConversation"

    .prologue
    const/4 v3, 0x0

    .line 750
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 751
    .local v0, items:[Ljava/lang/String;
    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_conversation_list_dialog_cancel_top:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 755
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_conversation_list_dialog_remove:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 757
    invoke-virtual {p1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v1

    new-instance v2, Lio/rong/imkit/fragment/SubConversationListFragment$7;

    invoke-direct {v2, p0, p1}, Lio/rong/imkit/fragment/SubConversationListFragment$7;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment;Lio/rong/imkit/model/UIConversation;)V

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 784
    return-void

    .line 754
    :cond_0
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_conversation_list_dialog_set_top:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static getInstance()Lio/rong/imkit/fragment/ConversationListFragment;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lio/rong/imkit/fragment/ConversationListFragment;

    invoke-direct {v0}, Lio/rong/imkit/fragment/ConversationListFragment;-><init>()V

    return-object v0
.end method

.method private makeUiConversation(Lio/rong/imlib/model/Message;I)Lio/rong/imkit/model/UIConversation;
    .locals 9
    .parameter "message"
    .parameter "pos"

    .prologue
    const/4 v8, 0x0

    .line 820
    const/4 v4, 0x0

    .line 823
    .local v4, uiConversation:Lio/rong/imkit/model/UIConversation;
    if-ltz p2, :cond_3

    .line 824
    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v5, p2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #uiConversation:Lio/rong/imkit/model/UIConversation;
    check-cast v4, Lio/rong/imkit/model/UIConversation;

    .line 825
    .restart local v4       #uiConversation:Lio/rong/imkit/model/UIConversation;
    if-eqz v4, :cond_3

    .line 826
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setMessageContent(Lio/rong/imlib/model/MessageContent;)V

    .line 827
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v5, v6, :cond_1

    .line 828
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 829
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    .line 834
    :goto_0
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setConversationTargetId(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v4, v4}, Lio/rong/imkit/model/UIConversation;->buildConversationContent(Lio/rong/imkit/model/UIConversation;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 836
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 837
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setLatestMessageId(I)V

    .line 839
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lio/rong/imlib/MessageTag;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lio/rong/imlib/MessageTag;

    .line 840
    .local v3, tag:Lio/rong/imlib/MessageTag;
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Message$MessageDirection;->RECEIVE:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v5, v6, :cond_2

    invoke-interface {v3}, Lio/rong/imlib/MessageTag;->flag()I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    if-eqz v5, :cond_2

    .line 841
    invoke-virtual {v4}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 842
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getCurrentConversationList()Ljava/util/List;

    move-result-object v2

    .line 843
    .local v2, infoList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/ConversationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/ConversationInfo;

    .line 844
    .local v1, info:Lio/rong/imkit/model/ConversationInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationInfo;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lio/rong/imkit/model/ConversationInfo;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 845
    invoke-virtual {v4, v8}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    goto :goto_1

    .line 831
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lio/rong/imkit/model/ConversationInfo;
    .end local v2           #infoList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imkit/model/ConversationInfo;>;"
    .end local v3           #tag:Lio/rong/imlib/MessageTag;
    :cond_1
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lio/rong/imkit/model/UIConversation;->setUIConversationTime(J)V

    .line 832
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getSenderUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/model/UIConversation;->setConversationSenderId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 848
    .restart local v3       #tag:Lio/rong/imlib/MessageTag;
    :cond_2
    invoke-virtual {v4, v8}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 852
    .end local v3           #tag:Lio/rong/imlib/MessageTag;
    :cond_3
    return-object v4
.end method

.method private setNotificationBarVisibility(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V
    .locals 6
    .parameter "status"

    .prologue
    const/16 v4, 0x8

    .line 435
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$bool;->rc_is_show_warning_notification:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    const-string v2, "SubConversationListFragment"

    const-string v3, "rc_is_show_warning_notification is disabled."

    invoke-static {v2, v3}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const/4 v0, 0x0

    .line 441
    .local v0, content:Ljava/lang/String;
    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->NETWORK_UNAVAILABLE:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {p1, v2}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 442
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_notice_network_unavailable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 453
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mNotificationBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 454
    move-object v1, v0

    .line 455
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lio/rong/imkit/fragment/SubConversationListFragment$3;

    invoke-direct {v3, p0, v1}, Lio/rong/imkit/fragment/SubConversationListFragment$3;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment;Ljava/lang/String;)V

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 443
    .end local v1           #text:Ljava/lang/String;
    :cond_3
    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->KICKED_OFFLINE_BY_OTHER_CLIENT:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {p1, v2}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 444
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_notice_tick:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 445
    :cond_4
    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {p1, v2}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 446
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mNotificationBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 447
    :cond_5
    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->DISCONNECTED:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {p1, v2}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 448
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_notice_network_unavailable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 449
    :cond_6
    sget-object v2, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTING:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {p1, v2}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_notice_connecting:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 470
    :cond_7
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mNotificationBarText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/RongIMClient;->getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->CONNECTING:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    invoke-virtual {v2, v3}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 472
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mNotificationBarImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$drawable;->rc_notification_connecting_animated:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 474
    :cond_8
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mNotificationBarImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lio/rong/imkit/R$drawable;->rc_notification_network_available:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getAdapter()Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    return-object v0
.end method

.method public initFragment(Landroid/net/Uri;)V
    .locals 12
    .parameter "uri"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 109
    const-string v7, "type"

    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, type:Ljava/lang/String;
    const/4 v6, 0x0

    .line 112
    .local v6, value:Lio/rong/imlib/model/Conversation$ConversationType;
    const-string v7, "SubConversationListFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initFragment uri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v7, 0x0

    iput-object v7, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->currentType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 116
    const/16 v7, 0x8

    new-array v2, v7, [Lio/rong/imlib/model/Conversation$ConversationType;

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v7, v2, v10

    sget-object v7, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v7, v2, v11

    const/4 v7, 0x2

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v8, v2, v7

    const/4 v7, 0x3

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->CHATROOM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v8, v2, v7

    const/4 v7, 0x4

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->CUSTOMER_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v8, v2, v7

    const/4 v7, 0x5

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->SYSTEM:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v8, v2, v7

    const/4 v7, 0x6

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v8, v2, v7

    const/4 v7, 0x7

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v8, v2, v7

    .line 120
    .local v2, defaultTypes:[Lio/rong/imlib/model/Conversation$ConversationType;
    move-object v0, v2

    .local v0, arr$:[Lio/rong/imlib/model/Conversation$ConversationType;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 121
    .local v1, conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    invoke-virtual {v1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 122
    iput-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->currentType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 123
    move-object v6, v1

    .line 127
    .end local v1           #conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_0
    if-eqz v6, :cond_2

    .line 128
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v7

    iget-object v8, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mCallback:Lio/rong/imlib/RongIMClient$ResultCallback;

    new-array v9, v11, [Lio/rong/imlib/model/Conversation$ConversationType;

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Lio/rong/imkit/RongIM;->getConversationList(Lio/rong/imlib/RongIMClient$ResultCallback;[Lio/rong/imlib/model/Conversation$ConversationType;)V

    .line 132
    return-void

    .line 120
    .restart local v1       #conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v1           #conversationType:Lio/rong/imlib/model/Conversation$ConversationType;
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Unknown conversation type!!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lio/rong/imkit/fragment/UriFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 103
    :cond_1
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    .line 105
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 136
    sget v1, Lio/rong/imkit/R$layout;->rc_fr_conversationlist:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$bool;->rc_is_show_warning_notification:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    sget v1, Lio/rong/imkit/R$id;->rc_status_bar:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/SubConversationListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mNotificationBar:Landroid/widget/LinearLayout;

    .line 139
    sget v1, Lio/rong/imkit/R$id;->rc_status_bar_image:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/SubConversationListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mNotificationBarImage:Landroid/widget/ImageView;

    .line 140
    sget v1, Lio/rong/imkit/R$id;->rc_status_bar_text:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/SubConversationListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mNotificationBarText:Landroid/widget/TextView;

    .line 142
    :cond_0
    sget v1, Lio/rong/imkit/R$id;->rc_list:I

    invoke-virtual {p0, v0, v1}, Lio/rong/imkit/fragment/SubConversationListFragment;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    .line 143
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 793
    const-string v0, "SubConversationListFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/rong/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 795
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 796
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onDestroy()V

    .line 797
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Draft;)V
    .locals 6
    .parameter "draft"

    .prologue
    .line 260
    invoke-virtual {p1}, Lio/rong/imkit/model/Draft;->getType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lio/rong/imlib/model/Conversation$ConversationType;->setValue(I)Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    .line 261
    .local v1, curType:Lio/rong/imlib/model/Conversation$ConversationType;
    if-nez v1, :cond_0

    .line 262
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "the type of the draft is unknown!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_0
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Draft;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v2

    .line 267
    .local v2, position:I
    if-ltz v2, :cond_1

    .line 268
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/UIConversation;

    .line 269
    .local v0, conversation:Lio/rong/imkit/model/UIConversation;
    invoke-virtual {p1}, Lio/rong/imkit/model/Draft;->getContent()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 270
    const-string v3, ""

    invoke-virtual {v0, v3}, Lio/rong/imkit/model/UIConversation;->setDraft(Ljava/lang/String;)V

    .line 274
    :goto_0
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v4, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 277
    .end local v0           #conversation:Lio/rong/imkit/model/UIConversation;
    :cond_1
    return-void

    .line 272
    .restart local v0       #conversation:Lio/rong/imkit/model/UIConversation;
    :cond_2
    invoke-virtual {p1}, Lio/rong/imkit/model/Draft;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/rong/imkit/model/UIConversation;->setDraft(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$AudioListenedEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    .line 698
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$AudioListenedEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$AudioListenedEvent;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v2

    .line 700
    .local v2, originalIndex:I
    if-ltz v2, :cond_1

    .line 701
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    .line 702
    .local v3, temp:Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getLatestMessageId()I

    move-result v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$AudioListenedEvent;->getLatestMessageId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 703
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v4

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v0

    .line 704
    .local v0, content:Landroid/text/Spannable;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$AudioListenedEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$AudioListenedEvent;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/rong/imkit/RongIM;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v1

    .line 705
    .local v1, isListened:Z
    if-eqz v1, :cond_2

    .line 706
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v0, v4, v7, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 710
    :goto_0
    invoke-virtual {v3, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 712
    .end local v0           #content:Landroid/text/Spannable;
    .end local v1           #isListened:Z
    :cond_0
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v5, v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 714
    .end local v3           #temp:Lio/rong/imkit/model/UIConversation;
    :cond_1
    return-void

    .line 708
    .restart local v0       #content:Landroid/text/Spannable;
    .restart local v1       #isListened:Z
    .restart local v3       #temp:Lio/rong/imkit/model/UIConversation;
    :cond_2
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v0, v4, v7, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ClearConversationEvent;)V
    .locals 3
    .parameter "clearConversationEvent"

    .prologue
    .line 553
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ClearConversationEvent;->getTypes()Ljava/util/List;

    move-result-object v1

    .line 554
    .local v1, typeList:Ljava/util/List;,"Ljava/util/List<Lio/rong/imlib/model/Conversation$ConversationType;>;"
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 555
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 556
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 554
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 559
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    .line 560
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationNotificationEvent;)V
    .locals 4
    .parameter "notificationEvent"

    .prologue
    .line 563
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationNotificationEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationNotificationEvent;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 565
    .local v0, originalIndex:I
    if-ltz v0, :cond_0

    .line 566
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 568
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationRemoveEvent;)V
    .locals 4
    .parameter "removeEvent"

    .prologue
    .line 545
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationRemoveEvent;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 546
    .local v0, originalIndex:I
    if-ltz v0, :cond_0

    .line 547
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 548
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    .line 550
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationTopEvent;)V
    .locals 8
    .parameter "setTopEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 518
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationTopEvent;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationTopEvent;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v1

    .line 520
    .local v1, originalIndex:I
    if-ltz v1, :cond_2

    .line 521
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    .line 522
    .local v3, temp:Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v2

    .line 525
    .local v2, originalValue:Z
    if-ne v2, v7, :cond_0

    .line 526
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/UIConversation;->setTop(Z)V

    .line 527
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-static {v1, v4}, Lio/rong/imkit/utils/ConversationListUtils;->findPositionForCancleTop(ILio/rong/imkit/widget/adapter/BaseAdapter;)I

    move-result v0

    .line 532
    .local v0, newIndex:I
    :goto_0
    if-ne v1, v0, :cond_1

    .line 533
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v0, v5, v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 542
    :goto_1
    return-void

    .line 529
    .end local v0           #newIndex:I
    :cond_0
    invoke-virtual {v3, v7}, Lio/rong/imkit/model/UIConversation;->setTop(Z)V

    .line 530
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-static {v3, v4}, Lio/rong/imkit/utils/ConversationListUtils;->findPositionForSetTop(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/BaseAdapter;)I

    move-result v0

    .restart local v0       #newIndex:I
    goto :goto_0

    .line 535
    :cond_1
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 536
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4, v3, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 537
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 540
    .end local v0           #newIndex:I
    .end local v2           #originalValue:Z
    .end local v3           #temp:Lio/rong/imkit/model/UIConversation;
    :cond_2
    new-instance v4, Ljava/lang/IllegalAccessException;

    const-string v5, "the item has already been deleted!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ConversationUnreadEvent;)V
    .locals 5
    .parameter "unreadEvent"

    .prologue
    .line 508
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ConversationUnreadEvent;->getTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 510
    .local v0, targetIndex:I
    if-ltz v0, :cond_0

    .line 511
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/UIConversation;

    .line 512
    .local v1, temp:Lio/rong/imkit/model/UIConversation;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 513
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v3, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 515
    .end local v1           #temp:Lio/rong/imkit/model/UIConversation;
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$GroupUserInfoEvent;)V
    .locals 15
    .parameter "event"

    .prologue
    .line 300
    const-string v11, "SubConversationListFragment"

    const-string v12, "onEvent update GroupUserInfoEvent"

    invoke-static {v11, v12}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual/range {p1 .. p1}, Lio/rong/imkit/model/Event$GroupUserInfoEvent;->getUserInfo()Lio/rong/imkit/model/GroupUserInfo;

    move-result-object v10

    .line 302
    .local v10, userInfo:Lio/rong/imkit/model/GroupUserInfo;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 350
    :cond_0
    return-void

    .line 306
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    .line 307
    .local v1, context:Lio/rong/imkit/RongContext;
    if-eqz v1, :cond_0

    .line 311
    iget-object v11, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v11}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v2

    .line 312
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 313
    iget-object v11, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v11, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/model/UIConversation;

    .line 314
    .local v9, uiConversation:Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v8

    .line 315
    .local v8, type:Ljava/lang/String;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    .line 316
    .local v5, messageContent:Lio/rong/imlib/model/MessageContent;
    if-nez v5, :cond_3

    .line 312
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v1, v11}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v7

    .line 320
    .local v7, provider:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    if-eqz v7, :cond_2

    .line 323
    invoke-virtual {v7, v5}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v6

    .line 324
    .local v6, messageData:Landroid/text/Spannable;
    if-eqz v6, :cond_2

    .line 329
    sget-object v11, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v11}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 331
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 333
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v11

    instance-of v11, v11, Lio/rong/message/VoiceMessage;

    if-eqz v11, :cond_4

    .line 334
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v11

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v12

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lio/rong/imkit/RongIM;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    .line 336
    .local v4, isListened:Z
    if-eqz v4, :cond_6

    .line 337
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v12

    invoke-virtual {v12}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-interface {v6, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 342
    .end local v4           #isListened:Z
    :cond_4
    :goto_2
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lio/rong/imkit/model/GroupUserInfo;->getGroupId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 343
    invoke-virtual {v10}, Lio/rong/imkit/model/GroupUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lio/rong/imkit/model/UIConversation;->addNickname(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v10}, Lio/rong/imkit/model/GroupUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 345
    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 347
    :cond_5
    iget-object v11, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v12, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v13, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v13

    sub-int v13, v3, v13

    invoke-virtual {v12, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v11, v3, v12, v13}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1

    .line 339
    .restart local v4       #isListened:Z
    :cond_6
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v12

    invoke-virtual {v12}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v12, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v13

    const/16 v14, 0x21

    invoke-interface {v6, v11, v12, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessageDeleteEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 584
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 585
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 586
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageDeleteEvent;->getMessageIds()Ljava/util/List;

    move-result-object v4

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getLatestMessageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    move v2, v1

    .line 588
    .local v2, index:I
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lio/rong/imkit/fragment/SubConversationListFragment$4;

    invoke-direct {v6, p0, v2}, Lio/rong/imkit/fragment/SubConversationListFragment$4;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment;I)V

    invoke-virtual {v4, v5, v3, v6}, Lio/rong/imkit/RongIM;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 610
    .end local v2           #index:I
    :cond_0
    return-void

    .line 585
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessageRecallEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 613
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 614
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 615
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessageRecallEvent;->getMessageId()I

    move-result v4

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getLatestMessageId()I

    move-result v3

    if-ne v4, v3, :cond_1

    .line 616
    move v2, v1

    .line 617
    .local v2, index:I
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lio/rong/imkit/fragment/SubConversationListFragment$5;

    invoke-direct {v6, p0, v2}, Lio/rong/imkit/fragment/SubConversationListFragment$5;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment;I)V

    invoke-virtual {v4, v5, v3, v6}, Lio/rong/imkit/RongIM;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 639
    .end local v2           #index:I
    :cond_0
    return-void

    .line 614
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$MessagesClearEvent;)V
    .locals 7
    .parameter "clearMessagesEvent"

    .prologue
    const/4 v6, 0x0

    .line 571
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 573
    .local v0, originalIndex:I
    if-eqz p1, :cond_0

    if-ltz v0, :cond_0

    .line 574
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$MessagesClearEvent;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imlib/RongIMClient;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v1

    .line 575
    .local v1, temp:Lio/rong/imlib/model/Conversation;
    invoke-static {v1, v6}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v2

    .line 576
    .local v2, uiConversation:Lio/rong/imkit/model/UIConversation;
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 577
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-static {v1, v6}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Conversation;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-static {v2, v5}, Lio/rong/imkit/utils/ConversationListUtils;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/BaseAdapter;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 578
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    .line 581
    .end local v1           #temp:Lio/rong/imlib/model/Conversation;
    .end local v2           #uiConversation:Lio/rong/imkit/model/UIConversation;
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;)V
    .locals 4
    .parameter "sendErrorEvent"

    .prologue
    .line 671
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v2

    invoke-virtual {v2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnMessageSendErrorEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 673
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 674
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/UIConversation;

    sget-object v2, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v1, v2}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 675
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 677
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$OnReceiveMessageEvent;)V
    .locals 1
    .parameter "onReceiveMessageEvent"

    .prologue
    .line 230
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$OnReceiveMessageEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/SubConversationListFragment;->onEventMainThread(Lio/rong/imlib/model/Message;)V

    .line 231
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$QuitDiscussionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 680
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$QuitDiscussionEvent;->getDiscussionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 682
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 683
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 684
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    .line 686
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$QuitGroupEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 689
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    sget-object v2, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$QuitGroupEvent;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v0

    .line 691
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 692
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 693
    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    .line 695
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$ReadReceiptEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 166
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    if-nez v3, :cond_1

    .line 167
    const-string v3, "SubConversationListFragment"

    const-string v4, "onEventMainThread ReadReceiptEvent adapter is null"

    invoke-static {v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ReadReceiptEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ReadReceiptEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, originalIndex:I
    if-ltz v2, :cond_0

    .line 174
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ReadReceiptEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    invoke-virtual {v3, v4}, Lio/rong/imlib/model/Message$MessageDirection;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ReadReceiptEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ReadReceiptEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/fragment/SubConversationListFragment$2;

    invoke-direct {v6, p0, v2}, Lio/rong/imkit/fragment/SubConversationListFragment$2;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment;I)V

    invoke-virtual {v3, v4, v5, v6}, Lio/rong/imkit/RongIM;->getUnreadCount(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/model/UIConversation;

    .line 189
    .local v1, conversation:Lio/rong/imkit/model/UIConversation;
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$ReadReceiptEvent;->getMessage()Lio/rong/imlib/model/Message;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    check-cast v0, Lio/rong/message/ReadReceiptMessage;

    .line 190
    .local v0, content:Lio/rong/message/ReadReceiptMessage;
    invoke-virtual {v0}, Lio/rong/message/ReadReceiptMessage;->getLastMessageSendTime()J

    move-result-wide v4

    invoke-virtual {v1}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    invoke-virtual {v1}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/RongIMClient;->getCurrentUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v1, v3}, Lio/rong/imkit/model/UIConversation;->setSentStatus(Lio/rong/imlib/model/Message$SentStatus;)V

    .line 193
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v2, v4, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onEventMainThread(Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 642
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 643
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 644
    invoke-virtual {p1}, Lio/rong/imkit/model/Event$RemoteMessageRecallEvent;->getMessageId()I

    move-result v4

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getLatestMessageId()I

    move-result v3

    if-ne v4, v3, :cond_1

    .line 645
    move v2, v1

    .line 646
    .local v2, index:I
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lio/rong/imkit/fragment/SubConversationListFragment$6;

    invoke-direct {v6, p0, v2}, Lio/rong/imkit/fragment/SubConversationListFragment$6;-><init>(Lio/rong/imkit/fragment/SubConversationListFragment;I)V

    invoke-virtual {v4, v5, v3, v6}, Lio/rong/imkit/RongIM;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    .line 668
    .end local v2           #index:I
    :cond_0
    return-void

    .line 643
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 426
    const-string v0, "SubConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectionStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/rong/imkit/R$bool;->rc_is_show_warning_notification:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0, p1}, Lio/rong/imkit/fragment/SubConversationListFragment;->setNotificationBarVisibility(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 432
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Discussion;)V
    .locals 7
    .parameter "discussion"

    .prologue
    .line 481
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 483
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 484
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    .line 485
    .local v3, temp:Lio/rong/imkit/model/UIConversation;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 486
    .local v1, gatherState:Z
    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 487
    invoke-virtual {p1}, Lio/rong/imlib/model/Discussion;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 488
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v2, v5, v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 492
    .end local v1           #gatherState:Z
    .end local v3           #temp:Lio/rong/imkit/model/UIConversation;
    :cond_0
    return-void

    .line 483
    .restart local v1       #gatherState:Z
    .restart local v3       #temp:Lio/rong/imkit/model/UIConversation;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Group;)V
    .locals 6
    .parameter "groupInfo"

    .prologue
    .line 282
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 284
    .local v0, count:I
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 297
    :cond_0
    return-void

    .line 288
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 289
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    .line 290
    .local v2, temp:Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 293
    invoke-virtual {p1}, Lio/rong/imlib/model/Group;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    .line 294
    :cond_2
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v1, v4, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 288
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    .line 201
    const-string v3, "SubConversationListFragment"

    const-string v4, "onEventMainThread Message"

    invoke-static {v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v4

    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, originalIndex:I
    invoke-virtual {p1}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->currentType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v3, v4}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v2, 0x0

    .line 210
    .local v2, uiConversation:Lio/rong/imkit/model/UIConversation;
    if-ltz v1, :cond_2

    .line 211
    invoke-direct {p0, p1, v1}, Lio/rong/imkit/fragment/SubConversationListFragment;->makeUiConversation(Lio/rong/imlib/model/Message;I)Lio/rong/imkit/model/UIConversation;

    move-result-object v2

    .line 213
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-static {v2, v3}, Lio/rong/imkit/utils/ConversationListUtils;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/BaseAdapter;)I

    move-result v0

    .line 214
    .local v0, newPosition:I
    if-ne v0, v1, :cond_1

    .line 215
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v0, v4, v5}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 217
    :cond_1
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->remove(I)V

    .line 218
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, v2, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 219
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 223
    .end local v0           #newPosition:I
    :cond_2
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lio/rong/imkit/model/UIConversation;->obtain(Lio/rong/imlib/model/Message;Z)Lio/rong/imkit/model/UIConversation;

    move-result-object v2

    .line 224
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-static {v2, v4}, Lio/rong/imkit/utils/ConversationListUtils;->findPositionForNewConversation(Lio/rong/imkit/model/UIConversation;Lio/rong/imkit/widget/adapter/BaseAdapter;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->add(Ljava/lang/Object;I)V

    .line 225
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/MessageContent;)V
    .locals 9
    .parameter "content"

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    .line 235
    const-string v4, "SubConversationListFragment"

    const-string v5, "onEventMainThread::MessageContent MessageContent"

    invoke-static {v4, v5}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .local v0, index:I
    :goto_0
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 238
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    .line 239
    .local v3, tempUIConversation:Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    invoke-virtual {v3, p1}, Lio/rong/imkit/model/UIConversation;->setMessageContent(Lio/rong/imlib/model/MessageContent;)V

    .line 242
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v4

    invoke-virtual {v4, p1}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v2

    .line 244
    .local v2, messageData:Landroid/text/Spannable;
    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v4

    instance-of v4, v4, Lio/rong/message/VoiceMessage;

    if-eqz v4, :cond_0

    .line 245
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v4

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lio/rong/imkit/RongIM;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v1

    .line 247
    .local v1, isListened:Z
    if-eqz v1, :cond_2

    .line 248
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v2, v4, v7, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 253
    .end local v1           #isListened:Z
    :cond_0
    :goto_1
    invoke-virtual {v3, v2}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 254
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v5, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v0, v5, v6}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 237
    .end local v2           #messageData:Landroid/text/Spannable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 250
    .restart local v1       #isListened:Z
    .restart local v2       #messageData:Landroid/text/Spannable;
    :cond_2
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v2, v4, v7, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 257
    .end local v1           #isListened:Z
    .end local v2           #messageData:Landroid/text/Spannable;
    .end local v3           #tempUIConversation:Lio/rong/imkit/model/UIConversation;
    :cond_3
    return-void
.end method

.method public onEventMainThread(Lio/rong/imlib/model/PublicServiceProfile;)V
    .locals 5
    .parameter "accountInfo"

    .prologue
    .line 495
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 497
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 498
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 499
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getPortraitUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    .line 500
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v2, v1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {p1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 501
    iget-object v2, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v1, v3, v4}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 505
    :cond_0
    return-void

    .line 497
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onEventMainThread(Lio/rong/imlib/model/UserInfo;)V
    .locals 14
    .parameter "userInfo"

    .prologue
    .line 354
    const-string v10, "SubConversationListFragment"

    const-string v11, "onEvent update userInfo"

    invoke-static {v10, v11}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    .line 422
    :cond_0
    return-void

    .line 359
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    .line 360
    .local v1, context:Lio/rong/imkit/RongContext;
    if-eqz v1, :cond_0

    .line 364
    iget-object v10, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v10}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v2

    .line 365
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 366
    iget-object v10, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v10, v3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/rong/imkit/model/UIConversation;

    .line 367
    .local v9, uiConversation:Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, type:Ljava/lang/String;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v5

    .line 369
    .local v5, messageContent:Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/model/UIConversation;->hasNickname(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 365
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    :cond_3
    if-eqz v5, :cond_2

    .line 375
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v1, v10}, Lio/rong/imkit/RongContext;->getMessageTemplate(Ljava/lang/Class;)Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;

    move-result-object v7

    .line 376
    .local v7, provider:Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
    if-eqz v7, :cond_2

    .line 379
    invoke-virtual {v7, v5}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;->getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;

    move-result-object v6

    .line 380
    .local v6, messageData:Landroid/text/Spannable;
    if-eqz v6, :cond_2

    .line 385
    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_4
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 388
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 389
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    instance-of v10, v10, Lio/rong/message/VoiceMessage;

    if-eqz v10, :cond_5

    .line 390
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v10

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lio/rong/imkit/RongIM;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    .line 392
    .local v4, isListened:Z
    if-eqz v4, :cond_7

    .line 393
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-interface {v6, v10, v11, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 398
    .end local v4           #isListened:Z
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 399
    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 420
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    :cond_6
    :goto_3
    iget-object v10, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    iget-object v11, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v12, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v12}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v12

    sub-int v12, v3, v12

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iget-object v12, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v10, v3, v11, v12}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_1

    .line 395
    .restart local v0       #builder:Landroid/text/SpannableStringBuilder;
    .restart local v4       #isListened:Z
    :cond_7
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-interface {v6, v10, v11, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 400
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    .end local v4           #isListened:Z
    :cond_8
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 401
    sget-object v10, Lio/rong/imlib/model/Conversation$ConversationType;->PRIVATE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 402
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/model/UIConversation;->setUIConversationTitle(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    goto :goto_3

    .line 405
    :cond_9
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 406
    .restart local v0       #builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v10

    instance-of v10, v10, Lio/rong/message/VoiceMessage;

    if-eqz v10, :cond_a

    .line 407
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v10

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v11

    invoke-virtual {v9}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lio/rong/imkit/RongIM;->getConversation(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)Lio/rong/imlib/model/Conversation;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Conversation;->getReceivedStatus()Lio/rong/imlib/model/Message$ReceivedStatus;

    move-result-object v10

    invoke-virtual {v10}, Lio/rong/imlib/model/Message$ReceivedStatus;->isListened()Z

    move-result v4

    .line 409
    .restart local v4       #isListened:Z
    if-eqz v4, :cond_b

    .line 410
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lio/rong/imkit/R$color;->rc_text_color_secondary:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-interface {v6, v10, v11, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 415
    .end local v4           #isListened:Z
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 416
    invoke-virtual {v9, v0}, Lio/rong/imkit/model/UIConversation;->setConversationContent(Landroid/text/Spannable;)V

    .line 417
    invoke-virtual {p1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/rong/imkit/model/UIConversation;->setIconUrl(Landroid/net/Uri;)V

    goto/16 :goto_3

    .line 412
    .restart local v4       #isListened:Z
    :cond_b
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v11

    invoke-virtual {v11}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lio/rong/imkit/R$color;->rc_voice_color:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v11, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v12

    const/16 v13, 0x21

    invoke-interface {v6, v10, v11, v12, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 718
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v3, p3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/UIConversation;

    .line 720
    .local v2, uiconversation:Lio/rong/imkit/model/UIConversation;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 721
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v3, v4, p2, v2}, Lio/rong/imkit/RongIM$ConversationListBehaviorListener;->onConversationClick(Landroid/content/Context;Landroid/view/View;Lio/rong/imkit/model/UIConversation;)Z

    move-result v0

    .line 722
    .local v0, isDefault:Z
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 729
    .end local v0           #isDefault:Z
    :goto_0
    return-void

    .line 726
    :cond_0
    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    .line 727
    .local v1, type:Lio/rong/imlib/model/Conversation$ConversationType;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/rong/imkit/model/UIConversation;->setUnReadMessageCount(I)V

    .line 728
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v3

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lio/rong/imkit/model/UIConversation;->getUIConversationTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v1, v5, v6}, Lio/rong/imkit/RongIM;->startConversation(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 733
    iget-object v4, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v4, p3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    .line 734
    .local v3, uiConversation:Lio/rong/imkit/model/UIConversation;
    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTitle()Ljava/lang/String;

    move-result-object v2

    .line 736
    .local v2, title:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 737
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v4

    invoke-virtual {v4}, Lio/rong/imkit/RongContext;->getConversationListBehaviorListener()Lio/rong/imkit/RongIM$ConversationListBehaviorListener;

    move-result-object v4

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v4, v5, p2, v3}, Lio/rong/imkit/RongIM$ConversationListBehaviorListener;->onConversationLongClick(Landroid/content/Context;Landroid/view/View;Lio/rong/imkit/model/UIConversation;)Z

    move-result v1

    .line 738
    .local v1, isDealt:Z
    if-eqz v1, :cond_0

    .line 746
    .end local v1           #isDealt:Z
    :goto_0
    return v6

    .line 742
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 743
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 745
    invoke-direct {p0, v3}, Lio/rong/imkit/fragment/SubConversationListFragment;->buildMultiDialog(Lio/rong/imkit/model/UIConversation;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 801
    const-string v0, "SubConversationListFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onPause()V

    .line 803
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 156
    const-string v1, "SubConversationListFragment"

    const-string v2, "SubConversationListFragment onResume"

    invoke-static {v1, v2}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-super {p0}, Lio/rong/imkit/fragment/UriFragment;->onResume()V

    .line 158
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$bool;->rc_is_show_warning_notification:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongIM;->getCurrentConnectionStatus()Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;

    move-result-object v0

    .line 161
    .local v0, status:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    invoke-direct {p0, v0}, Lio/rong/imkit/fragment/SubConversationListFragment;->setNotificationBarVisibility(Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;)V

    .line 163
    .end local v0           #status:Lio/rong/imlib/RongIMClient$ConnectionStatusListener$ConnectionStatus;
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 148
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 151
    invoke-super {p0, p1, p2}, Lio/rong/imkit/fragment/UriFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method public setAdapter(Lio/rong/imkit/widget/adapter/SubConversationListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 806
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->clear()V

    .line 808
    :cond_0
    iput-object p1, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/SubConversationListAdapter;

    .line 809
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 811
    invoke-virtual {p0}, Lio/rong/imkit/fragment/SubConversationListFragment;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/rong/imkit/fragment/SubConversationListFragment;->initFragment(Landroid/net/Uri;)V

    .line 813
    :cond_1
    return-void
.end method
