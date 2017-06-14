.class Lio/rong/imkit/fragment/SetConversationNotificationFragment$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "SetConversationNotificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/SetConversationNotificationFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/SetConversationNotificationFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/SetConversationNotificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lio/rong/imkit/fragment/SetConversationNotificationFragment$1;->this$0:Lio/rong/imkit/fragment/SetConversationNotificationFragment;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 44
    iget-object v1, p0, Lio/rong/imkit/fragment/SetConversationNotificationFragment$1;->this$0:Lio/rong/imkit/fragment/SetConversationNotificationFragment;

    iget-object v0, p0, Lio/rong/imkit/fragment/SetConversationNotificationFragment$1;->this$0:Lio/rong/imkit/fragment/SetConversationNotificationFragment;

    invoke-virtual {v0}, Lio/rong/imkit/fragment/SetConversationNotificationFragment;->getSwitchBtnStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lio/rong/imkit/fragment/SetConversationNotificationFragment;->setSwitchBtnStatus(Z)V

    .line 46
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSuccess(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V
    .locals 2
    .parameter "notificationStatus"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v1, p0, Lio/rong/imkit/fragment/SetConversationNotificationFragment$1;->this$0:Lio/rong/imkit/fragment/SetConversationNotificationFragment;

    sget-object v0, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;->DO_NOT_DISTURB:Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lio/rong/imkit/fragment/SetConversationNotificationFragment;->setSwitchBtnStatus(Z)V

    .line 39
    :cond_0
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;

    .end local p1
    invoke-virtual {p0, p1}, Lio/rong/imkit/fragment/SetConversationNotificationFragment$1;->onSuccess(Lio/rong/imlib/model/Conversation$ConversationNotificationStatus;)V

    return-void
.end method
