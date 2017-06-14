.class Lcom/wanduoduo/adapter/activi/ActiviAdapter$2;
.super Ljava/lang/Object;
.source "ActiviAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 169
    iput-object p1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$2;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iput-object p2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$2;->val$viewGroup:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$2;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$2;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wanduoduo/ui/info/InfoEditorPersonActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "isCanEdit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    const-string v2, "user_id"

    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$2;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    iget v3, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$2;->val$i:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$2;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    return-void
.end method
