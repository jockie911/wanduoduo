.class public Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "PublicServiceMultiRichContentMessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;,
        Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/PublicServiceMultiRichContentMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    centerInHorizontal = true
    messageContent = Lio/rong/message/PublicServiceMultiRichContentMessage;
    showPortrait = false
.end annotation


# instance fields
.field private mAdapter:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 182
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getListViewHeight(Landroid/widget/ListView;)I
    .locals 7
    .parameter "list"

    .prologue
    const/4 v6, 0x0

    .line 83
    const/4 v3, 0x0

    .line 84
    .local v3, totalHeight:I
    const/4 v2, 0x0

    .line 86
    .local v2, item:Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 87
    .local v0, adapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 88
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 89
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v3, v4, 0x2

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return v3
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    check-cast p3, Lio/rong/message/PublicServiceMultiRichContentMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->bindView(Landroid/view/View;ILio/rong/message/PublicServiceMultiRichContentMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/PublicServiceMultiRichContentMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 7
    .parameter "v"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    const/4 v6, 0x0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;

    .line 47
    .local v3, vh:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;
    invoke-virtual {p3}, Lio/rong/message/PublicServiceMultiRichContentMessage;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    .line 49
    .local v1, msgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lio/rong/message/RichContentItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 50
    iget-object v5, v3, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;->tv:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/message/RichContentItem;

    invoke-virtual {v4}, Lio/rong/message/RichContentItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v5, v3, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;->iv:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/message/RichContentItem;

    invoke-virtual {v4}, Lio/rong/message/RichContentItem;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v6}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Ljava/lang/String;I)V

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    .local v0, height:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 57
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    new-instance v4, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;

    iget-object v5, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v1}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;-><init>(Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->mAdapter:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;

    .line 58
    iget-object v4, v3, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;->lv:Landroid/widget/ListView;

    iget-object v5, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->mAdapter:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$PublicAccountMsgAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v4, v3, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;->lv:Landroid/widget/ListView;

    new-instance v5, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;

    invoke-direct {v5, p0, v1}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;-><init>(Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    iget-object v4, v3, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;->lv:Landroid/widget/ListView;

    invoke-direct {p0, v4}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->getListViewHeight(Landroid/widget/ListView;)I

    move-result v4

    iget v5, v3, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;->height:I

    add-int v0, v4, v5

    .line 76
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 80
    return-void
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Lio/rong/message/PublicServiceMultiRichContentMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->getContentSummary(Lio/rong/message/PublicServiceMultiRichContentMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/PublicServiceMultiRichContentMessage;)Landroid/text/Spannable;
    .locals 4
    .parameter "data"

    .prologue
    .line 99
    invoke-virtual {p1}, Lio/rong/message/PublicServiceMultiRichContentMessage;->getMessages()Ljava/util/ArrayList;

    move-result-object v0

    .line 100
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lio/rong/message/RichContentItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 101
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lio/rong/message/PublicServiceMultiRichContentMessage;->getMessages()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/message/RichContentItem;

    invoke-virtual {v1}, Lio/rong/message/RichContentItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v2

    .line 103
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "group"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 168
    iput-object p1, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->mContext:Landroid/content/Context;

    .line 169
    new-instance v0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;

    invoke-direct {v0, p0, v5}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$1;)V

    .line 171
    .local v0, holder:Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_public_service_multi_rich_content_message:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, view:Landroid/view/View;
    sget v2, Lio/rong/imkit/R$id;->rc_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;->lv:Landroid/widget/ListView;

    .line 173
    sget v2, Lio/rong/imkit/R$id;->rc_img:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;->iv:Lio/rong/imkit/widget/AsyncImageView;

    .line 174
    sget v2, Lio/rong/imkit/R$id;->rc_txt:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;->tv:Landroid/widget/TextView;

    .line 175
    invoke-virtual {v1, v4, v4}, Landroid/view/View;->measure(II)V

    .line 176
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$ViewHolder;->height:I

    .line 177
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 179
    return-object v1
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    check-cast p3, Lio/rong/message/PublicServiceMultiRichContentMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->onItemClick(Landroid/view/View;ILio/rong/message/PublicServiceMultiRichContentMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/PublicServiceMultiRichContentMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 5
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 109
    invoke-virtual {p3}, Lio/rong/message/PublicServiceMultiRichContentMessage;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p3}, Lio/rong/message/PublicServiceMultiRichContentMessage;->getMessages()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/rong/message/RichContentItem;

    invoke-virtual {v3}, Lio/rong/message/RichContentItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, url:Ljava/lang/String;
    const-string v0, "io.rong.imkit.intent.action.webview"

    .line 119
    .local v0, action:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    check-cast p3, Lio/rong/message/PublicServiceMultiRichContentMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/PublicServiceMultiRichContentMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/PublicServiceMultiRichContentMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 8
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->APP_PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lio/rong/imlib/model/Conversation$ConversationType;->PUBLIC_SERVICE:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation$ConversationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    :cond_0
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 131
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 146
    :cond_1
    :goto_0
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lio/rong/imkit/R$string;->rc_dialog_item_message_delete:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 148
    .local v1, items:[Ljava/lang/String;
    invoke-static {v2, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$2;

    invoke-direct {v6, p0, p4}, Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider$2;-><init>(Lio/rong/imkit/widget/provider/PublicServiceMultiRichContentMessageProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v6, v5}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 157
    return-void

    .line 133
    .end local v1           #items:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v5

    invoke-static {v5}, Lio/rong/imlib/model/Conversation$PublicServiceType;->setValue(I)Lio/rong/imlib/model/Conversation$PublicServiceType;

    move-result-object v3

    .line 134
    .local v3, publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v0

    .line 136
    .local v0, info:Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 140
    .end local v0           #info:Lio/rong/imlib/model/PublicServiceProfile;
    .end local v3           #publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    :cond_3
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    .line 141
    .local v4, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v4, :cond_1

    .line 142
    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
