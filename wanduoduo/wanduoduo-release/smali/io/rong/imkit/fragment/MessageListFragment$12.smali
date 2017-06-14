.class Lio/rong/imkit/fragment/MessageListFragment$12;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/MessageListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 651
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 653
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v7, v7, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 654
    .local v1, firstView:Landroid/view/View;
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v7, v7, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 656
    .local v2, lastView:Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 657
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v5

    iget-object v7, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v7, v7, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v7

    add-int v4, v5, v7

    .line 658
    .local v4, listViewPadding:I
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    move v5, v6

    :goto_0
    sub-int v0, v7, v5

    .line 659
    .local v0, childViewsHeight:I
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getBottom()I

    move-result v5

    sub-int v3, v5, v4

    .line 661
    .local v3, listViewHeight:I
    if-ge v0, v3, :cond_2

    .line 662
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 663
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 668
    :goto_1
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v5}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 671
    .end local v0           #childViewsHeight:I
    .end local v1           #firstView:Landroid/view/View;
    .end local v2           #lastView:Landroid/view/View;
    .end local v3           #listViewHeight:I
    .end local v4           #listViewPadding:I
    :cond_0
    return-void

    .line 658
    .restart local v1       #firstView:Landroid/view/View;
    .restart local v2       #lastView:Landroid/view/View;
    .restart local v4       #listViewPadding:I
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_0

    .line 665
    .restart local v0       #childViewsHeight:I
    .restart local v3       #listViewHeight:I
    :cond_2
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$12;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v5, v5, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setTranscriptMode(I)V

    goto :goto_1
.end method
