.class public Lio/rong/imkit/widget/provider/ImageMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "ImageMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/ImageMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    messageContent = Lio/rong/message/ImageMessage;
    showProgress = false
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageMessageItemProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 38
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
    .line 33
    check-cast p3, Lio/rong/message/ImageMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/ImageMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/ImageMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 6
    .parameter "v"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;

    .line 116
    .local v0, holder:Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v3

    sget-object v4, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v3, v4, :cond_0

    .line 117
    sget v3, Lio/rong/imkit/R$drawable;->rc_ic_bubble_no_right:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 122
    :goto_0
    iget-object v3, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->img:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p3}, Lio/rong/message/ImageMessage;->getThumUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Landroid/net/Uri;)V

    .line 124
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getProgress()I

    move-result v1

    .line 126
    .local v1, progress:I
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v2

    .line 128
    .local v2, status:Lio/rong/imlib/model/Message$SentStatus;
    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x64

    if-ge v1, v3, :cond_1

    .line 129
    iget-object v3, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->message:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v3, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->message:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_1
    return-void

    .line 119
    .end local v1           #progress:I
    .end local v2           #status:Lio/rong/imlib/model/Message$SentStatus;
    :cond_0
    sget v3, Lio/rong/imkit/R$drawable;->rc_ic_bubble_no_left:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 132
    .restart local v1       #progress:I
    .restart local v2       #status:Lio/rong/imlib/model/Message$SentStatus;
    :cond_1
    iget-object v3, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->message:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Lio/rong/message/ImageMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;->getContentSummary(Lio/rong/message/ImageMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/ImageMessage;)Landroid/text/Spannable;
    .locals 3
    .parameter "data"

    .prologue
    .line 138
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/rong/imkit/R$string;->rc_message_content_image:I

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
    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_image_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, view:Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/ImageMessageItemProvider;)V

    .line 49
    .local v0, holder:Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_msg:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->message:Landroid/widget/TextView;

    .line 50
    sget v2, Lio/rong/imkit/R$id;->rc_img:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$ViewHolder;->img:Lio/rong/imkit/widget/AsyncImageView;

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
    .line 33
    check-cast p3, Lio/rong/message/ImageMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/ImageMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/ImageMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 3
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 58
    if-eqz p3, :cond_0

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/rong/imkit/activity/PicturePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    check-cast p3, Lio/rong/message/ImageMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/ImageMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/ImageMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 18
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 67
    const/4 v9, 0x0

    .line 70
    .local v9, name:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 71
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v12

    .line 72
    .local v12, userInfo:Lio/rong/imlib/model/UserInfo;
    if-nez v12, :cond_0

    .line 73
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v12

    .line 74
    :cond_0
    if-eqz v12, :cond_1

    .line 75
    invoke-virtual {v12}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 78
    .end local v12           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imkit/RongIM;->getDeltaTime()J

    move-result-wide v2

    .line 79
    .local v2, deltaTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v2

    .line 80
    .local v10, normalTime:J
    const/4 v5, 0x0

    .line 81
    .local v5, enableMessageRecall:Z
    const/4 v8, -0x1

    .line 82
    .local v8, messageRecallInterval:I
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v13

    sget-object v14, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v13, v14}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v13

    sget-object v14, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v13, v14}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const/4 v6, 0x1

    .line 85
    .local v6, hasSent:Z
    :goto_0
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lio/rong/imkit/R$bool;->rc_enable_message_recall:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 86
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lio/rong/imkit/R$integer;->rc_message_recall_interval:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 92
    :goto_1
    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v14

    sub-long v14, v10, v14

    mul-int/lit16 v13, v8, 0x3e8

    int-to-long v0, v13

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_3

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 93
    const/4 v13, 0x2

    new-array v7, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v13

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lio/rong/imkit/R$string;->rc_dialog_item_message_recall:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v13

    .line 98
    .local v7, items:[Ljava/lang/String;
    :goto_2
    invoke-static {v9, v7}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v13

    new-instance v14, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v14, v0, v1}, Lio/rong/imkit/widget/provider/ImageMessageItemProvider$1;-><init>(Lio/rong/imkit/widget/provider/ImageMessageItemProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v13, v14}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v14, v13}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 110
    return-void

    .line 82
    .end local v6           #hasSent:Z
    .end local v7           #items:[Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 87
    .restart local v6       #hasSent:Z
    :catch_0
    move-exception v4

    .line 88
    .local v4, e:Landroid/content/res/Resources$NotFoundException;
    const-string v13, "ImageMessageItemProvider"

    const-string v14, "rc_message_recall_interval not configure in rc_config.xml"

    invoke-static {v13, v14}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v4}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 95
    .end local v4           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_3
    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v13

    .restart local v7       #items:[Ljava/lang/String;
    goto :goto_2
.end method
