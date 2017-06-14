.class Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$8;
.super Ljava/lang/Object;
.source "ActiviItemContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 387
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$8;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iput-object p2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$8;->val$mData:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 390
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$8;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$8;->val$mData:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v0}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getUser()Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean$UserBean;->getId()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->startUserInfoActivity(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->access$900(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/lang/String;)V

    .line 391
    return-void
.end method
