.class Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;
.super Ljava/lang/Object;
.source "ActiviItemContentActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->zan(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

.field final synthetic val$isLike:Z

.field final synthetic val$mData:Ljava/util/List;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;Ljava/util/List;IZ)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iput-object p2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$mData:Ljava/util/List;

    iput p3, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$position:I

    iput-boolean p4, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$isLike:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 435
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$mData:Ljava/util/List;

    iget v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    iget-boolean v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$isLike:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->setIsLike(Z)V

    .line 428
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$mData:Ljava/util/List;

    iget v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    iget-boolean v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$isLike:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$mData:Ljava/util/List;

    iget v2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getLikeCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->setLikeCount(I)V

    .line 429
    iget-object v0, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->this$0:Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;

    iget-object v0, v0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    .line 430
    return-void

    .line 427
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$mData:Ljava/util/List;

    iget v2, p0, Lcom/wanduoduo/ui/activi/ActiviItemContentActivity$10;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getLikeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
