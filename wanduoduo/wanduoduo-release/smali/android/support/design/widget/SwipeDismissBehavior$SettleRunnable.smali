.class Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "SwipeDismissBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final mDismiss:Z

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Landroid/support/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "dismiss"

    .prologue
    .line 368
    .local p0, this:Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;,"Landroid/support/design/widget/SwipeDismissBehavior<TV;>.SettleRunnable;"
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    .line 370
    iput-boolean p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->mDismiss:Z

    .line 371
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 375
    .local p0, this:Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;,"Landroid/support/design/widget/SwipeDismissBehavior<TV;>.SettleRunnable;"
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    #getter for: Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->access$100(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    #getter for: Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;
    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->access$100(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->mDismiss:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    #getter for: Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;
    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->access$000(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    #getter for: Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;
    invoke-static {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->access$000(Landroid/support/design/widget/SwipeDismissBehavior;)Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    goto :goto_0
.end method
