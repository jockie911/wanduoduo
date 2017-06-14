.class Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;
.super Ljava/lang/Object;
.source "ActiviAdapter.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/activi/ActiviAdapter;->zan(Lcom/wanduoduo/adapter/activi/ActiviAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

.field final synthetic val$isLike:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/activi/ActiviAdapter;IZ)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iput p2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->val$position:I

    iput-boolean p3, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->val$isLike:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 248
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    iget v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    iget-boolean v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->val$isLike:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->setIsLike(Z)V

    .line 241
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    iget v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    iget-boolean v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->val$isLike:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    iget v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getLikeCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->setLikeCount(I)V

    .line 242
    iget-object v0, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->handler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 243
    return-void

    .line 240
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->this$0:Lcom/wanduoduo/adapter/activi/ActiviAdapter;

    iget-object v1, v1, Lcom/wanduoduo/adapter/activi/ActiviAdapter;->mData:Ljava/util/List;

    iget v2, p0, Lcom/wanduoduo/adapter/activi/ActiviAdapter$5;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;

    invoke-virtual {v1}, Lcom/wanduoduo/bean/ActiviBean$DataBean$DataListBean;->getLikeCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method
