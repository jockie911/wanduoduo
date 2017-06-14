.class Lio/rong/imkit/fragment/ConversationFragment$14;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationFragment;->onCustomServiceEvaluation(ZLjava/lang/String;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationFragment;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$dialogId:Ljava/lang/String;

.field final synthetic val$robotType:Z


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationFragment;ZLjava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iput-boolean p2, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->val$robotType:Z

    iput-object p3, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->val$dialogId:Ljava/lang/String;

    iput-object p4, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 576
    iget-boolean v1, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->val$robotType:Z

    if-eqz v1, :cond_1

    .line 577
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationFragment;->resolved:Z
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationFragment;->access$500(Lio/rong/imkit/fragment/ConversationFragment;)Z

    move-result v3

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4}, Lio/rong/imlib/RongIMClient;->evaluateCustomService(Ljava/lang/String;ZLjava/lang/String;)V

    .line 583
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 584
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    const/4 v2, 0x0

    #setter for: Lio/rong/imkit/fragment/ConversationFragment;->committing:Z
    invoke-static {v1, v2}, Lio/rong/imkit/fragment/ConversationFragment;->access$302(Lio/rong/imkit/fragment/ConversationFragment;Z)Z

    .line 585
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 586
    .local v0, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 587
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 591
    :goto_1
    return-void

    .line 579
    .end local v0           #fm:Landroid/support/v4/app/FragmentManager;
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationFragment;->source:I
    invoke-static {v1}, Lio/rong/imkit/fragment/ConversationFragment;->access$600(Lio/rong/imkit/fragment/ConversationFragment;)I

    move-result v1

    if-lez v1, :cond_0

    .line 580
    invoke-static {}, Lio/rong/imlib/RongIMClient;->getInstance()Lio/rong/imlib/RongIMClient;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iget-object v2, v2, Lio/rong/imkit/fragment/ConversationFragment;->mTargetId:Ljava/lang/String;

    iget-object v3, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationFragment;->source:I
    invoke-static {v3}, Lio/rong/imkit/fragment/ConversationFragment;->access$600(Lio/rong/imkit/fragment/ConversationFragment;)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->val$dialogId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/rong/imlib/RongIMClient;->evaluateCustomService(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    .restart local v0       #fm:Landroid/support/v4/app/FragmentManager;
    :cond_2
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$14;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1
.end method
