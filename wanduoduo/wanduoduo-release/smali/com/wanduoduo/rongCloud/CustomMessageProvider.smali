.class public Lcom/wanduoduo/rongCloud/CustomMessageProvider;
.super Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;
.source "CustomMessageProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lio/rong/imkit/widget/provider/IContainerItemProvider$MessageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;ILandroid/os/Parcelable;)V
    .locals 0
    .parameter "view"
    .parameter "i"
    .parameter "parcelable"

    .prologue
    .line 45
    return-void
.end method

.method public bindView(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "view"
    .parameter "i"
    .parameter "messageContent"
    .parameter "uiMessage"

    .prologue
    .line 20
    return-void
.end method

.method public getContentSummary(Lio/rong/imlib/model/MessageContent;)Landroid/text/Spannable;
    .locals 1
    .parameter "messageContent"

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "viewGroup"

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public onItemClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "view"
    .parameter "i"
    .parameter "messageContent"
    .parameter "uiMessage"

    .prologue
    .line 30
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;ILio/rong/imlib/model/MessageContent;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter "view"
    .parameter "i"
    .parameter "messageContent"
    .parameter "uiMessage"

    .prologue
    .line 35
    return-void
.end method
