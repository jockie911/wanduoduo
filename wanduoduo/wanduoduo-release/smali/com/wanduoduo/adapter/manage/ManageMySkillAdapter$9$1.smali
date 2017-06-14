.class Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9$1;
.super Ljava/lang/Object;
.source "ManageMySkillAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;)V
    .locals 0
    .parameter "this$1"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9$1;->this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9$1;->this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;

    iget-object v0, v0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    iget-object v0, v0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->mData:Ljava/util/List;

    iget-object v1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9$1;->this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;

    iget v1, v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9$1;->this$1:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;

    iget-object v0, v0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    invoke-virtual {v0}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->notifyDataSetChanged()V

    .line 231
    const-string v0, "\u6280\u80fd\u5220\u9664\u6210\u529f"

    invoke-static {v0}, Lcom/wanduoduo/utils/ToastUtils;->makeToast(Ljava/lang/String;)V

    .line 232
    return-void
.end method
