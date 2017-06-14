.class Lcom/wanduoduo/adapter/activi/ActiviAdapter$3;
.super Ljava/lang/Object;
.source "ActiviAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/activi/ActiviAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

.field final synthetic val$i:I

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;Landroid/view/ViewGroup;I)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$3;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$3;->val$viewGroup:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$3;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "j"
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
    .line 183
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$3;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/ShowPicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    const-string v2, "piclist"

    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$3;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    iget v3, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$3;->val$i:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getPics()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 186
    const-string v1, "position"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$3;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method
