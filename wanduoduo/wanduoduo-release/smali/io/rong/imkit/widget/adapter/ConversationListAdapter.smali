.class public Lio/rong/imkit/widget/adapter/ConversationListAdapter;
.super Lio/rong/imkit/widget/adapter/BaseAdapter;
.source "ConversationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/adapter/ConversationListAdapter$OnPortraitItemClick;,
        Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;
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


# static fields
.field private static final TAG:Ljava/lang/String; = "ConversationListAdapter"


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mOnPortraitItemClick:Lio/rong/imkit/widget/adapter/ConversationListAdapter$OnPortraitItemClick;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Lio/rong/imkit/widget/adapter/BaseAdapter;-><init>()V

    .line 49
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/adapter/ConversationListAdapter;)Lio/rong/imkit/widget/adapter/ConversationListAdapter$OnPortraitItemClick;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mOnPortraitItemClick:Lio/rong/imkit/widget/adapter/ConversationListAdapter$OnPortraitItemClick;

    return-object v0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V
    .locals 12
    .parameter "v"
    .parameter "position"
    .parameter "data"

    .prologue
    const/16 v11, 0x63

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;

    .line 116
    .local v1, holder:Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;
    if-nez p3, :cond_0

    .line 260
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->getConversationTemplate(Ljava/lang/String;)Lio/rong/imkit/widget/provider/IContainerItemProvider$ConversationProvider;

    move-result-object v2

    .line 121
    .local v2, provider:Lio/rong/imkit/widget/provider/IContainerItemProvider;
    if-nez v2, :cond_1

    .line 122
    const-string v5, "ConversationListAdapter"

    const-string v6, "provider is null"

    invoke-static {v5, v6}, Lio/rong/common/RLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :cond_1
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    invoke-virtual {v5, v2}, Lio/rong/imkit/widget/ProviderContainerView;->inflate(Lio/rong/imkit/widget/provider/IContainerItemProvider;)Landroid/view/View;

    move-result-object v4

    .line 127
    .local v4, view:Landroid/view/View;
    invoke-interface {v2, v4, p2, p3}, Lio/rong/imkit/widget/provider/IContainerItemProvider;->bindView(Landroid/view/View;ILandroid/os/Parcelable;)V

    .line 130
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->layout:Landroid/view/View;

    iget-object v6, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$drawable;->rc_item_top_list_selector:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :goto_1
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v5

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongContext;->getConversationProviderTag(Ljava/lang/String;)Lio/rong/imkit/model/ConversationProviderTag;

    move-result-object v3

    .line 139
    .local v3, tag:Lio/rong/imkit/model/ConversationProviderTag;
    const/4 v0, 0x0

    .line 140
    .local v0, defaultId:I
    invoke-interface {v3}, Lio/rong/imkit/model/ConversationProviderTag;->portraitPosition()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 141
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 143
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v5, v6}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 144
    sget v0, Lio/rong/imkit/R$drawable;->rc_default_group_portrait:I

    .line 150
    :goto_2
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    new-instance v6, Lio/rong/imkit/widget/adapter/ConversationListAdapter$1;

    invoke-direct {v6, p0, p3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter$1;-><init>(Lio/rong/imkit/widget/adapter/ConversationListAdapter;Lio/rong/imkit/model/UIConversation;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    new-instance v6, Lio/rong/imkit/widget/adapter/ConversationListAdapter$2;

    invoke-direct {v6, p0, p3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter$2;-><init>(Lio/rong/imkit/widget/adapter/ConversationListAdapter;Lio/rong/imkit/model/UIConversation;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationGatherState()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v5, v10, v0}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    .line 175
    :goto_3
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    if-lez v5, :cond_9

    .line 176
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadType()Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    move-result-object v5

    sget-object v6, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    invoke-virtual {v5, v6}, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 178
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    if-le v5, v11, :cond_7

    .line 179
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    iget-object v6, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$string;->rc_message_unread_count:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :goto_4
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    sget v6, Lio/rong/imkit/R$drawable;->rc_unread_count_bg:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    :goto_5
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 133
    .end local v0           #defaultId:I
    .end local v3           #tag:Lio/rong/imkit/model/ConversationProviderTag;
    :cond_2
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->layout:Landroid/view/View;

    iget-object v6, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$drawable;->rc_item_list_selector:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 145
    .restart local v0       #defaultId:I
    .restart local v3       #tag:Lio/rong/imkit/model/ConversationProviderTag;
    :cond_3
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v5, v6}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 146
    sget v0, Lio/rong/imkit/R$drawable;->rc_default_discussion_portrait:I

    goto/16 :goto_2

    .line 148
    :cond_4
    sget v0, Lio/rong/imkit/R$drawable;->rc_default_portrait:I

    goto/16 :goto_2

    .line 168
    :cond_5
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 169
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto :goto_3

    .line 171
    :cond_6
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v5, v10, v0}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 181
    :cond_7
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 186
    :cond_8
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    sget v6, Lio/rong/imkit/R$drawable;->rc_unread_remind_list_count:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 192
    :cond_9
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 197
    :cond_a
    invoke-interface {v3}, Lio/rong/imkit/model/ConversationProviderTag;->portraitPosition()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_12

    .line 198
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    new-instance v6, Lio/rong/imkit/widget/adapter/ConversationListAdapter$3;

    invoke-direct {v6, p0, p3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter$3;-><init>(Lio/rong/imkit/widget/adapter/ConversationListAdapter;Lio/rong/imkit/model/UIConversation;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    new-instance v6, Lio/rong/imkit/widget/adapter/ConversationListAdapter$4;

    invoke-direct {v6, p0, p3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter$4;-><init>(Lio/rong/imkit/widget/adapter/ConversationListAdapter;Lio/rong/imkit/model/UIConversation;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 216
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->GROUP:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v5, v6}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 217
    sget v0, Lio/rong/imkit/R$drawable;->rc_default_group_portrait:I

    .line 224
    :goto_6
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationGatherState()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 225
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v5, v10, v0}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    .line 234
    :goto_7
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    if-lez v5, :cond_11

    .line 235
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadType()Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    move-result-object v5

    sget-object v6, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->REMIND_WITH_COUNTING:Lio/rong/imkit/model/UIConversation$UnreadRemindType;

    invoke-virtual {v5, v6}, Lio/rong/imkit/model/UIConversation$UnreadRemindType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 237
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v5

    if-le v5, v11, :cond_f

    .line 239
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    iget-object v6, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$string;->rc_message_unread_count:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_8
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRightIcon:Landroid/widget/ImageView;

    sget v6, Lio/rong/imkit/R$drawable;->rc_unread_count_bg:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    :goto_9
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 218
    :cond_b
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->DISCUSSION:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v5, v6}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 219
    sget v0, Lio/rong/imkit/R$drawable;->rc_default_discussion_portrait:I

    goto :goto_6

    .line 221
    :cond_c
    sget v0, Lio/rong/imkit/R$drawable;->rc_default_portrait:I

    goto :goto_6

    .line 227
    :cond_d
    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 228
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getIconUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto :goto_7

    .line 230
    :cond_e
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v5, v10, v0}, Lio/rong/imkit/widget/AsyncImageView;->setAvatar(Ljava/lang/String;I)V

    goto :goto_7

    .line 241
    :cond_f
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/imkit/model/UIConversation;->getUnReadMessageCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 245
    :cond_10
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRightIcon:Landroid/widget/ImageView;

    sget v6, Lio/rong/imkit/R$drawable;->rc_unread_remind_without_count:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 249
    :cond_11
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 254
    :cond_12
    invoke-interface {v3}, Lio/rong/imkit/model/ConversationProviderTag;->portraitPosition()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_13

    .line 255
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v5, v1, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 258
    :cond_13
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
    .line 20
    check-cast p3, Lio/rong/imkit/model/UIConversation;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->bindView(Landroid/view/View;ILio/rong/imkit/model/UIConversation;)V

    return-void
.end method

.method public findGatherPosition(Lio/rong/imlib/model/Conversation$ConversationType;)I
    .locals 5
    .parameter "type"

    .prologue
    .line 55
    invoke-virtual {p0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v0

    .line 56
    .local v0, index:I
    const/4 v2, -0x1

    .line 58
    .local v2, position:I
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v0

    .line 60
    .end local v0           #index:I
    .local v1, index:I
    add-int/lit8 v0, v1, -0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    if-lez v1, :cond_1

    .line 61
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    move v2, v0

    .line 68
    :cond_1
    return v2
.end method

.method public findPosition(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;)I
    .locals 5
    .parameter "type"
    .parameter "targetId"

    .prologue
    .line 72
    invoke-virtual {p0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getCount()I

    move-result v0

    .line 73
    .local v0, index:I
    const/4 v2, -0x1

    .line 74
    .local v2, position:I
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v3

    invoke-virtual {p1}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/rong/imkit/RongContext;->getConversationGatherState(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v0

    .line 75
    .end local v0           #index:I
    .local v1, index:I
    add-int/lit8 v0, v1, -0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    if-lez v1, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    move v2, v0

    .line 90
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v1, v0

    .line 82
    .end local v0           #index:I
    .restart local v1       #index:I
    add-int/lit8 v0, v1, -0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    if-lez v1, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-virtual {v3, p1}, Lio/rong/imlib/model/Conversation$ConversationType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v3}, Lio/rong/imkit/model/UIConversation;->getConversationTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    move v2, v0

    .line 86
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4
    .parameter "position"

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/model/UIConversation;

    .line 28
    .local v0, conversation:Lio/rong/imkit/model/UIConversation;
    if-nez v0, :cond_0

    .line 29
    const-wide/16 v2, 0x0

    .line 30
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
    .line 95
    iget-object v2, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lio/rong/imkit/R$layout;->rc_item_conversation:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, result:Landroid/view/View;
    new-instance v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;-><init>(Lio/rong/imkit/widget/adapter/ConversationListAdapter;)V

    .line 98
    .local v0, holder:Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_item_conversation:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->layout:Landroid/view/View;

    .line 99
    sget v2, Lio/rong/imkit/R$id;->rc_item1:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageLayout:Landroid/view/View;

    .line 100
    sget v2, Lio/rong/imkit/R$id;->rc_item2:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageLayout:Landroid/view/View;

    .line 101
    sget v2, Lio/rong/imkit/R$id;->rc_left:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->leftImageView:Lio/rong/imkit/widget/AsyncImageView;

    .line 102
    sget v2, Lio/rong/imkit/R$id;->rc_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->rightImageView:Lio/rong/imkit/widget/AsyncImageView;

    .line 103
    sget v2, Lio/rong/imkit/R$id;->rc_content:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/ProviderContainerView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->contentView:Lio/rong/imkit/widget/ProviderContainerView;

    .line 104
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCount:Landroid/widget/TextView;

    .line 105
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRight:Landroid/widget/TextView;

    .line 106
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message_icon:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountIcon:Landroid/widget/ImageView;

    .line 107
    sget v2, Lio/rong/imkit/R$id;->rc_unread_message_icon_right:I

    invoke-virtual {p0, v1, v2}, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/adapter/ConversationListAdapter$ViewHolder;->unReadMsgCountRightIcon:Landroid/widget/ImageView;

    .line 108
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    return-object v1
.end method

.method public setOnPortraitItemClick(Lio/rong/imkit/widget/adapter/ConversationListAdapter$OnPortraitItemClick;)V
    .locals 0
    .parameter "onPortraitItemClick"

    .prologue
    .line 271
    iput-object p1, p0, Lio/rong/imkit/widget/adapter/ConversationListAdapter;->mOnPortraitItemClick:Lio/rong/imkit/widget/adapter/ConversationListAdapter$OnPortraitItemClick;

    .line 272
    return-void
.end method
