.class Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$1;
.super Ljava/lang/Object;
.source "PlayerSkillPerfectionActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;


# direct methods
.method constructor <init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 206
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 195
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, jsonObject:Lorg/json/JSONObject;
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, videoUrl:Ljava/lang/String;
    iget-object v3, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$1;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    iget-object v3, v3, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->videoUrlLists:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .end local v2           #videoUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
