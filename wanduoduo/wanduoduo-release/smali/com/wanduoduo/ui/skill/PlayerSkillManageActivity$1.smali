.class Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;
.super Ljava/lang/Object;
.source "PlayerSkillManageActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->requestMoney()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 78
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;

    new-instance v1, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1$1;-><init>(Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method
