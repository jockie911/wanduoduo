.class Lio/rong/imkit/fragment/MessageListFragment$7$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment$7;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/fragment/MessageListFragment$7;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment$7;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$7$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 459
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment$7$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$7;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment$7;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    #getter for: Lio/rong/imkit/fragment/MessageListFragment;->isOnClickBtn:Z
    invoke-static {v1}, Lio/rong/imkit/fragment/MessageListFragment;->access$000(Lio/rong/imkit/fragment/MessageListFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x442f

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 461
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 462
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 463
    iget-object v1, p0, Lio/rong/imkit/fragment/MessageListFragment$7$1;->this$1:Lio/rong/imkit/fragment/MessageListFragment$7;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment$7;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v1, v1, Lio/rong/imkit/fragment/MessageListFragment;->mUnreadBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 468
    .end local v0           #animation:Landroid/view/animation/TranslateAnimation;
    :cond_0
    return-void
.end method
