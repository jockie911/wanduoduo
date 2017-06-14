.class public Lio/rong/imkit/widget/provider/PrivateConversationProvider;
.super Ljava/lang/Object;
.source "PrivateConversationProvider.java"

# interfaces
.implements Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider",
        "<",
        "Lio/rong/imkit/model/UIConversation;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ConversationProviderTag;
    conversationType = "private"
    portraitPosition = 0x1
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivateConversationProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;ILandroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    check-cast p3, Lio/rong/imkit/model/UIConversation;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imkit/widget/provider/PrivateConversationProvider;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V
    .locals 17
    .parameter "view"
    .parameter "position"
    .parameter "data"

    .prologue
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;

    .line 64
    .local v4, holder:Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;
    const/4 v9, 0x0

    .line 65
    .local v9, tag:Lio/rong/imkit/model/ProviderTag;
    if-nez p3, :cond_0

    .line 66
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->time:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getUIConversationTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lio/rong/imkit/utils/RongDateUtils;->getConversationListFormatDate(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 74
    .local v10, time:Ljava/lang/String;
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getDraft()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getMentionedFlag()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 78
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 80
    .local v1, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getMentionedFlag()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 81
    new-instance v8, Landroid/text/SpannableString;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lio/rong/imkit/R$string;->rc_message_content_mentioned:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 82
    .local v8, string:Landroid/text/SpannableString;
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lio/rong/imkit/R$color;->rc_mentioned_color:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v13, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v14

    const/16 v15, 0x21

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 83
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getConversationContent()Landroid/text/Spannable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 90
    :goto_1
    invoke-static {v1}, Lio/rong/imkit/utils/AndroidEmoji;->ensure(Landroid/text/Spannable;)V

    .line 92
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->readStatus:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    .end local v1           #builder:Landroid/text/SpannableStringBuilder;
    .end local v8           #string:Landroid/text/SpannableString;
    :goto_2
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 118
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getMessageContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Lio/rong/imkit/RongContext;->getMessageProviderTag(Ljava/lang/Class;)Lio/rong/imkit/model/ProviderTag;

    move-result-object v9

    .line 120
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v12

    sget-object v13, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    if-eq v12, v13, :cond_3

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v12

    sget-object v13, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    if-ne v12, v13, :cond_b

    :cond_3
    if-eqz v9, :cond_b

    invoke-interface {v9}, Lio/rong/imkit/model/ProviderTag;->showWarning()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lio/rong/imkit/R$drawable;->rc_conversation_list_msg_send_failure:I

    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 125
    .local v11, width:I
    const/4 v2, 0x0

    .line 126
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v12

    sget-object v13, Lio/rong/imlib/model/Message$SentStatus;->FAILED:Lio/rong/imlib/model/Message$SentStatus;

    if-ne v12, v13, :cond_a

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getDraft()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lio/rong/imkit/R$drawable;->rc_conversation_list_msg_send_failure:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 130
    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 131
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13, v11, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 133
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v2, v13, v14, v15}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 139
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v11           #width:I
    :cond_5
    :goto_4
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v13

    invoke-static {v12, v13}, Lio/rong/imkit/model/ConversationKey;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;)Lio/rong/imkit/model/ConversationKey;

    move-result-object v5

    .line 140
    .local v5, key:Lio/rong/imkit/model/ConversationKey;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v12

    invoke-virtual {v12, v5}, Lio/rong/imkit/RongContext;->getConversationNotifyStatusFromCache(Lio/rong/imkit/model/ConversationKey;)Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    move-result-object v7

    .line 141
    .local v7, status:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    if-eqz v7, :cond_c

    sget-object v12, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->DO_NOT_DISTURB:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    invoke-virtual {v7, v12}, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 142
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->notificationBlockImage:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 85
    .end local v5           #key:Lio/rong/imkit/model/ConversationKey;
    .end local v7           #status:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    .restart local v1       #builder:Landroid/text/SpannableStringBuilder;
    :cond_6
    new-instance v8, Landroid/text/SpannableString;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lio/rong/imkit/R$string;->rc_message_content_draft:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 86
    .restart local v8       #string:Landroid/text/SpannableString;
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lio/rong/imkit/R$color;->rc_draft_color:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-direct {v12, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v13, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v14

    const/16 v15, 0x21

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 87
    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getDraft()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 98
    .end local v1           #builder:Landroid/text/SpannableStringBuilder;
    .end local v8           #string:Landroid/text/SpannableString;
    :cond_7
    const/4 v6, 0x0

    .line 100
    .local v6, readRec:Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lio/rong/imkit/R$bool;->rc_read_receipt:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 106
    :goto_5
    if-eqz v6, :cond_8

    .line 107
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v12

    sget-object v13, Lio/rong/imlib/model/Message$SentStatus;->READ:Lio/rong/imlib/model/Message$SentStatus;

    if-ne v12, v13, :cond_9

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getConversationSenderId()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v13

    invoke-virtual {v13}, Lio/rong/imkit/RongIM;->getCurrentUserId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 109
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->readStatus:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    :cond_8
    :goto_6
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getConversationContent()Landroid/text/Spannable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 101
    :catch_0
    move-exception v3

    .line 102
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v12, "PrivateConversationProvider"

    const-string v13, "rc_read_receipt not configure in rc_config.xml"

    invoke-static {v12, v13}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_5

    .line 111
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_9
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->readStatus:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 128
    .end local v6           #readRec:Z
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v11       #width:I
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getSentStatus()Lio/rong/imlib/model/Message$SentStatus;

    move-result-object v12

    sget-object v13, Lio/rong/imlib/model/Message$SentStatus;->SENDING:Lio/rong/imlib/model/Message$SentStatus;

    if-ne v12, v13, :cond_4

    invoke-virtual/range {p3 .. p3}, Lio/rong/imkit/model/UIConversation;->getDraft()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lio/rong/imkit/R$drawable;->rc_conversation_list_msg_sending:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_3

    .line 136
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v11           #width:I
    :cond_b
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 144
    .restart local v5       #key:Lio/rong/imkit/model/ConversationKey;
    .restart local v7       #status:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;
    :cond_c
    iget-object v12, v4, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->notificationBlockImage:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public getPortraitUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "id"

    .prologue
    .line 166
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 171
    .local v0, uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 169
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/UserInfo;->getPortraitUri()Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #uri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public getSummary(Lio/rong/imkit/model/UIConversation;)Landroid/text/Spannable;
    .locals 1
    .parameter "data"

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "userId"

    .prologue
    .line 155
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 156
    move-object v0, p1

    .line 160
    .local v0, name:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 158
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "viewGroup"

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_base_conversation:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, result:Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/PrivateConversationProvider;)V

    .line 52
    .local v0, holder:Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_conversation_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->title:Landroid/widget/TextView;

    .line 53
    sget v2, Lio/rong/imkit/R$id;->rc_conversation_time:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->time:Landroid/widget/TextView;

    .line 54
    sget v2, Lio/rong/imkit/R$id;->rc_conversation_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->content:Landroid/widget/TextView;

    .line 55
    sget v2, Lio/rong/imkit/R$id;->rc_conversation_msg_block:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->notificationBlockImage:Landroid/widget/ImageView;

    .line 56
    sget v2, Lio/rong/imkit/R$id;->rc_conversation_status:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PrivateConversationProvider$ViewHolder;->readStatus:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    return-object v1
.end method
