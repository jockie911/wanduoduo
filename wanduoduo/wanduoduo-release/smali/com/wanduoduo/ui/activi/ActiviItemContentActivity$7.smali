.class Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$7;
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
    .line 379
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$7;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iput-object p2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$7;->val$mData:Ljava/util/List;

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
    .line 382
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$7;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$7;->val$mData:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getLike_users()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$LikeUsersBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$LikeUsersBean;->getId()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->startUserInfoActivity(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$900(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/lang/String;)V

    .line 383
    return-void
.end method
