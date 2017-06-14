.class Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6$1;
.super Ljava/lang/Object;
.source "ManageMySkillAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6$1;->this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6$1;->this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;

    iget-boolean v0, v0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;->val$isUpGift:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6$1;->this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;

    iget-object v0, v0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->mData:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6$1;->this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;

    iget v1, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->setStatus(Ljava/lang/String;)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6$1;->this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;

    iget-object v0, v0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    invoke-virtual {v0}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->notifyDataSetChanged()V

    .line 189
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6$1;->this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;

    iget-object v0, v0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->mData:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6$1;->this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;

    iget v1, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/wanduoduo/bean/ManageServerSkillBean$DataBean$DataListBean;->setStatus(Ljava/lang/String;)V

    goto :goto_0
.end method
