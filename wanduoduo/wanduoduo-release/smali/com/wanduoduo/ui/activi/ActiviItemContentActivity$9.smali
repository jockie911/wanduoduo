.class Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$9;
.super Ljava/lang/Object;
.source "ActiviItemContentActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->initContent(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

.field final synthetic val$mData:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/util/List;)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$9;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iput-object p2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$9;->val$mData:Ljava/util/List;

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
    .line 397
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/wanduoduo/base/BaseApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/ShowPicActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "piclist"

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$9;->val$mData:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getPics()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 399
    const-string v1, "position"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$9;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->startActivity(Landroid/content/Intent;)V

    .line 401
    return-void
.end method
