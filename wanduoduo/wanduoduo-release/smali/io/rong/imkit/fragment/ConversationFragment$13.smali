.class Lio/rong/imkit/fragment/ConversationFragment$13;
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


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment$13;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iput-object p2, p0, Lio/rong/imkit/fragment/ConversationFragment$13;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 562
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$13;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    const/4 v2, 0x0

    #setter for: Lio/rong/imkit/fragment/ConversationFragment;->committing:Z
    invoke-static {v1, v2}, Lio/rong/imkit/fragment/ConversationFragment;->access$302(Lio/rong/imkit/fragment/ConversationFragment;Z)Z

    .line 563
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$13;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 564
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$13;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 565
    .local v0, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 566
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$13;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
