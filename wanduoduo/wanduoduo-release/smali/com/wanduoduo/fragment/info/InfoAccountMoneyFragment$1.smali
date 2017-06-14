.class Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;
.super Ljava/lang/Object;
.source "InfoAccountMoneyFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->requsetMonet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 87
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 67
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 68
    .local v1, jsonObject:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    const-string v3, "money_in"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_in:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->access$002(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    const-string v3, "money_draw"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_draw:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->access$102(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    const-string v3, "money_bal"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->money_bal:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->access$202(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    iget-object v2, p0, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;->this$0:Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;

    invoke-virtual {v2}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1$1;

    invoke-direct {v3, p0}, Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1$1;-><init>(Lcom/wanduoduo/fragment/info/InfoAccountMoneyFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
