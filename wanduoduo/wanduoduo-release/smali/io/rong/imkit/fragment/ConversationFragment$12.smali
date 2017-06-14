.class Lio/rong/imkit/fragment/ConversationFragment$12;
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
    .line 536
    iput-object p1, p0, Lio/rong/imkit/fragment/ConversationFragment$12;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    iput-object p2, p0, Lio/rong/imkit/fragment/ConversationFragment$12;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 539
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment$12;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 540
    .local v1, index:I
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment$12;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 541
    .local v0, count:I
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment$12;->this$0:Lio/rong/imkit/fragment/ConversationFragment;

    add-int/lit8 v3, v1, 0x1

    #setter for: Lio/rong/imkit/fragment/ConversationFragment;->source:I
    invoke-static {v2, v3}, Lio/rong/imkit/fragment/ConversationFragment;->access$602(Lio/rong/imkit/fragment/ConversationFragment;I)I

    .line 542
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    :goto_0
    if-ltz v1, :cond_1

    .line 544
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment$12;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 545
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 548
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 549
    :goto_1
    if-ge v1, v0, :cond_1

    .line 550
    iget-object v2, p0, Lio/rong/imkit/fragment/ConversationFragment$12;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 554
    :cond_1
    return-void
.end method
