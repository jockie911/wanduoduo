.class Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "PublicServiceProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iput-object p2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 246
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 230
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v1, v1, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    #getter for: Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mFollowBtn:Landroid/widget/Button;
    invoke-static {v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$300(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v1, v1, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    #getter for: Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mEnterBtn:Landroid/widget/Button;
    invoke-static {v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$400(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v1, v1, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    #getter for: Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mUnfollowBtn:Landroid/widget/Button;
    invoke-static {v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$500(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v2, v2, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v2}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v3}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Z)Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 235
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getPublicServiceBehaviorListener()Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;

    move-result-object v0

    .line 236
    .local v0, listener:Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v2, v2, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-interface {v0, v1, v2}, Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;->onUnFollowClick(Landroid/content/Context;Lio/rong/imlib/model/PublicServiceProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;

    iget-object v1, v1, Lio/rong/imkit/fragment/PublicServiceProfileFragment$4;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
