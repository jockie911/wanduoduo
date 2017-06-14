.class Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;
.super Lio/rong/imlib/RongIMClient$OperationCallback;
.source "PublicServiceProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iput-object p2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$OperationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 208
    iget-object v0, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v0, v0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    #getter for: Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mLoadingDialogFragment:Lio/rong/imkit/widget/LoadingDialogFragment;
    invoke-static {v0}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$200(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Lio/rong/imkit/widget/LoadingDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/widget/LoadingDialogFragment;->dismiss()V

    .line 209
    return-void
.end method

.method public onSuccess()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v1, v1, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    #getter for: Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mLoadingDialogFragment:Lio/rong/imkit/widget/LoadingDialogFragment;
    invoke-static {v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$200(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Lio/rong/imkit/widget/LoadingDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/widget/LoadingDialogFragment;->dismiss()V

    .line 191
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v1, v1, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    #getter for: Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mFollowBtn:Landroid/widget/Button;
    invoke-static {v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$300(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v1, v1, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    #getter for: Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mEnterBtn:Landroid/widget/Button;
    invoke-static {v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$400(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v1, v1, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    #getter for: Lio/rong/imkit/fragment/PublicServiceProfileFragment;->mUnfollowBtn:Landroid/widget/Button;
    invoke-static {v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->access$500(Lio/rong/imkit/fragment/PublicServiceProfileFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    invoke-static {}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->getInstance()Lio/rong/imkit/userInfoCache/RongUserInfoManager;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v2, v2, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v1, v2}, Lio/rong/imkit/userInfoCache/RongUserInfoManager;->setPublicServiceProfile(Lio/rong/imlib/model/PublicServiceProfile;)V

    .line 196
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getEventBus()Lio/rong/eventbus/EventBus;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v2, v2, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v2}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v3}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Z)Lio/rong/imkit/model/Event$PublicServiceFollowableEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/rong/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/rong/imkit/RongContext;->getPublicServiceBehaviorListener()Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;

    move-result-object v0

    .line 198
    .local v0, listener:Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v2, v2, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-interface {v0, v1, v2}, Lio/rong/imkit/RongIM$PublicServiceBehaviorListener;->onFollowClick(Landroid/content/Context;Lio/rong/imlib/model/PublicServiceProfile;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v1, v1, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 202
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v2, v2, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->this$0:Lio/rong/imkit/fragment/PublicServiceProfileFragment;

    invoke-virtual {v2}, Lio/rong/imkit/fragment/PublicServiceProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v3, v3, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v3}, Lio/rong/imlib/model/PublicServiceProfile;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v4, v4, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v4}, Lio/rong/imlib/model/PublicServiceProfile;->getTargetId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3$1;->this$1:Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;

    iget-object v5, v5, Lio/rong/imkit/fragment/PublicServiceProfileFragment$3;->val$info:Lio/rong/imlib/model/PublicServiceProfile;

    invoke-virtual {v5}, Lio/rong/imlib/model/PublicServiceProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/rong/imkit/RongIM;->startConversation(Landroid/content/Context;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
