.class Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1$1;
.super Ljava/lang/Object;
.source "PlayerSkillManageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;Ljava/lang/String;)V
    .locals 0
    .parameter "this$1"
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1$1;->this$1:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;

    iput-object p2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1$1;->val$result:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    .local v0, data:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1$1;->this$1:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;

    iget-object v2, v2, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->tvMoneyIn:Landroid/widget/TextView;

    const-string v3, "money_in"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1$1;->this$1:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;

    iget-object v2, v2, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;

    iget-object v2, v2, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->tvMoneyDraw:Landroid/widget/TextView;

    const-string v3, "money_draw"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1$1;->this$1:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;

    iget-object v2, v2, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;

    const-string v3, "money_bal"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->money_bal:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;->access$102(Lcom/wanduoduo/ui/skill/PlayerSkillManageActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0           #data:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
