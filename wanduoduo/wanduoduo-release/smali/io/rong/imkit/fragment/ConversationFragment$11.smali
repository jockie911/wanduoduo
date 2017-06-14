.class Lio/rong/imkit/fragment/ConversationFragment$11;
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

.field final synthetic val$linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/ConversationFragment;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment$11;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iput-object p2, p0, Lio/rong/imkit/fragment/ConversationFragment$11;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 516
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 517
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$11;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 518
    .local v0, index:I
    if-nez v0, :cond_0

    .line 519
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$11;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 520
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$11;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    #setter for: Lio/rong/imkit/fragment/ConversationFragment;->resolved:Z
    invoke-static {v1, v3}, Lio/rong/imkit/fragment/ConversationFragment;->access$502(Lio/rong/imkit/fragment/ConversationFragment;Z)Z

    .line 525
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$11;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    #setter for: Lio/rong/imkit/fragment/ConversationFragment;->resolved:Z
    invoke-static {v1, v2}, Lio/rong/imkit/fragment/ConversationFragment;->access$502(Lio/rong/imkit/fragment/ConversationFragment;Z)Z

    .line 523
    iget-object v1, p0, Lio/rong/imkit/fragment/ConversationFragment$11;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method
