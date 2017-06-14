.class Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;
.super Ljava/lang/Object;
.source "ManageMySkillAdapter.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->postToNetDeleteSkill(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;I)V
    .locals 0
    .parameter "this$0"
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    iput p2, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 239
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    #getter for: Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->playerSkillManageItemActivity:Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;
    invoke-static {v0}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->access$500(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;)Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    move-result-object v0

    new-instance v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9$1;-><init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$9;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method
