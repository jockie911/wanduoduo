.class Lio/rong/imkit/fragment/SubConversationListFragment$7$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "SubConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/SubConversationListFragment$7;->OnArraysDialogItemClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/SubConversationListFragment$7;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/SubConversationListFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lio/rong/imkit/fragment/SubConversationListFragment$7$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$7;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 775
    return-void
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "aBoolean"

    .prologue
    const/4 v3, 0x0

    .line 765
    iget-object v0, p0, Lio/rong/imkit/fragment/SubConversationListFragment$7$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$7;

    iget-object v0, v0, Lio/rong/imkit/fragment/SubConversationListFragment$7;->val$uiConversation:Lio/rong/imkit/model/UIConversation;

    invoke-virtual {v0}, Lio/rong/imkit/model/UIConversation;->isTop()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 766
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment$7$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$7;

    iget-object v1, v1, Lio/rong/imkit/fragment/SubConversationListFragment$7;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    sget v2, Lio/rong/imkit/R$string;->rc_conversation_list_popup_cancel_top:I

    invoke-virtual {v1, v2}, Lio/rong/imkit/fragment/SubConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 770
    :goto_0
    return-void

    .line 768
    :cond_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/fragment/SubConversationListFragment$7$1;->this$1:Lio/rong/imkit/fragment/SubConversationListFragment$7;

    iget-object v1, v1, Lio/rong/imkit/fragment/SubConversationListFragment$7;->this$0:Lio/rong/imkit/fragment/SubConversationListFragment;

    sget v2, Lio/rong/imkit/R$string;->rc_conversation_list_dialog_set_top:I

    invoke-virtual {v1, v2}, Lio/rong/imkit/fragment/SubConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 762
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/SubConversationListFragment$7$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
