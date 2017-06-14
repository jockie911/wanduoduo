.class Lcom/wanduoduo/fragment/IndexFragment$4;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/IndexFragment;->selectedAbilttyPopWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/IndexFragment;

.field final synthetic val$data_list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/IndexFragment;Ljava/util/List;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/wanduoduo/fragment/IndexFragment$4;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iput-object p2, p0, Lcom/wanduoduo/fragment/IndexFragment$4;->val$data_list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "k"
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
    .line 235
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$4;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #setter for: Lcom/wanduoduo/fragment/IndexFragment;->rightSelectPostition:I
    invoke-static {v0, p3}, Lcom/wanduoduo/fragment/IndexFragment;->access$302(Lcom/wanduoduo/fragment/IndexFragment;I)I

    .line 236
    iget-object v1, p0, Lcom/wanduoduo/fragment/IndexFragment$4;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$4;->val$data_list:Ljava/util/List;

    iget-object v2, p0, Lcom/wanduoduo/fragment/IndexFragment$4;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #getter for: Lcom/wanduoduo/fragment/IndexFragment;->leftSelectPostition:I
    invoke-static {v2}, Lcom/wanduoduo/fragment/IndexFragment;->access$500(Lcom/wanduoduo/fragment/IndexFragment;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->getData_list_child()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->getTag_id()Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/wanduoduo/fragment/IndexFragment;->selectedTagID:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/wanduoduo/fragment/IndexFragment;->access$402(Lcom/wanduoduo/fragment/IndexFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$4;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iget-object v1, v0, Lcom/wanduoduo/fragment/IndexFragment;->tvSelectedAbility:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$4;->val$data_list:Ljava/util/List;

    iget-object v2, p0, Lcom/wanduoduo/fragment/IndexFragment$4;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #getter for: Lcom/wanduoduo/fragment/IndexFragment;->leftSelectPostition:I
    invoke-static {v2}, Lcom/wanduoduo/fragment/IndexFragment;->access$500(Lcom/wanduoduo/fragment/IndexFragment;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->getData_list_child()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->getTag_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$4;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iget-object v1, p0, Lcom/wanduoduo/fragment/IndexFragment$4;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    #getter for: Lcom/wanduoduo/fragment/IndexFragment;->abilityPopWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/wanduoduo/fragment/IndexFragment;->access$600(Lcom/wanduoduo/fragment/IndexFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    #calls: Lcom/wanduoduo/fragment/IndexFragment;->popWindowDismiss(Landroid/widget/PopupWindow;)V
    invoke-static {v0, v1}, Lcom/wanduoduo/fragment/IndexFragment;->access$700(Lcom/wanduoduo/fragment/IndexFragment;Landroid/widget/PopupWindow;)V

    .line 239
    return-void
.end method
