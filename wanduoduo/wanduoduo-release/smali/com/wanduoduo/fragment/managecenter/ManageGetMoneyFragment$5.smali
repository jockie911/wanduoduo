.class Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$5;
.super Ljava/lang/Object;
.source "ManageGetMoneyFragment.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->withDrawTheMoney()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;


# direct methods
.method constructor <init>(Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$5;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 205
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 187
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, jsonObject:Lorg/json/JSONObject;
    const-string v3, "data"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "success"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$5;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    iget-object v3, v3, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 200
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 191
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 192
    .local v2, obtain:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 193
    const-string v3, "errMsg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 194
    iget-object v3, p0, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment$5;->this$0:Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;

    iget-object v3, v3, Lcom/wanduoduo/fragment/managecenter/ManageGetMoneyFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .end local v2           #obtain:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
