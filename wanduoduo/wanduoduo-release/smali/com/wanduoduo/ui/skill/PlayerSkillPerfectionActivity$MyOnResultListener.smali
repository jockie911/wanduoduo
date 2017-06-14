.class Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;
.super Ljava/lang/Object;
.source "PlayerSkillPerfectionActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnResultListener"
.end annotation


# instance fields
.field private sendCode:I

.field final synthetic this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;I)V
    .locals 0
    .parameter
    .parameter "sendCode"

    .prologue
    .line 578
    iput-object p1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput p2, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;->sendCode:I

    .line 580
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 604
    iget v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;->sendCode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 605
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 606
    .local v0, obtain:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 607
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 608
    iget-object v1, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    iget-object v1, v1, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v1, v0}, Lcom/wanduoduo/widget/MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 610
    .end local v0           #obtain:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x1

    .line 583
    iget v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;->sendCode:I

    if-ne v4, v5, :cond_2

    .line 585
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 586
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 587
    .local v1, jsonArray:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    #getter for: Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->alreadyPicLists:Ljava/util/List;
    invoke-static {v4}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->access$100(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 588
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #s:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 600
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    :goto_1
    return-void

    .line 590
    .restart local v1       #jsonArray:Lorg/json/JSONArray;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->picData:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->access$202(Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 591
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    iget-object v4, v4, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 595
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :cond_2
    iget v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;->sendCode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 596
    invoke-static {p1}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 597
    invoke-static {p1}, Lcom/wanduoduo/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 598
    iget-object v4, p0, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;

    iget-object v4, v4, Lcom/wanduoduo/ui/skill/PlayerSkillPerfectionActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/wanduoduo/widget/MyHandler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
