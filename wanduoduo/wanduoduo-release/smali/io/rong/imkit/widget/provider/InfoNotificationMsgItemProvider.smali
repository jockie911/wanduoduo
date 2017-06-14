.class public Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "InfoNotificationMsgItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider",
        "<",
        "Lio/rong/message/InformationNotificationMessage;",
        ">;"
    }
.end annotation

.annotation runtime Lio/rong/imkit/model/ProviderTag;
    centerInHorizontal = true
    messageContent = Lio/rong/message/InformationNotificationMessage;
    showPortrait = false
    showProgress = false
    showSummaryWithName = false
    showWarning = false
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    .line 99
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
    .line 30
    check-cast p3, Lio/rong/message/InformationNotificationMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider;->bindView(Landroid/view/View;ILio/rong/message/InformationNotificationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/message/InformationNotificationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 3
    .parameter "v"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider$ViewHolder;

    .line 38
    .local v0, viewHolder:Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider$ViewHolder;
    if-eqz p3, :cond_0

    .line 39
    invoke-virtual {p3}, Lio/rong/message/InformationNotificationMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    iget-object v1, v0, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Lio/rong/message/InformationNotificationMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_0
    return-void
.end method

.method public bridge synthetic getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Lio/rong/message/InformationNotificationMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider;->getContentSummary(Lio/rong/message/InformationNotificationMessage;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public getContentSummary(Lio/rong/message/InformationNotificationMessage;)Landroid/text/Spannable;
    .locals 2
    .parameter "data"

    .prologue
    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/rong/message/InformationNotificationMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lio/rong/message/InformationNotificationMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "group"

    .prologue
    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$layout;->rc_item_information_notification_message:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, view:Landroid/view/View;
    new-instance v1, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider$ViewHolder;

    invoke-direct {v1, p0}, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider$ViewHolder;-><init>(Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider;)V

    .line 91
    .local v1, viewHolder:Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider$ViewHolder;
    sget v2, Lio/rong/imkit/R$id;->rc_msg:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    .line 92
    iget-object v2, v1, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider$ViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    return-object v0
.end method

.method public bridge synthetic onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 30
    check-cast p3, Lio/rong/message/InformationNotificationMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider;->onItemClick(Landroid/view/View;ILio/rong/message/InformationNotificationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/message/InformationNotificationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 55
    return-void
.end method

.method public bridge synthetic onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 30
    check-cast p3, Lio/rong/message/InformationNotificationMessage;

    .end local p3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/rong/imkit/widget/provider/InfoNotificationMsgItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/InformationNotificationMessage;Lio/rong/imkit/model/UIMessage;)V

    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/message/InformationNotificationMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "view"
    .parameter "position"
    .parameter "content"
    .parameter "message"

    .prologue
    .line 85
    return-void
.end method
