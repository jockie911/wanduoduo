.class Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;
.super Ljava/lang/Object;
.source "TextMessageItemProvider.java"

# interfaces
.implements Lio/rong/imkit/widget/ArraysDialogFragment$OnArraysDialogItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/TextMessageItemProvider;->onItemLongClick(Landroid/view/View;ILio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/TextMessageItemProvider;

.field final synthetic val$content:Lio/rong/message/TextMessage;

.field final synthetic val$message:Lio/rong/imkit/model/UIMessage;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/TextMessageItemProvider;Landroid/view/View;Lio/rong/message/TextMessage;Lio/rong/imkit/model/UIMessage;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;->this$0:Lio/rong/imkit/widget/provider/TextMessageItemProvider;

    iput-object p2, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;->val$content:Lio/rong/message/TextMessage;

    iput-object p4, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;->val$message:Lio/rong/imkit/model/UIMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnArraysDialogItemClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 132
    if-nez p2, :cond_1

    .line 134
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 135
    .local v0, clipboard:Landroid/text/ClipboardManager;
    iget-object v1, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;->val$content:Lio/rong/message/TextMessage;

    invoke-virtual {v1}, Lio/rong/message/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .end local v0           #clipboard:Landroid/text/ClipboardManager;
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    if-ne p2, v2, :cond_2

    .line 137
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;->val$message:Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v4}, Lio/rong/imkit/model/UIMessage;->getMessageId()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lio/rong/imkit/RongIM;->deleteMessages([ILio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0

    .line 138
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 139
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/TextMessageItemProvider$1;->val$message:Lio/rong/imkit/model/UIMessage;

    invoke-virtual {v1, v2}, Lio/rong/imkit/RongIM;->recallMessage(Lio/rong/imlib/model/Message;)V

    goto :goto_0
.end method
