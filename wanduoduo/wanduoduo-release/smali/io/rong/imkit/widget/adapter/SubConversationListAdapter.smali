.class public Lio/rong/imkit/widget/adapter/SubConversationListAdapter;
.super Lio/rong/imkit/widget/adapter/BaseAdapter;
.source "SubConversationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/adapter/BaseAdapter",
        "<",
        "Lio/rong/imkit/model/UIConversation;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;-><init>()V

    .line 47
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V
    .locals 12
    .parameter "v"
    .parameter "position"
    .parameter "data"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x63

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;

    .line 92
    .local v1, holder:Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v2

    .line 94
    .local v2, provider:Lio/rong/imkit/widget/provider/IContainerItemProvider;
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    invoke-virtual {v5, v2}, Lio/rong/imkit/widget/ProviderContainerView;->inflate(Lio/rong/imkit/widget/provider/IContainerItemProvider;)Landroid/view/View;

    move-result-object v4

    .line 96
    .local v4, view:Landroid/view/View;
    invoke-interface {v2, v4, p2, p3}, Lio/rong/imkit/widget/provider/IContainerItemProvider;->bindView(Landroid/view/View;ILandroid/os/Parcelable;)V

    .line 99
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->layout:Landroid/view/View;

    iget-object v6, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$color;->rc_conversation_top_bg:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    :goto_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->getConversationProviderTag(Ljava/lang/String;)Lio/rong/imkit/model/ConversationProviderTag;

    move-result-object v3

    .line 107
    .local v3, tag:Lio/rong/imkit/model/ConversationProviderTag;
    const/4 v0, 0x0

    .line 108
    .local v0, defaultId:I
    invoke-interface {v3}, Lio/rong/imkit/model/ConversationProviderTag;->portraitPosition()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 109
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v5, v6, :cond_1

    .line 112
    sget v0, Lio/rong/imkit/R$drawable;->rc_default_group_portrait:I

    .line 119
    :goto_1
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 120
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    .line 125
    :goto_2
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    if-lez v5, :cond_6

    .line 126
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadType()Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    move-result-object v5

    sget-object v6, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    invoke-virtual {v5, v6}, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 128
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    if-le v5, v10, :cond_4

    .line 130
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    iget-object v6, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$string;->rc_message_unread_count:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_3
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    sget v6, Lio/rong/imkit/R$drawable;->rc_unread_count_bg:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    :goto_4
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :goto_5
    return-void

    .line 102
    .end local v0           #defaultId:I
    .end local v3           #tag:Lio/rong/imkit/model/ConversationProviderTag;
    :cond_0
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->layout:Landroid/view/View;

    iget-object v6, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$color;->rc_text_color_primary_inverse:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 113
    .restart local v0       #defaultId:I
    .restart local v3       #tag:Lio/rong/imkit/model/ConversationProviderTag;
    :cond_1
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v5, v6, :cond_2

    .line 114
    sget v0, Lio/rong/imkit/R$drawable;->rc_default_discussion_portrait:I

    goto :goto_1

    .line 116
    :cond_2
    sget v0, Lio/rong/imkit/R$drawable;->rc_default_portrait:I

    goto :goto_1

    .line 122
    :cond_3
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v5, v11, v0}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto :goto_2

    .line 132
    :cond_4
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 136
    :cond_5
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    sget v6, Lio/rong/imkit/R$drawable;->rc_unread_remind_without_count:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 140
    :cond_6
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 144
    :cond_7
    invoke-interface {v3}, Lio/rong/imkit/model/ConversationProviderTag;->portraitPosition()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    .line 145
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v5, v6, :cond_9

    .line 148
    sget v0, Lio/rong/imkit/R$drawable;->rc_default_group_portrait:I

    .line 155
    :goto_6
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 156
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    .line 161
    :goto_7
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    if-lez v5, :cond_8

    .line 162
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadType()Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    move-result-object v5

    sget-object v6, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    invoke-virtual {v5, v6}, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 165
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    if-le v5, v10, :cond_c

    .line 166
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    iget-object v6, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$string;->rc_message_unread_count:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_8
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    sget v6, Lio/rong/imkit/R$drawable;->rc_unread_count_bg:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    :cond_8
    :goto_9
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 149
    :cond_9
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    if-ne v5, v6, :cond_a

    .line 150
    sget v0, Lio/rong/imkit/R$drawable;->rc_default_discussion_portrait:I

    goto :goto_6

    .line 152
    :cond_a
    sget v0, Lio/rong/imkit/R$drawable;->rc_default_portrait:I

    goto :goto_6

    .line 158
    :cond_b
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v5, v11, v0}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto :goto_7

    .line 168
    :cond_c
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 172
    :cond_d
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    sget v6, Lio/rong/imkit/R$drawable;->rc_unread_remind_without_count:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 177
    :cond_e
    invoke-interface {v3}, Lio/rong/imkit/model/ConversationProviderTag;->portraitPosition()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_f

    .line 178
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 181
    :cond_f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "the portrait position is wrong!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected bridge synthetic bindView(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    check-cast p3, Lio/rong/imkit/model/UIConversation;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V

    return-void
.end method

.method public findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 4
    .parameter "type"
    .parameter "targetId"

    .prologue
    .line 52
    invoke-virtual {p0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getCount()I

    move-result v0

    .line 53
    .local v0, index:I
    const/4 v2, -0x1

    .local v2, position:I
    move v1, v0

    .line 55
    .end local v0           #index:I
    .local v1, index:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    if-lez v1, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    move v2, v0

    .line 63
    :cond_0
    return v2

    :cond_1
    move v1, v0

    .end local v0           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .parameter "position"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/UIConversation;

    .line 27
    .local v0, conversation:Lio/rong/imkit/model/UIConversation;
    if-nez v0, :cond_0

    .line 28
    const-wide/16 v2, 0x0

    .line 29
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v2, v1

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "position"
    .parameter "group"

    .prologue
    .line 68
    iget-object v2, p0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lio/rong/imkit/R$layout;->rc_item_conversation:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, result:Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;-><init>(Lio/rong/imkit/widget/adapter/SubConversationListAdapter;)V

    .line 71
    .local v0, holder:Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_item_conversation:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->layout:Landroid/view/View;

    .line 72
    sget v2, Lio/rong/imkit/R$id;->rc_item1:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    .line 73
    sget v2, Lio/rong/imkit/R$id;->rc_item2:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    .line 74
    sget v2, Lio/rong/imkit/R$id;->rc_left:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    .line 75
    sget v2, Lio/rong/imkit/R$id;->rc_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    .line 76
    sget v2, Lio/rong/imkit/R$id;->rc_content:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/ProviderContainerView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    .line 77
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    .line 78
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    .line 79
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message_icon:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    .line 80
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message_icon_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/SubConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/SubConversationListAdapter$ViewHolder;->unReadMsgCountRightIcon:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    return-object v1
.end method
