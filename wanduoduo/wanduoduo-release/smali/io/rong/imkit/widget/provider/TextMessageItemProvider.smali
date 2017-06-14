.class public Lio/rong/imkit/widget/provider/TextMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "TextMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/TextMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    messageContent = Lio/rong/message/TextMessage;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextMessageItemProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    check-cast p3, Lio/rong/message/TextMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 8
    .parameter "v"
    .parameter "position"
    .parameter "content"
    .parameter "data"

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;

    .line 149
    .local v0, holder:Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v3, v4, :cond_1

    .line 150
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_bubble_right:I

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/LinkTextView;->setBackgroundResource(I)V

    .line 155
    :goto_0
    iget-object v2, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    .line 156
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTextMessageContent()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 157
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTextMessageContent()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 158
    .local v1, len:I
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1f4

    if-le v1, v3, :cond_2

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lio/rong/imkit/widget/provider/TextMessageItemProvider$2;

    invoke-direct {v4, p0, v2, p4}, Lio/rong/imkit/widget/provider/TextMessageItemProvider$2;-><init>(Lio/rong/imkit/widget/provider/TextMessageItemProvider;Landroid/widget/TextView;Lio/rong/imkit/model/UIMessage;)V

    const-wide/16 v6, 0x32

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    .end local v1           #len:I
    :cond_0
    :goto_1
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    new-instance v4, Lio/rong/imkit/widget/LinkTextViewMovementMethod;

    new-instance v5, Lio/rong/imkit/widget/provider/TextMessageItemProvider$3;

    invoke-direct {v5, p0, p1}, Lio/rong/imkit/widget/provider/TextMessageItemProvider$3;-><init>(Lio/rong/imkit/widget/provider/TextMessageItemProvider;Landroid/view/View;)V

    invoke-direct {v4, v5}, Lio/rong/imkit/widget/LinkTextViewMovementMethod;-><init>(Lio/rong/imkit/widget/ILinkClickListener;)V

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/LinkTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 180
    return-void

    .line 152
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_1
    iget-object v3, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_bubble_left:I

    invoke-virtual {v3, v4}, Lio/rong/imkit/model/LinkTextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 166
    .restart local v1       #len:I
    .restart local v2       #textView:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTextMessageContent()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lio/rong/message/TextMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->getContentSummary(Lio/rong/message/TextMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/TextMessage;)Landroid/text/Spannable;
    .locals 3
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x64

    .line 58
    if-nez p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v1

    .line 61
    :cond_1
    invoke-virtual {p1}, Lio/rong/message/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, content:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    invoke-static {v0}, Lio/rong/imkit/utils/AndroidEmoji;->ensure(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "group"

    .prologue
    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_text_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    .local v1, view:Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/TextMessageItemProvider;)V

    .line 51
    .local v0, holder:Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/LinkTextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    .line 52
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    return-object v1
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    check-cast p3, Lio/rong/message/TextMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 74
    return-void
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    check-cast p3, Lio/rong/message/TextMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/TextMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 26
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;

    .line 79
    .local v11, holder:Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v11, Lio/rong/imkit/widget/provider/TextMessageItemProvider$ViewHolder;->longClick:Z

    .line 80
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v21, p1

    .line 81
    check-cast v21, Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    .line 82
    .local v19, text:Ljava/lang/CharSequence;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 83
    check-cast v19, Landroid/text/Spannable;

    .end local v19           #text:Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 86
    :cond_0
    const/4 v15, 0x0

    .line 87
    .local v15, name:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v22 .. v22}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v22 .. v22}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 89
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 90
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v15

    .line 110
    :cond_2
    :goto_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lio/rong/imkit/RongIM;->getDeltaTime()J

    move-result-wide v6

    .line 111
    .local v6, deltaTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v16, v22, v6

    .line 112
    .local v16, normalTime:J
    const/4 v9, 0x0

    .line 113
    .local v9, enableMessageRecall:Z
    const/4 v14, -0x1

    .line 114
    .local v14, messageRecallInterval:I
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v21

    sget-object v22, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual/range {v21 .. v22}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v21

    sget-object v22, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual/range {v21 .. v22}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const/4 v10, 0x1

    .line 117
    .local v10, hasSent:Z
    :goto_1
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    sget v22, Lio/rong/imkit/R$bool;->rc_enable_message_recall:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 118
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    sget v22, Lio/rong/imkit/R$integer;->rc_message_recall_interval:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 123
    :goto_2
    if-eqz v10, :cond_8

    if-eqz v9, :cond_8

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v22

    sub-long v22, v16, v22

    mul-int/lit16 v0, v14, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v21, v22, v24

    if-gtz v21, :cond_8

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 124
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v13, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lio/rong/imkit/R$string;->rc_dialog_item_message_copy:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v13, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v13, v21

    const/16 v21, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lio/rong/imkit/R$string;->rc_dialog_item_message_recall:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v13, v21

    .line 129
    .local v13, items:[Ljava/lang/String;
    :goto_3
    invoke-static {v15, v13}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v21

    new-instance v22, Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;-><init>(Lio/rong/imkit/widget/provider/TextMessageItemProvider;Landroid/view/View;Lio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v21 .. v22}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 143
    return-void

    .line 92
    .end local v6           #deltaTime:J
    .end local v9           #enableMessageRecall:Z
    .end local v10           #hasSent:Z
    .end local v13           #items:[Ljava/lang/String;
    .end local v14           #messageRecallInterval:I
    .end local v16           #normalTime:J
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lio/rong/imlib/model/Conversation$PublicServiceType;->setValue(I)Lio/rong/imlib/model/Conversation$PublicServiceType;

    move-result-object v18

    .line 93
    .local v18, publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v21

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v12

    .line 95
    .local v12, info:Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v12, :cond_2

    .line 96
    invoke-virtual {v12}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 99
    .end local v12           #info:Lio/rong/imlib/model/PublicServiceProfile;
    .end local v18           #publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_2

    .line 100
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v20

    .line 101
    .local v20, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_6

    .line 102
    :cond_5
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v21

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v20

    .line 104
    :cond_6
    if-eqz v20, :cond_2

    .line 105
    invoke-virtual/range {v20 .. v20}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 114
    .end local v20           #userInfo:Lio/rong/imlib/model/UserInfo;
    .restart local v6       #deltaTime:J
    .restart local v9       #enableMessageRecall:Z
    .restart local v14       #messageRecallInterval:I
    .restart local v16       #normalTime:J
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 119
    .restart local v10       #hasSent:Z
    :catch_0
    move-exception v8

    .line 120
    .local v8, e:Landroid/content/res/Resources$NotFoundException;
    const-string v21, "TextMessageItemProvider"

    const-string v22, "rc_message_recall_interval not configure in rc_config.xml"

    invoke-static/range {v21 .. v22}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v8}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 126
    .end local v8           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_8
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v13, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lio/rong/imkit/R$string;->rc_dialog_item_message_copy:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v13, v21

    const/16 v21, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v13, v21

    .restart local v13       #items:[Ljava/lang/String;
    goto/16 :goto_3
.end method
