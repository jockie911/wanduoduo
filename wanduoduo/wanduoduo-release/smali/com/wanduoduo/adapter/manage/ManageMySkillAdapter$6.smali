.class Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;
.super Ljava/lang/Object;
.source "ManageMySkillAdapter.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->downSkill(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

.field final synthetic val$isUpGift:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;ZI)V
    .locals 0
    .parameter "this$0"
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    iput-boolean p2, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;->val$isUpGift:Z

    iput p3, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 196
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;->this$0:Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;

    #getter for: Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->playerSkillManageItemActivity:Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;
    invoke-static {v0}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;->access$500(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter;)Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;

    move-result-object v0

    new-instance v1, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6$1;

    invoke-direct {v1, p0}, Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6$1;-><init>(Lcom/wanduoduo/adapter/manage/ManageMySkillAdapter$6;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/skill/PlayerSkillManageItemActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method
