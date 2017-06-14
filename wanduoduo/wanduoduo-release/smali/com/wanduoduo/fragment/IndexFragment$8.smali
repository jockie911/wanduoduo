.class Lcom/wanduoduo/fragment/IndexFragment$8;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/IndexFragment;->selectedSortPopWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/IndexFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/IndexFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/wanduoduo/fragment/IndexFragment$8;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$8;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #setter for: Lcom/wanduoduo/fragment/IndexFragment;->sortSelectedPosition:I
    invoke-static {v0, p3}, Lcom/wanduoduo/fragment/IndexFragment;->access$1202(Lcom/wanduoduo/fragment/IndexFragment;I)I

    .line 329
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$8;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iget-object v1, v0, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedSort:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$8;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #calls: Lcom/wanduoduo/fragment/IndexFragment;->getSortData()Ljava/util/List;
    invoke-static {v0}, Lcom/wanduoduo/fragment/IndexFragment;->access$1300(Lcom/wanduoduo/fragment/IndexFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$8;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #getter for: Lcom/wanduoduo/fragment/IndexFragment;->indexGridViewFragment:Lcom/wanduoduo/fragment/index/IndexGridViewFragment;
    invoke-static {v0}, Lcom/wanduoduo/fragment/IndexFragment;->access$000(Lcom/wanduoduo/fragment/IndexFragment;)Lcom/wanduoduo/fragment/index/IndexGridViewFragment;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->setSortCode(I)V

    .line 331
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$8;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iget-object v1, p0, Lcom/wanduoduo/fragment/IndexFragment$8;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #getter for: Lcom/wanduoduo/fragment/IndexFragment;->sortPopWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/wanduoduo/fragment/IndexFragment;->access$1400(Lcom/wanduoduo/fragment/IndexFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    #calls: Lcom/wanduoduo/fragment/IndexFragment;->popWindowDismiss(Landroid/widget/PopupWindow;)V
    invoke-static {v0, v1}, Lcom/wanduoduo/fragment/IndexFragment;->access$700(Lcom/wanduoduo/fragment/IndexFragment;Landroid/widget/PopupWindow;)V

    .line 332
    return-void
.end method
