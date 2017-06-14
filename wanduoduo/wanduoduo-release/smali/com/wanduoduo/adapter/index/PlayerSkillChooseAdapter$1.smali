.class Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;
.super Ljava/lang/Object;
.source "PlayerSkillChooseAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;Landroid/view/ViewGroup;I)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;->this$0:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;->val$parent:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 77
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "name"

    iget-object v1, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;->this$0:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

    #getter for: Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->mData:Ljava/util/List;
    invoke-static {v1}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->access$100(Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->getData_list_child()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->getTag_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v2, "tag_id"

    iget-object v1, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;->this$0:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

    #getter for: Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->mData:Ljava/util/List;
    invoke-static {v1}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->access$100(Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;->val$position:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean;->getData_list_child()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/IndexTagListBean$DataBean$DataListBean$DataListChildBean;->getTag_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "type"

    const/16 v2, 0x271a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;->this$0:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

    #getter for: Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->playerSkillChooseActivity:Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;
    invoke-static {v1}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->access$200(Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;)Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->isStartByOthers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;->this$0:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

    #getter for: Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->playerSkillChooseActivity:Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;
    invoke-static {v1}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->access$200(Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;)Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, v0}, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->setResult(ILandroid/content/Intent;)V

    .line 83
    iget-object v1, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;->this$0:Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;

    #getter for: Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->playerSkillChooseActivity:Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;
    invoke-static {v1}, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;->access$200(Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter;)Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/ui/skill/PlayerSkillChooseActivity;->finish()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/wanduoduo/adapter/index/PlayerSkillChooseAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
