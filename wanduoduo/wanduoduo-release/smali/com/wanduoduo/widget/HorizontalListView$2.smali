.class Lcom/wanduoduo/widget/HorizontalListView$2;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/widget/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/wanduoduo/widget/HorizontalListView;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/wanduoduo/widget/HorizontalListView$2;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$2;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    const/4 v1, 0x1

    #setter for: Lcom/wanduoduo/widget/HorizontalListView;->mDataChanged:Z
    invoke-static {v0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$202(Lcom/wanduoduo/widget/HorizontalListView;Z)Z

    .line 319
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$2;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    const/4 v1, 0x0

    #setter for: Lcom/wanduoduo/widget/HorizontalListView;->mHasNotifiedRunningLowOnData:Z
    invoke-static {v0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$302(Lcom/wanduoduo/widget/HorizontalListView;Z)Z

    .line 321
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$2;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #calls: Lcom/wanduoduo/widget/HorizontalListView;->unpressTouchedChild()V
    invoke-static {v0}, Lcom/wanduoduo/widget/HorizontalListView;->access$400(Lcom/wanduoduo/widget/HorizontalListView;)V

    .line 324
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$2;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/wanduoduo/widget/HorizontalListView;->invalidate()V

    .line 325
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$2;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/wanduoduo/widget/HorizontalListView;->requestLayout()V

    .line 326
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$2;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    const/4 v1, 0x0

    #setter for: Lcom/wanduoduo/widget/HorizontalListView;->mHasNotifiedRunningLowOnData:Z
    invoke-static {v0, v1}, Lcom/wanduoduo/widget/HorizontalListView;->access$302(Lcom/wanduoduo/widget/HorizontalListView;Z)Z

    .line 333
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$2;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #calls: Lcom/wanduoduo/widget/HorizontalListView;->unpressTouchedChild()V
    invoke-static {v0}, Lcom/wanduoduo/widget/HorizontalListView;->access$400(Lcom/wanduoduo/widget/HorizontalListView;)V

    .line 334
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$2;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    #calls: Lcom/wanduoduo/widget/HorizontalListView;->reset()V
    invoke-static {v0}, Lcom/wanduoduo/widget/HorizontalListView;->access$500(Lcom/wanduoduo/widget/HorizontalListView;)V

    .line 337
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$2;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/wanduoduo/widget/HorizontalListView;->invalidate()V

    .line 338
    iget-object v0, p0, Lcom/wanduoduo/widget/HorizontalListView$2;->this$0:Lcom/wanduoduo/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/wanduoduo/widget/HorizontalListView;->requestLayout()V

    .line 339
    return-void
.end method
