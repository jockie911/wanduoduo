.class public Lio/rong/imkit/widget/provider/FileMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "FileMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/FileMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    messageContent = Lio/rong/message/FileMessage;
    showProgress = false
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FileMessageItemProvider"


# instance fields
.field private holder:Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 40
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
    .line 35
    check-cast p3, Lio/rong/message/FileMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/FileMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/FileMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/FileMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 5
    .parameter "v"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;

    iput-object v2, p0, Lio/rong/imkit/widget/provider/FileMessageItemProvider;->holder:Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;

    .line 80
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v2, v3, :cond_0

    .line 81
    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_bubble_right_file:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    :goto_0
    iget-object v2, p0, Lio/rong/imkit/widget/provider/FileMessageItemProvider;->holder:Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;->fileName:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/message/FileMessage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p3}, Lio/rong/message/FileMessage;->getSize()J

    move-result-wide v0

    .line 87
    .local v0, fileSizeBytes:J
    iget-object v2, p0, Lio/rong/imkit/widget/provider/FileMessageItemProvider;->holder:Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;->fileSize:Landroid/widget/TextView;

    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lio/rong/imkit/utils/FileTypeUtils;->formatFileSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lio/rong/imkit/widget/provider/FileMessageItemProvider;->holder:Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;->fileTypeImage:Landroid/widget/ImageView;

    invoke-static {}, Lio/rong/imkit/utils/FileTypeUtils;->getInstance()Lio/rong/imkit/utils/FileTypeUtils;

    move-result-object v3

    invoke-virtual {p3}, Lio/rong/message/FileMessage;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/utils/FileTypeUtils;->fileTypeImageId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v2

    sget-object v3, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v2, v3}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 91
    iget-object v2, p0, Lio/rong/imkit/widget/provider/FileMessageItemProvider;->holder:Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;->fileUploadProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    iget-object v2, p0, Lio/rong/imkit/widget/provider/FileMessageItemProvider;->holder:Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;->fileUploadProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 96
    :goto_1
    return-void

    .line 83
    .end local v0           #fileSizeBytes:J
    :cond_0
    sget v2, Lio/rong/imkit/R$drawable;->rc_ic_bubble_left_file:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 94
    .restart local v0       #fileSizeBytes:J
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/widget/provider/FileMessageItemProvider;->holder:Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;->fileUploadProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lio/rong/message/FileMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/FileMessageItemProvider;->getContentSummary(Lio/rong/message/FileMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/FileMessage;)Landroid/text/Spannable;
    .locals 4
    .parameter "data"

    .prologue
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v1, summaryPhrase:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lio/rong/message/FileMessage;->getName()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, fileName:Ljava/lang/String;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_message_content_file:I

    invoke-virtual {v2, v3}, Lio/rong/imkit/RongContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "group"

    .prologue
    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_file_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, view:Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/FileMessageItemProvider;)V

    .line 58
    .local v0, holder:Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_msg_iv_file_type_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;->fileTypeImage:Landroid/widget/ImageView;

    .line 59
    sget v2, Lio/rong/imkit/R$id;->rc_msg_tv_file_name:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;->fileName:Landroid/widget/TextView;

    .line 60
    sget v2, Lio/rong/imkit/R$id;->rc_msg_tv_file_size:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;->fileSize:Landroid/widget/TextView;

    .line 61
    sget v2, Lio/rong/imkit/R$id;->rc_msg_pb_file_upload_progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/FileMessageItemProvider$ViewHolder;->fileUploadProgress:Landroid/widget/ProgressBar;

    .line 62
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    return-object v1
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    check-cast p3, Lio/rong/message/FileMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/FileMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/FileMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/FileMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 3
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/rong/imkit/activity/FilePreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FileMessage"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    const-string v1, "Message"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 35
    check-cast p3, Lio/rong/message/FileMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/FileMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/FileMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/FileMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 18
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 141
    const/4 v9, 0x0

    .line 144
    .local v9, name:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 145
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v12

    .line 146
    .local v12, userInfo:Lio/rong/imlib/model/UserInfo;
    if-nez v12, :cond_0

    .line 147
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v13

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v12

    .line 148
    :cond_0
    if-eqz v12, :cond_1

    .line 149
    invoke-virtual {v12}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 152
    .end local v12           #userInfo:Lio/rong/imlib/model/UserInfo;
    :cond_1
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imkit/RongIM;->getDeltaTime()J

    move-result-wide v2

    .line 153
    .local v2, deltaTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v2

    .line 154
    .local v10, normalTime:J
    const/4 v5, 0x0

    .line 155
    .local v5, enableMessageRecall:Z
    const/4 v8, -0x1

    .line 156
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

    .line 159
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

    .line 160
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imkit/RongContext;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lio/rong/imkit/R$integer;->rc_message_recall_interval:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 165
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v13

    sget-object v14, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    invoke-virtual {v13, v14}, Lio/rong/imlib/model/Message$SentStatus;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getProgress()I

    move-result v13

    const/16 v14, 0x64

    if-ge v13, v14, :cond_3

    .line 187
    :goto_2
    return-void

    .line 156
    .end local v6           #hasSent:Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 161
    .restart local v6       #hasSent:Z
    :catch_0
    move-exception v4

    .line 162
    .local v4, e:Landroid/content/res/Resources$NotFoundException;
    const-string v13, "FileMessageItemProvider"

    const-string v14, "rc_message_recall_interval not configure in rc_config.xml"

    invoke-static {v13, v14}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v4}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 169
    .end local v4           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_3
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSentTime()J

    move-result-wide v14

    sub-long v14, v10, v14

    mul-int/lit16 v13, v8, 0x3e8

    int-to-long v0, v13

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_4

    invoke-virtual/range {p4 .. p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v14

    invoke-virtual {v14}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 170
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

    .line 175
    .local v7, items:[Ljava/lang/String;
    :goto_3
    invoke-static {v9, v7}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v13

    new-instance v14, Lio/rong/imkit/widget/provider/FileMessageItemProvider$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v14, v0, v1}, Lio/rong/imkit/widget/provider/FileMessageItemProvider$1;-><init>(Lio/rong/imkit/widget/provider/FileMessageItemProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v13, v14}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v13

    invoke-virtual {v14, v13}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_2

    .line 172
    .end local v7           #items:[Ljava/lang/String;
    :cond_4
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
    goto :goto_3
.end method
