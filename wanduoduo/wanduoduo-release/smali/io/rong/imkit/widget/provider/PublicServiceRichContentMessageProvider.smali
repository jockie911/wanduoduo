.class public Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "PublicServiceRichContentMessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/PublicServiceRichContentMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    centerInHorizontal = true
    messageContent = Lio/rong/message/PublicServiceRichContentMessage;
    showPortrait = false
.end annotation


# instance fields
.field private height:I

.field private mContext:Landroid/content/Context;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 130
    return-void
.end method

.method private formatDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "timeMillis"
    .parameter "format"

    .prologue
    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    check-cast p3, Lio/rong/message/PublicServiceRichContentMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;->bindView(Landroid/view/View;ILio/rong/message/PublicServiceRichContentMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/PublicServiceRichContentMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 8
    .parameter "v"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;

    .line 63
    .local v1, holder:Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v2

    check-cast v2, Lio/rong/message/PublicServiceRichContentMessage;

    .line 65
    .local v2, msg:Lio/rong/message/PublicServiceRichContentMessage;
    iget-object v5, v1, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lio/rong/message/PublicServiceRichContentMessage;->getMessage()Lio/rong/message/RichContentItem;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/message/RichContentItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v5, v1, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v2}, Lio/rong/message/PublicServiceRichContentMessage;->getMessage()Lio/rong/message/RichContentItem;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/message/RichContentItem;->getDigest()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget v4, p0, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;->width:I

    .line 69
    .local v4, w:I
    iget v0, p0, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;->height:I

    .line 71
    .local v0, h:I
    iget-object v5, v1, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;->imageView:Lio/rong/imkit/widget/AsyncImageView;

    invoke-virtual {v2}, Lio/rong/message/PublicServiceRichContentMessage;->getMessage()Lio/rong/message/RichContentItem;

    move-result-object v6

    invoke-virtual {v6}, Lio/rong/message/RichContentItem;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getReceivedTime()J

    move-result-wide v6

    const-string v5, "MM\u6708dd\u65e5 HH:mm"

    invoke-direct {p0, v6, v7, v5}, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, time:Ljava/lang/String;
    iget-object v5, v1, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Lio/rong/message/PublicServiceRichContentMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;->getContentSummary(Lio/rong/message/PublicServiceRichContentMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/PublicServiceRichContentMessage;)Landroid/text/Spannable;
    .locals 2
    .parameter "data"

    .prologue
    .line 83
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lio/rong/message/PublicServiceRichContentMessage;->getMessage()Lio/rong/message/RichContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/message/RichContentItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "group"

    .prologue
    const/4 v6, 0x0

    .line 41
    iput-object p1, p0, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;

    invoke-direct {v0, p0, v6}, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$1;)V

    .line 43
    .local v0, holder:Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lio/rong/imkit/R$layout;->rc_item_public_service_rich_content_message:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 45
    .local v2, view:Landroid/view/View;
    sget v4, Lio/rong/imkit/R$id;->rc_title:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;->title:Landroid/widget/TextView;

    .line 46
    sget v4, Lio/rong/imkit/R$id;->rc_time:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;->time:Landroid/widget/TextView;

    .line 47
    sget v4, Lio/rong/imkit/R$id;->rc_content:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;->description:Landroid/widget/TextView;

    .line 48
    sget v4, Lio/rong/imkit/R$id;->rc_img:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v4, v0, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$ViewHolder;->imageView:Lio/rong/imkit/widget/AsyncImageView;

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 51
    .local v1, m:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    add-int/lit8 v3, v4, -0x23

    .line 52
    .local v3, w:I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    add-int/lit8 v4, v3, -0x64

    iput v4, p0, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;->width:I

    .line 54
    const/16 v4, 0x320

    iput v4, p0, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;->height:I

    .line 55
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    return-object v2
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    check-cast p3, Lio/rong/message/PublicServiceRichContentMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;->onItemClick(Landroid/view/View;ILio/rong/message/PublicServiceRichContentMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/PublicServiceRichContentMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 4
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 89
    invoke-virtual {p3}, Lio/rong/message/PublicServiceRichContentMessage;->getMessage()Lio/rong/message/RichContentItem;

    move-result-object v3

    invoke-virtual {v3}, Lio/rong/message/RichContentItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, url:Ljava/lang/String;
    const-string v0, "io.rong.imkit.intent.action.webview"

    .line 91
    .local v0, action:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v3, p0, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    check-cast p3, Lio/rong/message/PublicServiceRichContentMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/PublicServiceRichContentMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/PublicServiceRichContentMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 8
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 99
    const/4 v2, 0x0

    .line 100
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

    .line 102
    :cond_0
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 103
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getUserInfo()Lio/rong/imlib/model/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 118
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

    .line 120
    .local v1, items:[Ljava/lang/String;
    invoke-static {v2, v1}, Lio/rong/imkit/widget/ArraysDialogFragment;->newInstance(Ljava/lang/String;[Ljava/lang/String;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$1;

    invoke-direct {v6, p0, p4}, Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider$1;-><init>(Lio/rong/imkit/widget/provider/PublicServiceRichContentMessageProvider;Lio/rong/imkit/model/UIMessage;)V

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/ArraysDialogFragment;->setArraysDialogItemListener(Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;)Lio/rong/imkit/widget/ArraysDialogFragment;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v6, v5}, Lio/rong/imkit/widget/ArraysDialogFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    .line 128
    return-void

    .line 105
    .end local v1           #items:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imlib/model/Conversation$ConversationType;->getValue()I

    move-result v5

    invoke-static {v5}, Lio/rong/imlib/model/Conversation$PublicServiceType;->setValue(I)Lio/rong/imlib/model/Conversation$PublicServiceType;

    move-result-object v3

    .line 106
    .local v3, publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getTargetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getPublicServiceProfile(Lio/rong/imlib/model/Conversation$PublicServiceType;Ljava/lang/String;)Lio/rong/imlib/model/PublicServiceProfile;

    move-result-object v0

    .line 108
    .local v0, info:Lio/rong/imlib/model/PublicServiceProfile;
    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 112
    .end local v0           #info:Lio/rong/imlib/model/PublicServiceProfile;
    .end local v3           #publicServiceType:Lio/rong/imlib/model/Conversation$PublicServiceType;
    :cond_3
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v5

    invoke-virtual {p4}, Lio/rong/imkit/model/UIMessage;->getSenderUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getUserInfo(Ljava/lang/String;)Lio/rong/imlib/model/UserInfo;

    move-result-object v4

    .line 113
    .local v4, userInfo:Lio/rong/imlib/model/UserInfo;
    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {v4}, Lio/rong/imlib/model/UserInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
