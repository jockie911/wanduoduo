.class public Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "EvaluateTextMessageItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 44
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
    .line 42
    check-cast p3, Lio/rong/message/TextMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;->bindView(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 10
    .parameter "v"
    .parameter "position"
    .parameter "content"
    .parameter "data"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;

    .line 139
    .local v6, holder:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getMessageDirection()Lio/rong/imlib/model/Message$MessageDirection;

    move-result-object v0

    sget-object v1, Lio/rong/imlib/model/Message$MessageDirection;->SEND:Lio/rong/imlib/model/Message$MessageDirection;

    if-ne v0, v1, :cond_1

    .line 140
    sget v0, Lio/rong/imkit/R$drawable;->rc_ic_bubble_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 144
    :goto_0
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getEvaluated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_yes:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_no:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_complete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->tv_prompt:Landroid/widget/TextView;

    const-string v1, "\u611f\u8c22\u60a8\u7684\u8bc4\u4ef7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_1
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_yes:Landroid/widget/ImageView;

    new-instance v1, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$2;

    invoke-direct {v1, p0, p4, v6}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$2;-><init>(Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;Lio/rong/imkit/model/UIMessage;Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_no:Landroid/widget/ImageView;

    new-instance v1, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;

    invoke-direct {v1, p0, p4, v6}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$3;-><init>(Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;Lio/rong/imkit/model/UIMessage;Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v8, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    .line 203
    .local v8, textView:Landroid/widget/TextView;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTextMessageContent()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTextMessageContent()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 205
    .local v7, len:I
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1f4

    if-le v7, v0, :cond_3

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$4;

    invoke-direct {v1, p0, v8, p4}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$4;-><init>(Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;Landroid/widget/TextView;Lio/rong/imkit/model/UIMessage;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    .end local v7           #len:I
    :cond_0
    :goto_2
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/LinkTextView;->setClickable(Z)V

    .line 218
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    new-instance v1, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$5;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$5;-><init>(Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/LinkTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v9, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    new-instance v0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$6;-><init>(Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v9, v0}, Lio/rong/imkit/model/LinkTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 231
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    new-instance v1, Lio/rong/imkit/widget/LinkTextViewMovementMethod;

    new-instance v2, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$7;

    invoke-direct {v2, p0, p1}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$7;-><init>(Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;Landroid/view/View;)V

    invoke-direct {v1, v2}, Lio/rong/imkit/widget/LinkTextViewMovementMethod;-><init>(Lio/rong/imkit/widget/ILinkClickListener;)V

    invoke-virtual {v0, v1}, Lio/rong/imkit/model/LinkTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 242
    return-void

    .line 142
    .end local v8           #textView:Landroid/widget/TextView;
    :cond_1
    sget v0, Lio/rong/imkit/R$drawable;->rc_ic_bubble_left:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 153
    :cond_2
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_yes:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_no:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_complete:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, v6, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->tv_prompt:Landroid/widget/TextView;

    const-string v1, "\u60a8\u5bf9\u6211\u7684\u56de\u7b54"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 213
    .restart local v7       #len:I
    .restart local v8       #textView:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTextMessageContent()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Lio/rong/message/TextMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;->getContentSummary(Lio/rong/message/TextMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/TextMessage;)Landroid/text/Spannable;
    .locals 3
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x64

    .line 71
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v1

    .line 74
    :cond_1
    invoke-virtual {p1}, Lio/rong/message/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, content:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 79
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
    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_text_message_evaluate:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, view:Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;)V

    .line 59
    .local v0, holder:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->evaluate_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/model/LinkTextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->message:Lio/rong/imkit/model/LinkTextView;

    .line 60
    sget v2, Lio/rong/imkit/R$id;->tv_prompt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->tv_prompt:Landroid/widget/TextView;

    .line 61
    sget v2, Lio/rong/imkit/R$id;->iv_yes:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_yes:Landroid/widget/ImageView;

    .line 62
    sget v2, Lio/rong/imkit/R$id;->iv_no:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_no:Landroid/widget/ImageView;

    .line 63
    sget v2, Lio/rong/imkit/R$id;->iv_complete:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->iv_complete:Landroid/widget/ImageView;

    .line 64
    sget v2, Lio/rong/imkit/R$id;->layout_praise:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->layout_praise:Landroid/widget/RelativeLayout;

    .line 65
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    return-object v1
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    check-cast p3, Lio/rong/message/TextMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 87
    return-void
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 42
    check-cast p3, Lio/rong/message/TextMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 11
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    const/4 v10, 0x1

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;

    .line 92
    .local v0, holder:Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;
    iput-boolean v10, v0, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$ViewHolder;->longClick:Z

    .line 93
    instance-of v7, p1, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    move-object v7, p1

    .line 94
    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 95
    .local v5, text:Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    instance-of v7, v5, Landroid/text/Spannable;

    if-eqz v7, :cond_0

    .line 96
    check-cast v5, Landroid/text/Spannable;

    .end local v5           #text:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 99
    :cond_0
    const/4 v3, 0x0

    .line 100
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v8}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v8}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 102
    :cond_1
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v7

    invoke-static {v7}, Lio/rong/imlib/model/Conversation$PublicServiceType;->setValue(I)Lio/rong/imlib/model/Conversation$PublicServiceType;

    move-result-object v4

    .line 103
    .local v4, publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v7

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v1

    .line 105
    .local v1, info:Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v1}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v3

    .line 119
    .end local v1           #info:Lio/rong/imlib/model/PublicServiceProfile;
    .end local v4           #publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    :cond_2
    :goto_0
    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lio/rong/imkit/R$string;->rc_dialog_item_message_copy:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v10

    .line 121
    .local v2, items:[Ljava/lang/String;
    invoke-static {v3, v2}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v7

    new-instance v8, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$1;

    invoke-direct {v8, p0, p1, p3, p4}, Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider$1;-><init>(Lio/rong/imkit/widget/provider/EvaluateTextMessageItemProvider;Landroid/view/View;Lio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v7, v8}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v8, v7}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 134
    return-void

    .line 108
    .end local v2           #items:[Ljava/lang/String;
    :cond_3
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 109
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v6

    .line 110
    .local v6, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 111
    :cond_4
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v7

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v6

    .line 113
    :cond_5
    if-eqz v6, :cond_2

    .line 114
    invoke-virtual {v6}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
