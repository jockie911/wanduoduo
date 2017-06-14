.class Lcom/wanduoduo/fragment/IndexFragment$5;
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

.field final synthetic val$popSubListViewAdapter:Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;

.field final synthetic val$rootList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/IndexFragment;Ljava/util/List;Ljava/util/List;Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/wanduoduo/fragment/IndexFragment$5;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iput-object p2, p0, Lcom/wanduoduo/fragment/IndexFragment$5;->val$rootList:Ljava/util/List;

    iput-object p3, p0, Lcom/wanduoduo/fragment/IndexFragment$5;->val$data_list:Ljava/util/List;

    iput-object p4, p0, Lcom/wanduoduo/fragment/IndexFragment$5;->val$popSubListViewAdapter:Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 246
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/wanduoduo/fragment/IndexFragment$5;->this$0:Lcom/wanduoduo/fragment/IndexFragment;

    iget-object v3, p0, Lcom/wanduoduo/fragment/IndexFragment$5;->val$rootList:Ljava/util/List;

    iget-object v4, p0, Lcom/wanduoduo/fragment/IndexFragment$5;->val$data_list:Ljava/util/List;

    iget-object v5, p0, Lcom/wanduoduo/fragment/IndexFragment$5;->val$popSubListViewAdapter:Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;

    move-object v1, p1

    move v2, p3

    #calls: Lcom/wanduoduo/fragment/IndexFragment;->abilityPopItemClick(Landroid/widget/AdapterView;ILjava/util/List;Ljava/util/List;Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;)V
    invoke-static/range {v0 .. v5}, Lcom/wanduoduo/fragment/IndexFragment;->access$800(Lcom/wanduoduo/fragment/IndexFragment;Landroid/widget/AdapterView;ILjava/util/List;Ljava/util/List;Lcom/wanduoduo/adapter/index/PopSubListViewAdapter;)V

    .line 247
    return-void
.end method
