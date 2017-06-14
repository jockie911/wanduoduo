.class Lio/rong/imkit/fragment/ConversationAddMemberFragment$3;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "ConversationAddMemberFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationAddMemberFragment;->onDeleteIconClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationAddMemberFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$3;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    iput p2, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$3;->val$position:I

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 171
    iget-object v0, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$3;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    invoke-virtual {v0}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 164
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 165
    iget v1, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$3;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationAddMemberFragment$3;->this$0:Lio/rong/imkit/fragment/ConversationAddMemberFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationAddMemberFragment;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    return-void
.end method
