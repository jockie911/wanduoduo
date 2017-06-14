.class Lio/rong/imkit/fragment/ConversationFragment$10;
.super Ljava/lang/Object;
.source "ConversationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/ConversationFragment;->onCustomServiceWarning(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/ConversationFragment;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$evaluate:Z


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationFragment;Landroid/app/AlertDialog;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment$10;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iput-object p2, p0, Lio/rong/imkit/fragment/ConversationFragment$10;->val$alertDialog:Landroid/app/AlertDialog;

    iput-boolean p3, p0, Lio/rong/imkit/fragment/ConversationFragment$10;->val$evaluate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 439
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$10;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 440
    iget-boolean v1, p0, Lio/rong/imkit/fragment/ConversationFragment$10;->val$evaluate:Z

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$10;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    const/4 v2, 0x0

    const-string v3, ""

    iget-object v4, p0, Lio/rong/imkit/fragment/ConversationFragment$10;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    #getter for: Lio/rong/imkit/fragment/ConversationFragment;->robotType:Z
    invoke-static {v4}, Lio/rong/imkit/fragment/ConversationFragment;->access$200(Lio/rong/imkit/fragment/ConversationFragment;)Z

    move-result v4

    iget-boolean v5, p0, Lio/rong/imkit/fragment/ConversationFragment$10;->val$evaluate:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/rong/imkit/fragment/ConversationFragment;->onCustomServiceEvaluation(ZLjava/lang/String;ZZ)Z

    .line 449
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$10;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 444
    .local v0, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 445
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$10;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
