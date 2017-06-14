.class Lcom/wanduoduo/ui/order/SubmitOrderActivity$MyOnResultListener;
.super Ljava/lang/Object;
.source "SubmitOrderActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/order/SubmitOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnResultListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanduoduo/ui/order/SubmitOrderActivity;


# direct methods
.method private constructor <init>(Lcom/wanduoduo/ui/order/SubmitOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/order/SubmitOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wanduoduo/ui/order/SubmitOrderActivity;Lcom/wanduoduo/ui/order/SubmitOrderActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/wanduoduo/ui/order/SubmitOrderActivity$MyOnResultListener;-><init>(Lcom/wanduoduo/ui/order/SubmitOrderActivity;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 162
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 144
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 145
    .local v2, jsonObject:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/order/SubmitOrderActivity;

    invoke-virtual {v4}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "playerinfobean"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/wanduoduo/bean/PlayerInfoBean;

    .line 146
    .local v3, playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;
    const-string v4, "order_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wanduoduo/bean/PlayerInfoBean;->setOrder_id(Ljava/lang/String;)V

    .line 147
    const-string v4, "order_total_fee"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wanduoduo/bean/PlayerInfoBean;->setTotalFee(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/order/SubmitOrderActivity;

    #getter for: Lcom/wanduoduo/ui/order/SubmitOrderActivity;->serverPlace:Ljava/lang/String;
    invoke-static {v4}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->access$100(Lcom/wanduoduo/ui/order/SubmitOrderActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wanduoduo/bean/PlayerInfoBean;->setPlace(Ljava/lang/String;)V

    .line 150
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/order/SubmitOrderActivity;

    const-class v5, Lcom/wanduoduo/ui/order/PayOrderActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string v4, "playerInfoBean"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 153
    iget-object v4, p0, Lcom/wanduoduo/ui/order/SubmitOrderActivity$MyOnResultListener;->this$0:Lcom/wanduoduo/ui/order/SubmitOrderActivity;

    invoke-virtual {v4, v1}, Lcom/wanduoduo/ui/order/SubmitOrderActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #playerInfoBean:Lcom/wanduoduo/bean/PlayerInfoBean;
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
