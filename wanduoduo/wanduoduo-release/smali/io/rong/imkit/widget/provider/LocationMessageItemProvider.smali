.class public Lio/rong/imkit/widget/provider/LocationMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "LocationMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/LocationMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    messageContent = Lio/rong/message/LocationMessage;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationMessageItemProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 36
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
    .line 32
    check-cast p3, Lio/rong/message/LocationMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/LocationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/LocationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 9
    .parameter "v"
    .parameter "position"
    .parameter "content"
    .parameter "uiMsg"

    .prologue
    const/4 v8, 0x0

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;

    .line 122
    .local v0, holder:Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;
    invoke-virtual {p3}, Lio/rong/message/LocationMessage;->getImgUri()Landroid/net/Uri;

    move-result-object v2

    .line 123
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "LocationMessageItemProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/rong/common/RLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    :cond_0
    iget-object v3, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->img:Lio/rong/imkit/widget/AsyncImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Landroid/net/Uri;)V

    .line 130
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x50

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v3, v4, :cond_2

    .line 134
    iget-object v3, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->mLayout:Landroid/widget/FrameLayout;

    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_bubble_no_right:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 135
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 136
    const/high16 v3, 0x4140

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 137
    iget-object v3, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    :goto_1
    iget-object v3, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/message/LocationMessage;->getPoi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void

    .line 127
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v3, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->img:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v3, v2}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Landroid/net/Uri;)V

    goto :goto_0

    .line 139
    .restart local v1       #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    const-wide/high16 v4, 0x4021

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 140
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 141
    iget-object v3, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v3, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->mLayout:Landroid/widget/FrameLayout;

    sget v4, Lio/rong/imkit/R$drawable;->rc_ic_bubble_no_left:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Lio/rong/message/LocationMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;->getContentSummary(Lio/rong/message/LocationMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/LocationMessage;)Landroid/text/Spannable;
    .locals 3
    .parameter "data"

    .prologue
    .line 149
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_message_content_location:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "group"

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_location_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, view:Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/LocationMessageItemProvider;)V

    .line 48
    .local v0, holder:Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_img:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->img:Lio/rong/imkit/widget/AsyncImageView;

    .line 49
    sget v2, Lio/rong/imkit/R$id;->rc_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->title:Landroid/widget/TextView;

    .line 50
    sget v2, Lio/rong/imkit/R$id;->rc_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$ViewHolder;->mLayout:Landroid/widget/FrameLayout;

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
    .line 32
    check-cast p3, Lio/rong/message/LocationMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/LocationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/LocationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 59
    return-void
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    check-cast p3, Lio/rong/message/LocationMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/LocationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/LocationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 22
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 63
    const/4 v12, 0x0

    .line 65
    .local v12, name:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual/range {v18 .. v18}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 67
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 68
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 86
    :cond_1
    :goto_0
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/RongIM;->getDeltaTime()J

    move-result-wide v4

    .line 87
    .local v4, deltaTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v14, v18, v4

    .line 88
    .local v14, normalTime:J
    const/4 v7, 0x0

    .line 89
    .local v7, enableMessageRecall:Z
    const/4 v11, -0x1

    .line 90
    .local v11, messageRecallInterval:I
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v17

    sget-object v18, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual/range {v17 .. v18}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v17

    sget-object v18, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual/range {v17 .. v18}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const/4 v8, 0x1

    .line 93
    .local v8, hasSent:Z
    :goto_1
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lio/rong/imkit/R$bool;->rc_enable_message_recall:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 94
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lio/rong/imkit/R$integer;->rc_message_recall_interval:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 100
    :goto_2
    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v18

    sub-long v18, v14, v18

    mul-int/lit16 v0, v11, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-gtz v17, :cond_6

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 101
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v10, v17

    const/16 v17, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_dialog_item_message_recall:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v10, v17

    .line 106
    .local v10, items:[Ljava/lang/String;
    :goto_3
    invoke-static {v12, v10}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v17

    new-instance v18, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/provider/LocationMessageItemProvider$1;-><init>(Lio/rong/imkit/widget/provider/LocationMessageItemProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual/range {v17 .. v18}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 117
    return-void

    .line 70
    .end local v4           #deltaTime:J
    .end local v7           #enableMessageRecall:Z
    .end local v8           #hasSent:Z
    .end local v10           #items:[Ljava/lang/String;
    .end local v11           #messageRecallInterval:I
    .end local v14           #normalTime:J
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lio/rong/imlib/model/Conversation$PublicServiceType;->setValue(I)Lio/rong/imlib/model/Conversation$PublicServiceType;

    move-result-object v13

    .line 71
    .local v13, publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v17

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v9

    .line 73
    .local v9, info:Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v9, :cond_1

    .line 74
    invoke-virtual {v9}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 77
    .end local v9           #info:Lio/rong/imlib/model/PublicServiceProfile;
    .end local v13           #publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 78
    .local v16, userInfo:Lio/rong/imlib/model/UserInfo;
    if-nez v16, :cond_4

    .line 79
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v17

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v16

    .line 80
    :cond_4
    if-eqz v16, :cond_1

    .line 81
    invoke-virtual/range {v16 .. v16}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 90
    .end local v16           #userInfo:Lio/rong/imlib/model/UserInfo;
    .restart local v4       #deltaTime:J
    .restart local v7       #enableMessageRecall:Z
    .restart local v11       #messageRecallInterval:I
    .restart local v14       #normalTime:J
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 95
    .restart local v8       #hasSent:Z
    :catch_0
    move-exception v6

    .line 96
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    const-string v17, "LocationMessageItemProvider"

    const-string v18, "rc_message_recall_interval not configure in rc_config.xml"

    invoke-static/range {v17 .. v18}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v6}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 103
    .end local v6           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v10, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v10, v17

    .restart local v10       #items:[Ljava/lang/String;
    goto/16 :goto_3
.end method
