.class Lcom/wanduoduo/fragment/IndexFragment$7;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/IndexFragment;->selectedSexPopWindow()V
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
    .line 305
    iput-object p1, p0, Lcom/wanduoduo/fragment/IndexFragment$7;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 308
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$7;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #setter for: Lcom/wanduoduo/fragment/IndexFragment;->sexSelectedPosition:I
    invoke-static {v0, p3}, Lcom/wanduoduo/fragment/IndexFragment;->access$902(Lcom/wanduoduo/fragment/IndexFragment;I)I

    .line 309
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$7;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iget-object v1, v0, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedSex:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$7;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #calls: Lcom/wanduoduo/fragment/IndexFragment;->getSexData()Ljava/util/List;
    invoke-static {v0}, Lcom/wanduoduo/fragment/IndexFragment;->access$1000(Lcom/wanduoduo/fragment/IndexFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$7;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #getter for: Lcom/wanduoduo/fragment/IndexFragment;->indexGridViewFragment:Lcom/wanduoduo/fragment/index/IndexGridViewFragment;
    invoke-static {v0}, Lcom/wanduoduo/fragment/IndexFragment;->access$000(Lcom/wanduoduo/fragment/IndexFragment;)Lcom/wanduoduo/fragment/index/IndexGridViewFragment;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wanduoduo/fragment/index/IndexGridViewFragment;->setSex(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$7;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iget-object v1, p0, Lcom/wanduoduo/fragment/IndexFragment$7;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #getter for: Lcom/wanduoduo/fragment/IndexFragment;->sexPopWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/wanduoduo/fragment/IndexFragment;->access$1100(Lcom/wanduoduo/fragment/IndexFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    #calls: Lcom/wanduoduo/fragment/IndexFragment;->popWindowDismiss(Landroid/widget/PopupWindow;)V
    invoke-static {v0, v1}, Lcom/wanduoduo/fragment/IndexFragment;->access$700(Lcom/wanduoduo/fragment/IndexFragment;Landroid/widget/PopupWindow;)V

    .line 312
    return-void
.end method
