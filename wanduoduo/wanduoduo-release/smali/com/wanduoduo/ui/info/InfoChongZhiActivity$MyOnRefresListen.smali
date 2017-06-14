.class Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;
.super Ljava/lang/Object;
.source "InfoChongZhiActivity.java"

# interfaces
.implements Lcom/wanduoduo/utils/OkHttpUtils$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanduoduo/ui/info/InfoChongZhiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnRefresListen"
.end annotation


# instance fields
.field private requestCode:I

.field final synthetic this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;


# direct methods
.method public constructor <init>(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;I)V
    .locals 0
    .parameter
    .parameter "requestCode"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput p2, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->requestCode:I

    .line 225
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 267
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 10
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    .line 229
    iget v7, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->requestCode:I

    if-ne v7, v8, :cond_1

    .line 231
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "orderid"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, order_id:Ljava/lang/String;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 233
    .local v3, obtain:Landroid/os/Message;
    const/4 v7, 0x0

    iput v7, v3, Landroid/os/Message;->what:I

    .line 234
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    iget-object v7, v7, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v7, v3}, Lcom/wanduoduo/widget/MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v3           #obtain:Landroid/os/Message;
    .end local v4           #order_id:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v1           #e:Lorg/json/JSONException;
    :cond_1
    iget v7, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->requestCode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 242
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "data"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 243
    .local v0, data:Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    iget-object v7, v7, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbWeixin:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 244
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    const-string v8, "WX"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->paycode:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->access$202(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->paycode:Ljava/lang/String;
    invoke-static {v7}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->access$200(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/wanduoduo/utils/WXPayUtils;->wxPay(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 257
    .end local v0           #data:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 258
    .restart local v1       #e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #data:Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    iget-object v7, v7, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->cbZfb:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 247
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    const-string v8, "Ali"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "orderStr"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->paycode:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->access$202(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->paycode:Ljava/lang/String;
    invoke-static {v7}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->access$200(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 249
    new-instance v6, Lcom/alipay/sdk/app/PayTask;

    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    invoke-direct {v6, v7}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 250
    .local v6, payTask:Lcom/alipay/sdk/app/PayTask;
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    #getter for: Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->paycode:Ljava/lang/String;
    invoke-static {v7}, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->access$200(Lcom/wanduoduo/ui/info/InfoChongZhiActivity;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, payResult:Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 252
    .local v2, msg:Landroid/os/Message;
    const/4 v7, 0x1

    iput v7, v2, Landroid/os/Message;->what:I

    .line 253
    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    iget-object v7, p0, Lcom/wanduoduo/ui/info/InfoChongZhiActivity$MyOnRefresListen;->this$0:Lcom/wanduoduo/ui/info/InfoChongZhiActivity;

    iget-object v7, v7, Lcom/wanduoduo/ui/info/InfoChongZhiActivity;->myHandler:Lcom/wanduoduo/widget/MyHandler;

    invoke-virtual {v7, v2}, Lcom/wanduoduo/widget/MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
