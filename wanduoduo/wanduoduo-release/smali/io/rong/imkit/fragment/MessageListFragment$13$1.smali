.class Lio/rong/imkit/fragment/MessageListFragment$13$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment$13;->onSuccess(Lio/rong/imlib/model/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/MessageListFragment$13;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment$13;)V
    .locals 0
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$13$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1012
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment$13$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$13;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment$13;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    #setter for: Lio/rong/imkit/fragment/MessageListFragment;->isOnClickBtn:Z
    invoke-static {v1, v4}, Lio/rong/imkit/fragment/MessageListFragment;->access$002(Lio/rong/imkit/fragment/MessageListFragment;Z)Z

    .line 1013
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment$13$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$13;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment$13;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 1014
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x43fa

    invoke-direct {v0, v3, v1, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1015
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1017
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment$13$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$13;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment$13;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1018
    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1019
    new-instance v1, Lio/rong/imkit/fragment/MessageListFragment$13$1$1;

    invoke-direct {v1, p0}, Lio/rong/imkit/fragment/MessageListFragment$13$1$1;-><init>(Lio/rong/imkit/fragment/MessageListFragment$13$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1046
    return-void
.end method
